{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rsync
  ];

  services.flatpak.packages = [
    "org.libreoffice.LibreOffice"
    "com.github.jeromerobert.pdfarranger"
    "be.alexandervanhee.gradia"
    "org.gimp.GIMP"
    "org.inkscape.Inkscape"
    "io.github.seadve.Kooha"
    "com.obsproject.Studio"
    "org.shotcut.Shotcut"
    "com.github.xournalpp.xournalpp"
    "org.gnome.DejaDup"
    "com.pojtinger.felicitas.Sessions"
    "com.rafaelmardojai.Blanket"
    "net.cozic.joplin_desktop"
    "page.wisha.platen"
    "com.github.ahrm.sioyek"
    "app.shizumu.Shizumu"
    "org.gnome.Decibels"
    "com.github.johnfactotum.Foliate"
    "com.github.geigi.cozy"
    "io.gitlab.news_flash.NewsFlash"
    "de.haeckerfelix.Shortwave"
    "com.obsproject.Studio"
    "io.github.screwys.Rufin"
    "dev.qwery.AddWater"
    "io.gitlab.adhami3310.Impression"
    "io.github.smolblackcat.Progress"
  ];
}
