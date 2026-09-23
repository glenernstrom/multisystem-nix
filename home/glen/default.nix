{ ... }:

{

  imports = [
    ./ghostty/ghostty.nix
    ./nvim/neovim.nix
    ./science.nix
  ];

  home.username = "glen";
  home.homeDirectory = "/home/glen";

  home.stateVersion = "26.05";
}
