{pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    libreoffice
    hunspell
    hunspellDicts.en_US
    hyphenDicts.en_US
  ];
}
