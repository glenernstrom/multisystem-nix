{ ... }:


{
  imports = [
    ./hardware-configuration.nix

    ../../modules/core/base.nix
    ../../modules/core/utilities.nix

    ../../modules/hardware/nvidia.nix
    ../../modules/hardware/amd-cpu.nix
    ../../modules/hardware/bluetooth.nix
    ../../modules/hardware/audio.nix

    ../../modules/roles/gaming.nix
    ../../modules/roles/workstation.nix

    ../../modules/desktop/kde.nix
    ../../modules/desktop/fonts.nix
    ../../modules/desktop/multimedia.nix
    ../../modules/desktop/appimage.nix

    ../../modules/apps/flatpak.nix
    ../../modules/apps/obs-cuda.nix

    ../../modules/services/tailscale.nix
    ../../modules/services/sunshine.nix
    ../../modules/services/syncthing.nix
    ../../modules/services/ssh.nix

  ];


  networking.hostName = "lutra";
  
  networking.firewall.allowedTCPPorts = [ 
    11111
  ];
  
  system.stateVersion = "26.05";
}
