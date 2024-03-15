{
  description = "A template designed to streamline the release process of Minecraft modpacks.";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux"];

      imports = [
        inputs.pre-commit-hooks.flakeModule
      ];

      perSystem = {
        config,
        pkgs,
        ...
      }: {
        pre-commit = {
          check.enable = true;
          settings.excludes = ["flake.lock"];
          settings.hooks = {
            alejandra.enable = true;
            deadnix.enable = true;
            prettier.enable = true;
            markdownlint.enable = true;
          };
        };
        devShells.default = pkgs.mkShell {
          packages = [
            pkgs.git
            pkgs.packwiz
          ];
          shellHook = ''
            ${config.pre-commit.installationScript}
          '';
        };

        formatter = pkgs.alejandra;
      };
    };
}
