{ ... }:

{
  imports = [
    ../../modules/core/base.nix
  ];

  networking.hostName = "rosie";

  system.stateVersion = "26.05";
}
