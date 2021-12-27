const std = @import("std");
const builtin = @import("builtin");

const testing = std.testing;

export fn add(a: i32, b: i32) i32 {
    return a + b;
}

comptime {
    if (builtin.target.os.tag == .windows) {
        @export(WinMain, .{ .name = "WinMain", .linkage = .Strong });
        @export(DllMain, .{ .name = "DllMain", .linkage = .Strong });
    }
}

const w = std.os.windows;

pub fn WinMain(hInstance: w.HINSTANCE, hPrevInstance: w.HINSTANCE, lpCmdLine: w.PWSTR, nCmdShow: w.INT) callconv(.C) w.INT {
    _ = w.user32.MessageBoxA(null, "world", "hello", 0);
    _ = nCmdShow;
    _ = lpCmdLine;
    _ = hPrevInstance;
    _ = hInstance;
    return 0;
}

pub fn DllMain(hinstDll: w.HINSTANCE, fdwReason: w.DWORD, lpReserved: w.LPVOID) callconv(.C) w.BOOL {
    _ = w.user32.MessageBoxA(null, "world from DllMain", "hello", 0);
    _ = hinstDll;
    _ = fdwReason;
    _ = lpReserved;
    return w.TRUE;
}

const SteamIDComponent_t = packed struct {
    m_unAccountID: u32,
    m_unAccountInstance: u20,
    m_EAccountType: u4,
    m_EUniverse: u8
};

const GameID_t = packed struct {
    m_nAppID: u24,
    n_nType: u8,
    m_nModID: u32
};

comptime {
    const a = @Type(.{
        .Fn = .{
            .calling_convention = .C,
            .return_type = u8,
            .alignment = 1,
            .is_generic = false,
            .is_var_args = false,
            .args = &[_]std.builtin.TypeInfo.FnArg{}
        }
    });
    _ = a;
    @compileLog((@typeInfo(a)));
    // std.debug.assert(@sizeOf(SteamIDComponent_t) == 8);
    // std.debug.assert(@sizeOf(GameID_t) == 8);
}

test "basic add functionality" {
    try testing.expect(add(3, 7) == 10);
}
