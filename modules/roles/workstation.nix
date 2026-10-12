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
    kdePackages.kcontacts
    kdePackages.kontact
    kdePackages.kmail
    kdePackages.kmailtransport
    kdePackages.kmail-account-wizard
    kdePackages.calendarsupport
    kdePackages.korganizer
    kdePackages.pim-data-exporter
    kdePackages.pimcommon
    kdePackages.pim-sieve-editor
    kdePackages.libkdepim
    kdePackages.akonadi-search
    kdePackages.kaddressbook
    kdePackages.akonadi-calendar-tools
    kdePackages.kaccounts-providers
    kdePackages.zanshin
    kdePackages.kdepim-addons


  ];


  
}
