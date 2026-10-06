{ ... }:

{
  services.flatpak = {
    enable = true;

    packages = [
      "com.pojtinger.felicitas.Sessions"
    ];

    update.auto = {
      enable = true;
      onCalendar = "weekly";
    };
  };
}
