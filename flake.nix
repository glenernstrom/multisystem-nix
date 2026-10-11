{
  description = "Multisystem NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nix-flatpak.url = "github:gmodena/nix-flatpak";
   
    meshmonitor = {
      url = "github:gipsy/orange?dir=ops/meshmonitor";
      inputs.nixpkgs.follows = "nixpkgs";
    };
   
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      nix-flatpak,
      firefox-addons,
      meshmonitor,
      ...
    }:
    let
      system = "x86_64-linux";

      mkHost = hostname:
        nixpkgs.lib.nixosSystem {
          inherit system;

          modules = [
            nix-flatpak.nixosModules.nix-flatpak
            home-manager.nixosModules.home-manager

            {
              home-manager.backupFileExtension = "hm-backup";

              home-manager.extraSpecialArgs = {
                inherit firefox-addons;
              };
            }

            meshmonitor.nixosModules.default
            {
              services.meshmonitor = {
                enable = true;
                meshtasticNodeIP = "192.168.1.100";
                adminPassword = "secretpassword";
                openFirewall = true;
              };

                meshmonitor.extraSpecialArgs = {
                  inherit meshmonitor;
                };
            }


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
