{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rsync
  ];

  services.flatpak.packages = [
    # Office
    "org.libreoffice.LibreOffice"
    # Writing Tools
    "page.wisha.platen"
    "re.sonny.Eloquent"
    "org.jabref.jabref"
    # PDF
    "com.github.jeromerobert.pdfarranger"
    "com.github.muriloventuroso.pdftricks"
    "com.pojtinger.felicitas.Sessions"
    "page.codeberg.censor.Censor"
    # Notes
    "net.cozic.joplin_desktop"
    "be.alexandervanhee.gradia"
    "com.github.xournalpp.xournalpp"
    "org.speedynote.SpeedyNote"
    "app.shizumu.Shizumu"
    # Graphics
    "org.gimp.GIMP"
    "org.inkscape.Inkscape"
    # Planning
    "io.github.smolblackcat.Progress"
    "com.trougnouf.Cfait"
    "com.pojtinger.felicitas.Sessions"
    "me.dumke.Reinschrift"
    # Media
    "io.github.seadve.Kooha"
    "org.shotcut.Shotcut"
    "com.obsproject.Studio"
    # Maintenance
    "dev.qwery.AddWater"
    "org.gnome.DejaDup"
    "io.gitlab.adhami3310.Impression"
    # Reading
    "com.github.johnfactotum.Foliate"
    "com.github.geigi.cozy"
    "io.gitlab.news_flash.NewsFlash"
    "com.github.ahrm.sioyek"
   # Audio
    "de.haeckerfelix.Shortwave"
    "org.gnome.Decibels"
    "io.github.screwys.Rufin"
    "com.rafaelmardojai.Blanket"
  ];
}
