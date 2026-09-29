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
    texliveFull
    texmaker
    pandoc
    # graphics
    gradia
    inkscape
    gimp
    eyedropper
    switcheroo
    # reading
    foliate
    newsflash
    cozy
    # video
    shotcut
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
    # productivity
    progress-tracker
    pomodoro
    warp
    errands
  ];

  
}
