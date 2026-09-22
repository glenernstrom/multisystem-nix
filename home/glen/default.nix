{ ... }:

{

  imports = [
    ./ghostty/ghostty.nix
    ./nvim/neovim.nix
  ];

  home.username = "glen";
  home.homeDirectory = "/home/glen";

  home.stateVersion = "26.05";
}
