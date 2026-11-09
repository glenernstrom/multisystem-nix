{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kdePackages.kpat
    kdePackages.ksudoku
  ];
}
