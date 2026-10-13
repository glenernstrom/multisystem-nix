{ pkgs, ... }:

{
  home.packages = with pkgs; [
    element-desktop
    mumble
    google-chrome
  ];

}


