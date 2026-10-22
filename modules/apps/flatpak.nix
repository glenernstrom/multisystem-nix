{ ... }:

{
  services.flatpak = {
    enable = true;

    packages = [
      "com.pojtinger.felicitas.Sessions"
      "org.meshtastic.MeshtasticDesktop"
      "org.mozilla.firefox"
    ];

    update.auto = {
      enable = true;
      onCalendar = "weekly";
    };
  };
}
