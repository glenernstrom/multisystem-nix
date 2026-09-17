{ ... }:

{
  imports = [
   ./hardware-configuration.nix
    ../../modules/core/base.nix
    ../../modules/desktop/gnome.nix
    ../../modules/apps/flatpak.nix
  ];

  networking.hostName = "puma";

  # Encrypted swap
  boot.initrd.luks.devices."luks-4941926a-c221-4242-be63-202236f9e0b3".device =
  "/dev/disk/by-uuid/4941926a-c221-4242-be63-202236f9e0b3";

  system.stateVersion = "26.05";
}
