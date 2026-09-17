{ ... }:

{
  imports = [
    ../../modules/core/base.nix
  ];

  networking.hostName = "lynx";

  system.stateVersion = "26.05";
}
