{
  description = "";

  inputs = {
    iago-nix.url = "github:iagocq/nix";
    nixpkgs.url = "nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";

    flake-compat.url = "github:edolstra/flake-compat";
    flake-compat.flake = false;
  };

  outputs = inputs@{ self, nixpkgs, flake-utils, ... }:
  flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ inputs.iago-nix.overlay ];
      };

      buildInputs = with pkgs; [ ];
      nativeBuildInputs = with pkgs; [ zig zls pkg-config ];
    in
    rec {
      devShell = pkgs.mkShell {
        inherit buildInputs nativeBuildInputs;
      };
    }
  );
}
