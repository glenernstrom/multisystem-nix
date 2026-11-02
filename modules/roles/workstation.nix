{ pkgs, ... }:

# My workstation with creature comforts

{
  environment.systemPackages = with pkgs; [

    # Maintenance
    restic
    rsync
    kdePackages.filelight
    kdePackages.kbackup

    # Cloud
    pcloud

    # Writing
    jabref
    joplin-desktop
    texliveFull
    kile
    pandoc
    kdePackages.marknote
    kdePackages.ghostwriter

    # Graphics
    inkscape
    gimp
    krita
    scribus

    # PDF management
    pdfarranger

    # Reading
    kdePackages.akregator
    kdePackages.arianna

    # Office
    libreoffice-qt
    hunspell
    hunspellDicts.en_US
    hyphenDicts.en_US
    kdePackages.calligra

    # Video
    shotcut
    kdePackages.kdenlive
    haruna
    kdePackages.plasmatube

    # Audio
    kdePackages.kasts
    kdePackages.juk
    shortwave
    parabolic
    amarok

    # Utilities
    poppler-utils
    lshw
    kdePackages.kweather
    kdePackages.kcalc
    kdePackages.kleopatra
    kdePackages.partitionmanager
    kdePackages.isoimagewriter
    kdePackages.kcolorchooser
    kdePackages.kcharselect
    kdePackages.khelpcenter
    kdePackages.skanpage
    kdePackages.kalarm
    kdePackages.kteatime
    kdePackages.francis

    # Internet
    kdePackages.konqueror
    kdePackages.falkon
    element-desktop
    chromium
    protonmail-bridge
    protonmail-bridge-gui

    # Security
    proton-pass
    bitwarden-desktop
    bitwarden-cli

    # Teaching
    anki
    xournalpp

    # Science
    labplot
    nucleus
    pymol
    kstars
    kdePackages.kalzium
    kdePackages.kmplot
    kdePackages.marble

    # PIM / mail / calendar / contacts
    protonmail-desktop

    kdePackages.kontact
    kdePackages.kmail
    kdePackages.kmail-account-wizard
    kdePackages.kaddressbook
    kdePackages.korganizer
    kdePackages.zanshin
    kdePackages.merkuro

    # Useful PIM utilities / add-ons
    kdePackages.akonadiconsole
    kdePackages.akonadi-import-wizard
    kdePackages.pim-data-exporter
    kdePackages.pim-sieve-editor
    kdePackages.kdepim-addons
    kdePackages.kdepim-runtime

    # Games
    kdePackages.ksudoku
    kdePackages.kpat
    kdePackages.kmines
    kdePackages.klines
    kdePackages.kbreakout
    kdePackages.kiriki

    # Code
    vscodium
    kdePackages.kdevelop
  ];
}
