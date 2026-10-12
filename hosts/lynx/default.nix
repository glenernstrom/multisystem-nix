{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core/base.nix
    ../../modules/core/users.nix
    ../../modules/hardware/intel-cpu.nix
    ../../modules/hardware/bluetooth.nix
    ../../modules/hardware/utilities.nix
    ../../modules/roles/workstation.nix
    ../../modules/hardware/audio.nix
    ../../modules/desktop/kde.nix
    ../../modules/desktop/fonts.nix
    ../../modules/apps/flatpak.nix
    ../../modules/apps/libreoffice.nix
    ../../modules/printing/office-printing.nix
    ../../modules/services/tailscale.nix
    ../../modules/services/syncthing.nix
  ];

  home-manager.users.glen = {
    imports = [
      ../../home/glen
      ../../home/glen/profiles/common.nix
      ../../home/glen/profiles/communications.nix
      ../../home/glen/profiles/podcasts.nix
      ../../home/glen/profiles/science.nix
     ];
   };

  swapDevices = [ 
    { device = "/swap/swapfile"; }
  ];


  networking.hostName = "lynx";

  system.stateVersion = "26.05";
}
