{ pkgs, ... }:

{
 environment.systemPackages = with pkgs; [
  usbutils
  meowfetch
  pay-respects
  ripgrep
  pciutils
  restic
  poppler-utils
  lshw
 ];

}
