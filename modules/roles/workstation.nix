{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # maintenance
    deja-dup
    rsync
    # internet
    pcloud
    # writing tools
    jabref
    joplin-desktop
    texliveFull
    kile
    pandoc
    # graphics
    inkscape
    gimp
    krita
    pdfarranger
    eyedropper
    # reading
    kdePackages.akregator
    kdePackages.arianna
    # video
    shotcut
    kdePackages.kdenlive
    # utility
    # office
    libreoffice-qt
    hunspell
    hunspellDicts.en_US
    hyphenDicts.en_US
    # audio
    kdePackages.kasts
    shortwave
    parabolic
    # teaching
    anki
    kdePackages.kcalc
    pymol
    nucleus
    xournalpp
    labplot
    kdePackages.merkuro
    kdePackages.kalzium
    kdePackages.kirigami-addons
  ];


  
}
