const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();
    const target = b.standardTargetOptions(.{});

    const generate_step = b.step("generate", "Generate steam_api bindings");
    const generator = b.addExecutable("generator", "src/generator/main.zig");
    var run = generator.run();
    run.addArgs(&.{ "src/generator/steam_api.json", "src/generated" });
    generate_step.dependOn(&run.step);

    const lib = b.addSharedLibrary("zemu", "src/main.zig", .unversioned);
    lib.linkLibC();
    lib.setBuildMode(mode);
    lib.setTarget(target);
    lib.install();
    lib.step.dependOn(generate_step);

    const main_tests = b.addTest("src/main.zig");
    main_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&main_tests.step);
}
