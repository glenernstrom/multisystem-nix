{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox
  ];

  services.flatpak.packages = [
    "info.mumble.Mumble"
    "org.gnome.Fractal"
    "im.riot.Riot"
  ];
}
