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

      outDir="$out/share/fonts/truetype/tex-gyre-tt"
      mkdir -p "$outDir"

      convertFont() {
        src="$1"
        dst="$2"
        family="$3"
        fullname="$4"
        fontname="$5"
        style="$6"

        fontforge -lang=py -c '
import fontforge, sys

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

      # TeX Gyre Pagella
      convertFont \
        "$(find ${pkgs.tex-gyre.pagella} -name texgyrepagella-regular.otf -print -quit)" \
        "$outDir/TeXGyrePagellaTT-Regular.ttf" \
        "TeX Gyre Pagella TT" \
        "TeX Gyre Pagella TT Regular" \
        "TeXGyrePagellaTT-Regular" \
        "Regular"

      convertFont \
        "$(find ${pkgs.tex-gyre.pagella} -name texgyrepagella-bold.otf -print -quit)" \
        "$outDir/TeXGyrePagellaTT-Bold.ttf" \
        "TeX Gyre Pagella TT" \
        "TeX Gyre Pagella TT Bold" \
        "TeXGyrePagellaTT-Bold" \
        "Bold"

      convertFont \
        "$(find ${pkgs.tex-gyre.pagella} -name texgyrepagella-italic.otf -print -quit)" \
        "$outDir/TeXGyrePagellaTT-Italic.ttf" \
        "TeX Gyre Pagella TT" \
        "TeX Gyre Pagella TT Italic" \
        "TeXGyrePagellaTT-Italic" \
        "Italic"

      convertFont \
        "$(find ${pkgs.tex-gyre.pagella} -name texgyrepagella-bolditalic.otf -print -quit)" \
        "$outDir/TeXGyrePagellaTT-BoldItalic.ttf" \
        "TeX Gyre Pagella TT" \
        "TeX Gyre Pagella TT Bold Italic" \
        "TeXGyrePagellaTT-BoldItalic" \
        "Bold Italic"

      # TeX Gyre Heros
      convertFont \
        "$(find ${pkgs.tex-gyre.heros} -name texgyreheros-regular.otf -print -quit)" \
        "$outDir/TeXGyreHerosTT-Regular.ttf" \
        "TeX Gyre Heros TT" \
        "TeX Gyre Heros TT Regular" \
        "TeXGyreHerosTT-Regular" \
        "Regular"

      convertFont \
        "$(find ${pkgs.tex-gyre.heros} -name texgyreheros-bold.otf -print -quit)" \
        "$outDir/TeXGyreHerosTT-Bold.ttf" \
        "TeX Gyre Heros TT" \
        "TeX Gyre Heros TT Bold" \
        "TeXGyreHerosTT-Bold" \
        "Bold"

      convertFont \
        "$(find ${pkgs.tex-gyre.heros} -name texgyreheros-italic.otf -print -quit)" \
        "$outDir/TeXGyreHerosTT-Italic.ttf" \
        "TeX Gyre Heros TT" \
        "TeX Gyre Heros TT Italic" \
        "TeXGyreHerosTT-Italic" \
        "Italic"

      convertFont \
        "$(find ${pkgs.tex-gyre.heros} -name texgyreheros-bolditalic.otf -print -quit)" \
        "$outDir/TeXGyreHerosTT-BoldItalic.ttf" \
        "TeX Gyre Heros TT" \
        "TeX Gyre Heros TT Bold Italic" \
        "TeXGyreHerosTT-BoldItalic" \
        "Bold Italic"
    '';
  };
in
{
  fonts.packages = with pkgs; [
    lucidaFonts
    texGyreTTFonts

    nerd-fonts.jetbrains-mono
    nerd-fonts.symbols-only

    # Keep the original upstream OTF families available too.
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

  # Transparently use the printer-safe TrueType versions.
  fonts.fontconfig.localConf = ''
  <?xml version="1.0"?>
  <!DOCTYPE fontconfig SYSTEM "urn:fontconfig:fonts.dtd">
  <fontconfig>

    <match target="pattern">
      <test qual="any" name="family">
        <string>TeX Gyre Pagella</string>
      </test>
      <edit name="family" mode="assign" binding="strong">
        <string>TeX Gyre Pagella TT</string>
      </edit>
    </match>

    <match target="pattern">
      <test qual="any" name="family">
        <string>TeX Gyre Heros</string>
      </test>
      <edit name="family" mode="assign" binding="strong">
        <string>TeX Gyre Heros TT</string>
      </edit>
    </match>

  </fontconfig>
'';}
