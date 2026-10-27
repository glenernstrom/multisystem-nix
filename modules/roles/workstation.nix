{ config, pkgs, ... }:


{

   # programs.kde-pim.kontact = true;

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
    poppler-utils
    # audio
    kdePackages.kasts
    shortwave
    parabolic
    # science
    labplot
    # office
    libreoffice-qt
    hunspell
    hunspellDicts.en_US
    hyphenDicts.en_US
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
    kdePackages.libksieve
    kdePackages.ksanecore
    kdePackages.ghostwriter
    kdePackages.mailcommon
    kdePackages.kaccounts-integration
    kdePackages.messagelib
    kdePackages.incidenceeditor
    kdePackages.kdepim-runtime
    kdePackages.akonadi-calendar
    kdePackages.ksmtp
    kdePackages.akonadi
    kdePackages.akonadi-mime
    kdePackages.akonadi-search
    kdePackages.akonadi-contacts
    kdePackages.akonadi-calendar
    kdePackages.akonadi-import-wizard
    kdePackages.akonadiconsole
    kdePackages.zanshin
    kdePackages.krunner
    kdePackages.eventviews
    kdePackages.grantleetheme
    kdePackages.libgravatar
    kdePackages.kcalutils
    kdePackages.kidentitymanagement
    kdePackages.kimap
    kdePackages.kitinerary
    kdePackages.kmbox
    kdePackages.kldap
    kdePackages.kontactinterface
    kdePackages.ksmtp
    kdePackages.kpimtextedit
    kdePackages.kpkpass
    kdePackages.kpublictransport
    kdePackages.libkleo
    kdePackages.oxygen
    kdePackages.oxygen-icons
    kdePackages.oxygen-sounds
    kdePackages.kdecoration
    kdePackages.union

  ];


  
}
