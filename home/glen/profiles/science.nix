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
  home.packages = with pkgs; [
    fiji
    ape
    nucleus
    pymol
    coulomb
  ];

  # Our working Fiji launcher.
  # Give it a different desktop ID so Fiji's own launcher cannot shadow it.
  xdg.desktopEntries.fiji-nix = {
    name = "Fiji";
    genericName = "Image Processing";
    comment = "Fiji Is Just ImageJ";
    exec = "${fiji}/bin/fiji %F";
    terminal = false;
     icon = "${config.home.homeDirectory}/Applications/Fiji/images/icon.png";
    categories = [
      "Graphics"
      "Science"
    ];
  };

  # Fiji creates its own ~/.local/share/applications/fiji.desktop,
  # which attempts to launch the generic Linux binary directly.
  # Hide that entry and let Home Manager replace it if necessary.
  xdg.dataFile."applications/fiji.desktop" = {
    force = true;
    text = ''
      [Desktop Entry]
      Type=Application
      Name=Fiji
      Hidden=true
    '';
  };

  xdg.desktopEntries.ape = {
    name = "ApE";
    genericName = "Plasmid Editor";
    comment = "A plasmid Editor";
    exec = "${ape}/bin/ape %F";
    icon = "${config.home.homeDirectory}/Applications/ApE/Accessory Files/Icons and images/ApE_icon.png";
    terminal = false;

    categories = [
      "Science"
      "Education"
    ];
  };
}
