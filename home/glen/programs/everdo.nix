
{ config, pkgs, ... }:

{
  xdg.desktopEntries.everdo = {
    name = "Everdo";
    genericName = "Task Manager";
    comment = "Everdo task management application";

    exec = "${pkgs.appimage-run}/bin/appimage-run ${config.home.homeDirectory}/Applications/Everdo-1.11.15.AppImage";

    icon = ./icons/everdo.png;

    terminal = false;
    categories = [ "Office" "ProjectManagement" ];

    settings = {
      StartupWMClass = "everdo";
    };
  };
}

