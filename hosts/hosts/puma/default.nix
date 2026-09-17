{ ... }:

{
  imports = [
    ../../modules/core/base.nix
  ];

  networking.hostName = "puma";

  system.stateVersion = "26.05";
}
