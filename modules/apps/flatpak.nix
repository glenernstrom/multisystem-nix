{ ... }:

{
  services.flatpak = {
    enable = true;

    packages = [
      "com.pojtinger.felicitas.Sessions"
      "org.meshtastic.MeshtasticDesktop"
    ];

    update.auto = {
      enable = true;
      onCalendar = "weekly";
    };
  };
}
