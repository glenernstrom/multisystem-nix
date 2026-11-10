{ pkgs, ... }:

{
  home.packages = with pkgs; [
    mumble
    pcloud
    jabref
    texliveFull
    kile
    pandoc
    inkscape
    gimp
    xournalpp
    libreoffice-qt
    hunspell
    hunspellDicts.en_US
    hyphenDicts.en_US
    haruna
    kdePackages.elisa
    kdePackages.filelight
    kdePackages.ghostwriter
    kdePackages.arianna
    kdePackages.akregator
    kdePackages.kweather
    kdePackages.skanpage
    kdePackages.korganizer
    kdePackages.kaddressbook
  ];

  

}

