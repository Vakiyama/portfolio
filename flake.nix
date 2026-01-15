{
  description = "node project flake";
  #
  #    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  #    nixpkgs-unstable2.url = "github:NixOS/nixpkgs/nixos-unstable";
  #  };
  #
  #  outputs = { self, nixpkgs, nixpkgs-unstable, nixpkgs-unstable2 }:
  #
  inputs = {
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs-unstable }: {

    devShell.x86_64-linux =
      let
        pkgs = nixpkgs-unstable.legacyPackages.x86_64-linux;
      in
      pkgs.mkShell {
        buildInputs = with pkgs; [
          nodejs_24
        ];

        shellHook = ''
        '';
      };
  };
}

