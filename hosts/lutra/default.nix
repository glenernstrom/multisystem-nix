{ ... }:

{
  imports = [
    ../../modules/core/base.nix
  ];

  networking.hostName = "lutra";

  system.stateVersion = "26.05";
}
