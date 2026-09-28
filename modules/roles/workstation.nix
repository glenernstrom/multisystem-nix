{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rsync
    pcloud
    libreoffice
    jabref
    pdfarranger
    censor
    joplin-desktop
    gradia
    inkscape
    gimp
    foliate
    kooha
    shotcut
    obs-studio
    blanket
    newsflash
    deja-dup
    cozy
    addwater
    xournalpp
    shortwave
    impression
    progress-tracker
    pomodoro
    gnome-podcasts
    warp
    switcheroo
    eyedropper
    errands
    gnome-graphs
  ];

  
}
