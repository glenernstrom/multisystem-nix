{ config, pkgs, ... }:

let
  fiji = pkgs.writeShellApplication {
    name = "fiji";

    runtimeInputs = [
      pkgs.steam-run-free
    ];

    text = ''
      exec steam-run env \
        LD_LIBRARY_PATH="${pkgs.libxtst}/lib''${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}" \
        "$HOME/Applications/Fiji/fiji" "$@"
    '';
  };

  ape = pkgs.writeShellApplication {
    name = "ape";

    runtimeInputs = [
      pkgs.tk
    ];

    text = ''
      exec wish "$HOME/Applications/ApE/ApE.tcl" "$@"
    '';
  };
in
{
  home.packages = [
    fiji
    ape
  ];

  xdg.desktopEntries.fiji = {
    name = "Fiji";
    genericName = "Image Processing";
    comment = "Fiji Is Just ImageJ";
    exec = "fiji %F";
    terminal = false;
    categories = [
      "Graphics"
      "Science"
    ];
  };

  xdg.desktopEntries.ape = {
    name = "ApE";
    genericName = "Plasmid Editor";
    comment = "A plasmid Editor";
    exec = "ape %F";
    icon = "${config.home.homeDirectory}/Applications/ApE/Accessory Files/Icons and images/ApE_icon.png";
    terminal = false;
    categories = [
      "Science"
      "Education"
    ];
  };
}
