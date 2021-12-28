const std = @import("../../zig/lib/std/std.zig");
const builtin = @import("builtin");
const generator = @import("./binding/generator.zig");

comptime {
    _ = generator;
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
