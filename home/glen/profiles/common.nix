{ pkgs, ... }:

{
  imports = [
    ../ghostty/ghostty.nix
    ../nvim/neovim.nix
  ];

  home.packages = with pkgs; [
    firefox
    libreoffice
  ];
}
