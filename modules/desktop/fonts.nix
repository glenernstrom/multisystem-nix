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

  texGyreTTFonts = pkgs.stdenvNoCC.mkDerivation {
    pname = "tex-gyre-tt-fonts";
    version = "2.501";

    dontUnpack = true;

    nativeBuildInputs = [
      pkgs.fontforge
    ];

    installPhase = ''
      export HOME="$TMPDIR"

      outDir="$out/share/fonts/truetype/tex-gyre"
      mkdir -p "$outDir"

      convertFont() {
        src="$1"
        dst="$2"
        family="$3"
        fullname="$4"
        fontname="$5"
        style="$6"

        fontforge -lang=py -c '
import fontforge
import sys

src, dst, family, fullname, fontname, style = sys.argv[1:]

f = fontforge.open(src)

f.familyname = family
f.fullname = fullname
f.fontname = fontname

for nameid, value in (
    (1,  family),
    (2,  style),
    (4,  fullname),
    (6,  fontname),
    (16, family),
    (17, style),
    (21, family),
    (22, style),
):
    f.appendSFNTName("English (US)", nameid, value)

f.generate(dst)
f.close()
' "$src" "$dst" "$family" "$fullname" "$fontname" "$style"
      }

      # ------------------------------------------------------------
      # TeX Gyre Pagella
      # ------------------------------------------------------------

      convertFont \
        "$(find ${pkgs.tex-gyre.pagella} \
          -name texgyrepagella-regular.otf -print -quit)" \
        "$outDir/TeXGyrePagella-Regular.ttf" \
        "TeX Gyre Pagella" \
        "TeX Gyre Pagella Regular" \
        "TeXGyrePagella-Regular" \
        "Regular"

      convertFont \
        "$(find ${pkgs.tex-gyre.pagella} \
          -name texgyrepagella-bold.otf -print -quit)" \
        "$outDir/TeXGyrePagella-Bold.ttf" \
        "TeX Gyre Pagella" \
        "TeX Gyre Pagella Bold" \
        "TeXGyrePagella-Bold" \
        "Bold"

      convertFont \
        "$(find ${pkgs.tex-gyre.pagella} \
          -name texgyrepagella-italic.otf -print -quit)" \
        "$outDir/TeXGyrePagella-Italic.ttf" \
        "TeX Gyre Pagella" \
        "TeX Gyre Pagella Italic" \
        "TeXGyrePagella-Italic" \
        "Italic"

      convertFont \
        "$(find ${pkgs.tex-gyre.pagella} \
          -name texgyrepagella-bolditalic.otf -print -quit)" \
        "$outDir/TeXGyrePagella-BoldItalic.ttf" \
        "TeX Gyre Pagella" \
        "TeX Gyre Pagella Bold Italic" \
        "TeXGyrePagella-BoldItalic" \
        "Bold Italic"

      # ------------------------------------------------------------
      # TeX Gyre Heros
      # ------------------------------------------------------------

      convertFont \
        "$(find ${pkgs.tex-gyre.heros} \
          -name texgyreheros-regular.otf -print -quit)" \
        "$outDir/TeXGyreHeros-Regular.ttf" \
        "TeX Gyre Heros" \
        "TeX Gyre Heros Regular" \
        "TeXGyreHeros-Regular" \
        "Regular"

      convertFont \
        "$(find ${pkgs.tex-gyre.heros} \
          -name texgyreheros-bold.otf -print -quit)" \
        "$outDir/TeXGyreHeros-Bold.ttf" \
        "TeX Gyre Heros" \
        "TeX Gyre Heros Bold" \
        "TeXGyreHeros-Bold" \
        "Bold"

      convertFont \
        "$(find ${pkgs.tex-gyre.heros} \
          -name texgyreheros-italic.otf -print -quit)" \
        "$outDir/TeXGyreHeros-Italic.ttf" \
        "TeX Gyre Heros" \
        "TeX Gyre Heros Italic" \
        "TeXGyreHeros-Italic" \
        "Italic"

      convertFont \
        "$(find ${pkgs.tex-gyre.heros} \
          -name texgyreheros-bolditalic.otf -print -quit)" \
        "$outDir/TeXGyreHeros-BoldItalic.ttf" \
        "TeX Gyre Heros" \
        "TeX Gyre Heros Bold Italic" \
        "TeXGyreHeros-BoldItalic" \
        "Bold Italic"
    '';
  };

in
{
  fonts.enableDefaultPackages = false;

  fonts.packages = with pkgs; [
    lucidaFonts
    texGyreTTFonts

    nerd-fonts.jetbrains-mono
    nerd-fonts.symbols-only

    
  # Replacements for the useful NixOS default font set,
  # intentionally omitting gyre-fonts.
  dejavu_fonts
  freefont_ttf
  liberation_ttf
  unifont
  noto-fonts-cjk-sans
  noto-fonts-cjk-serif
  noto-fonts-color-emoji
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
