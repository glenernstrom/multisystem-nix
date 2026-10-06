{ pkgs, ... }:

{
  home.packages = with pkgs; [
   kdePackages.kasts
  ];

}


