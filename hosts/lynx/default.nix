{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core/base.nix
    ../../modules/core/users.nix
    ../../modules/hardware/intel-cpu.nix
    ../../modules/hardware/bluetooth.nix
    ../../modules/core/utilities.nix
    ../../modules/roles/workstation.nix
    ../../modules/hardware/audio.nix
    ../../modules/desktop/kde.nix
    ../../modules/desktop/fonts.nix
    ../../modules/apps/flatpak.nix
    ../../modules/printing/office-printing.nix
    ../../modules/services/tailscale.nix
    ../../modules/services/syncthing.nix
    ../../modules/desktop/multimedia.nix
    ../../modules/apps/moonlight.nix
    ../../modules/desktop/appimage.nix
  ];

  home-manager.users.glen = {
    imports = [
      ../../home
      ../../home/default.nix
      ../../home/common.nix
      ../../home/communications.nix
      ../../home/science.nix
      ../../home/everdo.nix
     ];
   };

  swapDevices = [ 
    { device = "/swap/swapfile"; }
  ];


  networking.hostName = "lynx";
  
  services.openssh.enable = true;

  networking.firewall.allowedTCPPorts = [ 
  11111
  22 ];

  system.stateVersion = "26.05";
}
