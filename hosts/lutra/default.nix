{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core/base.nix
    ../../modules/hardware/nvidia.nix
    ../../modules/hardware/amd-cpu.nix
    ../../modules/hardware/bluetooth.nix
    ../../modules/roles/gaming.nix
    ../../modules/roles/workstation.nix
    ../../modules/hardware/audio.nix
    ../../modules/desktop/kde.nix
    ../../modules/apps/flatpak.nix
    ../../modules/apps/obs.nix
    ../../modules/apps/libreoffice.nix
    ../../modules/services/tailscale.nix
    ../../modules/services/sunshine.nix
  ];

  home-manager.users.glen = {
    imports = [
    ../../home/glen
    ../../home/glen/profiles/common.nix
    ../../home/glen/profiles/communications.nix
    ../../home/glen/profiles/podcasts.nix
    ];
  };
 

  networking.hostName = "lutra";

  system.stateVersion = "26.05";
}
