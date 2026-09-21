{ ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/core/base.nix

    ../../modules/hardware/nvidia.nix
    
    ../../modules/desktop/gnome.nix
    ../../modules/apps/flatpak.nix

    ../../modules/roles/internet.nix
    ../../modules/roles/gaming.nix
  ];

  networking.hostName = "lutra";

  system.stateVersion = "26.05";
}
