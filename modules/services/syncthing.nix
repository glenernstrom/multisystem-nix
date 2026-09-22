{ ... }:

{
  services.syncthing = {
    enable = true;
    user = "glen";
    dataDir = "/home/glen";
    configDir = "/home/glen/.config/syncthing";
  };
}
