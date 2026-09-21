{
  description = "Multisystem NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nix-flatpak.url = "github:gmodena/nix-flatpak";
   
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, nix-flatpak, home-manager, ... }:
    let
      system = "x86_64-linux";

      mkHost = hostname:
        nixpkgs.lib.nixosSystem {
          inherit system;

          modules = [
            nix-flatpak.nixosModules.nix-flatpak
            home-manager.nixosModules.home-manager
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
