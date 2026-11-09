{ config, pkgs, ... }:

{
# includes the programs and shell for my workstation

 home-manager.users.glen = {
      imports = [
        ../../home/glen/default.nix
      ];
    };
}
