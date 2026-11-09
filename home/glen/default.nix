{ config, pkgs, ... }:

{
 imports = [
    ./programs/common.nix
    ./programs/science.nix
    ./programs/everdo.nix
    ./shell/shell.nix
    ];

  home.username = "glen";
  home.homeDirectory = "/home/glen";
  home.stateVersion = "26.05";
}
