const std = @import("std");
const Target = std.Target;

pub fn build(b: *std.build.Builder) void {
    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();
    const windows = b.option(bool, "windows", "build emulator for windows") orelse false;
    const arch = b.option(Target.Cpu.Arch, "arch", "target architecture") orelse Target.Cpu.Arch.x86_64;

    const lib = b.addSharedLibrary("zemu", "src/main.zig", .unversioned);
    lib.setBuildMode(mode);

    const os = init: {
        const Os = Target.Os;
        if (windows) {
            break :init Os{ .tag = Os.Tag.windows, .version_range = .{ .windows = .{ .min = Os.WindowsVersion.xp, .max = Os.WindowsVersion.latest } } };
        } else {
            break :init Os.Tag.linux.defaultVersionRange(arch);
        }
    };

    const abi = Target.Abi.default(arch, os);

    const target = Target{
        .cpu = Target.Cpu.baseline(arch),
        .os = os,
        .abi = abi,
    };

    if (windows) {
        lib.setTarget(std.zig.CrossTarget.fromTarget(target));
    }

    lib.install();

    const main_tests = b.addTest("src/main.zig");
    main_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&main_tests.step);
}
