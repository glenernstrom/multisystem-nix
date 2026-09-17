{
  description = "Multisystem NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nix-flatpak.url = "github:gmodena/nix-flatpak";
  };

  outputs = { nixpkgs, nix-flatpak, ... }:
    let
      system = "x86_64-linux";

      mkHost = hostname:
        nixpkgs.lib.nixosSystem {
          inherit system;

          modules = [
            nix-flatpak.nixosModules.nix-flatpak
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
