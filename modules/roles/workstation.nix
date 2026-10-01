{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # maintenance
    deja-dup
    rsync
    # internet
    pcloud
    addwater
    fractal
    # writing tools
    jabref
    pdfarranger
    censor
    joplin-desktop
    # graphics
    gradia
    inkscape
    gimp
    eyedopper
    switcheroo
    # reading
    foliate
    newsflash
    cozy
    # video
    kooha
    # utility
    addwater
    impression
    warp
    # audio
    blanket
    gnome-podcasts
    shortwave
    # teaching
    xournalpp
    gnome-graphs
    parabolic
    # productivity
    progress-tracker
    pomodoro
    warp
    errands
  ];

  
}
