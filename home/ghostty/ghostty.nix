{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ghostty
  ];

  xdg.configFile."ghostty/config" = {
    text = ''
      theme = catppuccin-mocha
      font-size = 14
    '';
    force = true;
  };

  xdg.configFile."ghostty/themes".source = ./themes;
}
