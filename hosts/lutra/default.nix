{ ... }:


{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core/base.nix
    ../../modules/hardware/nvidia.nix
    ../../modules/hardware/amd-cpu.nix
    ../../modules/hardware/bluetooth.nix
    ../../modules/core/utilities.nix
    ../../modules/roles/gaming.nix
    ../../modules/roles/workstation.nix
    ../../modules/hardware/audio.nix
    ../../modules/desktop/kde.nix
    ../../modules/desktop/fonts.nix
    ../../modules/apps/flatpak.nix
    ../../modules/apps/obs-cuda.nix
    ../../modules/services/tailscale.nix
    ../../modules/services/sunshine.nix
    ../../modules/services/syncthing.nix
    ../../modules/desktop/multimedia.nix
    ../../modules/desktop/appimage.nix

  ];


  networking.hostName = "lutra";
  
  services.openssh.enable = true;
  
  networking.firewall.allowedTCPPorts = [
    22 
    11111
  ];
  
  system.stateVersion = "26.05";
}
