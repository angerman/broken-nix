{
    inputs.nixpkgs-darwin.url = "github:NixOS/nixpkgs/nixpkgs-23.05-darwin";
    inputs.nix.url = "github:nixos/nix?ref=2.18-maintenance";
    inputs.darwin.url = "github:lnl7/nix-darwin/master";
    inputs.darwin.inputs.nixpkgs.follows = "nixpkgs-darwin";


    outputs = inputs: {
      darwinConfigurations = {
        "darwin-1" = inputs.darwin.lib.darwinSystem {
          system = "aarch64-darwin";
          modules = [
            {
                nixpkgs.overlays = [
                    inputs.nix.overlays.default
                ];
            }
          ];
        };
      };
    };
}