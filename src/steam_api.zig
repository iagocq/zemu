pub usingnamespace @import("generated/callback_structs.zig");
pub usingnamespace @import("generated/consts.zig");
pub usingnamespace @import("generated/enums.zig");
pub usingnamespace @import("generated/interfaces.zig");
pub usingnamespace @import("generated/structs.zig");
pub usingnamespace @import("generated/typedefs.zig");

const impl = @import("impl.zig");

pub fn getImplFn(comptime struct_name: []const u8, comptime fn_name: []const u8, comptime fn_type: type) ?fn_type {
    if (@hasDecl(impl, struct_name)) {
        const target_struct = @field(impl, struct_name);
        if (@hasDecl(target_struct, fn_name)) {
            return @field(target_struct, fn_name);
        }
    }

    return null;
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
