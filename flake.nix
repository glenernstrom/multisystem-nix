{
  description = "Multisystem NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";

      mkHost = hostname:
        nixpkgs.lib.nixosSystem {
          inherit system;

          modules = [
            ./hosts/${hostname}
          ];
        };
    in
    {
      nixosConfigurations = {
        catharus = mkHost "catharus";
        lynx     = mkHost "lynx";
        puma     = mkHost "puma";
        lutra    = mkHost "lutra";
        rosie    = mkHost "rosie";
      };
    };
}
