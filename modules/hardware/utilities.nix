{ pkgs, ... }:

{
 environment.systemPackages = with pkgs; [
  usbutils
  tldr
  trash-cli
  meowfetch
  pay-respects
 ];

}
