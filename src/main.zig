const std = @import("std");
const builtin = @import("builtin");

comptime {
    // const a = @Type(.{
    //     .Fn = .{
    //         .calling_convention = .C,
    //         .return_type = u8,
    //         .alignment = 1,
    //         .is_generic = false,
    //         .is_var_args = false,
    //         .args = &[_]std.builtin.TypeInfo.FnArg{}
    //     }
    // });
    // _ = a;
    // @compileLog(@sizeOf(Test));
    // @compileLog((@typeInfo(a)));
    // std.debug.assert(@sizeOf(SteamIDComponent_t) == 8);
    // std.debug.assert(@sizeOf(GameID_t) == 8);
}
