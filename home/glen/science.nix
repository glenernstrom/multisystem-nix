{ pkgs, ... }:

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
in
{
  home.packages = [
    fiji
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
}
