{ ... }:

{
  imports = [
    ../../modules/core/base.nix
  ];

  networking.hostName = "catharus";

  system.stateVersion = "26.05";
}
