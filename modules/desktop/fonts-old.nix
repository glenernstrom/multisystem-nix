{ pkgs, ... }:

let
  lucidaFonts = pkgs.stdenvNoCC.mkDerivation {
    pname = "lucida-fonts";
    version = "1.0";

    src = ../../fonts/lucida;

    installPhase = ''
      mkdir -p $out/share/fonts/truetype/lucida
      cp *.ttf $out/share/fonts/truetype/lucida/
    '';
  };
in
{
  fonts.packages = with pkgs; [
    lucidaFonts

    nerd-fonts.jetbrains-mono
    nerd-fonts.symbols-only
    tex-gyre.pagella
    tex-gyre.heros
  ];

  fonts.fontconfig.defaultFonts = {
    sansSerif = [
      "Lucida Sans"
      "DejaVu Sans"
    ];

    serif = [
      "Lucida Bright"
      "DejaVu Serif"
    ];

    monospace = [
      "Lucida Typewriter"
      "JetBrainsMono Nerd Font"
      "DejaVu Sans Mono"
    ];
  };
}
