pub const SteamAPI = struct {
    pub usingnamespace @import("generated/callback_structs.zig");
    pub usingnamespace @import("generated/consts.zig");
    pub usingnamespace @import("generated/enums.zig");
    pub usingnamespace @import("generated/interfaces.zig");
    pub usingnamespace @import("generated/structs.zig");
    pub usingnamespace @import("generated/typedefs.zig");
    pub const p = [_][]const u8{ "SteamAPI" };
};

pub usingnamespace SteamAPI;

const impl = struct {
    const SteamAPI = @import("impl.zig");
};

comptime { _ = impl; }

const verbose = true;

const std = @import("std");
const log = std.log;

fn PathType(root: anytype, comptime path: []const []const u8) type {
    if (path.len == 0) return void;
    if (!@hasDecl(root, path[0])) return void;

    const current = @field(root, path[0]);
    if (path.len == 1) return @TypeOf(current);

    return PathType(current, path[1..]);
}

fn getPath(root: anytype, comptime path: []const []const u8) !PathType(root, path) {
    if (path.len == 0) return error.EmptyPath;
    if (!@hasDecl(root, path[0])) return error.InvalidPath;

    const current = @field(root, path[0]);
    if (path.len == 1) {
        return current;
    }
    return try getPath(current, path[1..]);
}

fn pathToName(comptime path: []const []const u8, comptime sep: u8) []const u8 {
    if (path.len == 0) return "";
    if (path.len == 1) return path[0];
    return path[0] ++ [_]u8{ sep } ++ pathToName(path[1..], sep);
}

inline fn printArgs(name: []const u8, args: anytype, args_names: anytype) void {
    log.debug("---- CALLED {s}\n", .{ name });
    comptime var i = 0;
    inline while (i < args.len) : (i += 1) {
        log.debug("----\t{s} = {any}\n", .{ args_names[i], args[i] });
    }
    log.debug("-------------------------------\n", .{});
}

pub inline fn callImplFn(comptime path: []const []const u8, args: anytype, args_names: anytype, comptime fn_type: type) (@typeInfo(fn_type).Fn.return_type orelse void) {
    if (verbose) {
        comptime var name = pathToName(path, '.');
        printArgs(name, args, args_names);
    }

    comptime var maybe_func = getPath(impl, path);
    if (maybe_func) |func| {
        const ret = @call(.{ .modifier = .always_inline }, func, args);
        if (verbose) {
            log.debug("ret = {any}\n", .{ ret });
        }
        return ret;
    } else |_| {
        return undefined;
    }
}

fn exportAllSub(root: anytype, current: anytype, path: anytype) void {
    const info: std.builtin.TypeInfo = blk: {
        if (@TypeOf(current) == std.builtin.TypeInfo.Declaration) {
            if (!current.is_pub or (current.data != .Type and current.data != .Fn)) {
                return;
            } else if (current.data == .Fn) {
                const func = getPath(root, path[1..]) catch unreachable;
                @export(func, .{ .name = pathToName(&path, '_'), .linkage = .Strong });
                return;
            } else {
                break :blk @typeInfo(current.data.Type);
            }
        } else {
            break :blk @typeInfo(current);
        }
    };

    if (info == .Struct) {
        inline for (info.Struct.decls) |decl| {
            exportAllSub(root, decl, path ++ [_][]const u8{ decl.name });
        }
    }
}

pub fn exportAll(root: anytype, path: anytype) void {
    exportAllSub(root, root, path);
}

comptime {
    @setEvalBranchQuota(1000000);
    exportAll(SteamAPI, SteamAPI.p);
}

pub const size_t = usize;
pub const SteamAPIWarningMessageHook_t = ?fn([*c]i32, [*c]const u8) callconv(.C) void;

const GameID_t = packed struct {
    m_nAppID: u24,
    m_nType: u8,
    m_nModID: u32,
};

pub const CGameID = extern union {
    m_ulGameID: u64,
    m_gameID: GameID_t,
};

const SteamIDComponent_t = packed struct {
    m_unAccountID: u32,
    m_unAccountInstance: u20,
    m_EAccountType: u4,
    m_EUniverse: u8,
};

pub const CSteamID = extern union {
    m_unAll64Bits: u64,
    m_comp: SteamIDComponent_t,
};

/////////////////////////////////////////
// TODO implement these types properly //
/////////////////////////////////////////

pub const SteamInputActionEvent_t = extern struct {
    _: u8,
};

pub const SteamDatagramRelayAuthTicket = extern struct {
    _: u8,
};

pub const ISteamNetworkingConnectionSignaling = extern struct {
    _: u8,
};

pub const ISteamNetworkingSignalingRecvContext = extern struct {
    _: u8,
};
