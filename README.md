# zemu

A [VERY WIP] zig steam_api(64).dll and steamclient(64).dll emulator.

# Building

If you have nix>=2.4:

`nix develop -c zig build`

If you have an older nix:

`nix-shell --run "zig build"`

If you don't have nix, make sure you have zig 0.9.0 installed and run `zig build`.

To build for a system that is not your current platform, you just need to pass the `-Dtarget=<your-triple-here>` flag after `zig build`. E.g. to target 32 bits Windows, the command is `zig build -Dtarget=i386-windows-gnu`.

Cheatsheet: i386 -> 32 bits, x86_64 -> 64 bits. windows and linux are valid OSes. Leave gnu as is.

The resulting .dll/.so will be placed on zig-out/lib. You will need to rename the file to the correct name (you most likely want steam_api.dll / steam_api64.dll).

After that, replace the files with the same name on your game's folder (use a file finding utility if you don't find in the first folder).

Running as a steamclient.dll substitute is planned.

# TODO

- [ ] Find out the direction zig will take with comptime memory allocations.
  - This is relevant because the binding generator *could* read directly from a JSON without requiring a separate translation step.
  - Currently, I'll probably write a generator with TokenStream.
  - Relevant issues:
  - https://github.com/ziglang/zig/issues/5873
  - https://github.com/ziglang/zig/issues/5895
- [ ] Build a steam_api.json parser directly from the TokenStream JSON zig interface.
- [ ] Implement (some) steam_api methods.
- [ ] Figure out how to pass some Steam API to the original Steam files, so doing things like opening the overlay and using existing network functionality become possible. (CreamAPI seems to do that)
- [ ] Write a launcher so running as a steamclient.dll substitute is possible.
- [ ] Find a better name for the project lol
