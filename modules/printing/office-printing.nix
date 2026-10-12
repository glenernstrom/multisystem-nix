{ pkgs, ... }:

let
  c451iDriver = pkgs.writeTextDir
    "share/cups/model/KOC751iUX.ppd"
    (builtins.readFile ./printer-drivers/KOC751iUX.ppd);
in
{
  services.printing = {
    enable = true;

    drivers = [
      c451iDriver
    ];
  };

  hardware.printers = {
    ensurePrinters = [
      {
        name = "bizhub-C451i";
        description = "Konica Minolta bizhub C451i";
        location = "Given C453";
        deviceUri = "socket://132.198.81.15:9100";
        model = "KOC751iUX.ppd";

        ppdOptions = {
          Model = "C451i";
          Finisher = "FS539";
          KOPunch = "PK524";
          PageSize = "Letter";
        };
      }
    ];

    ensureDefaultPrinter = "bizhub-C451i";
  };

  environment.systemPackages = with pkgs; [
    cups
  ];
}
