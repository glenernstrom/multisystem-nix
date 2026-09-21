{pkgs, ... }:

  {
    programs.neovim = {
    enable = true;
    defaultEditor = true;
    withPython3 = false;
    withRuby = false;
    plugins = with pkgs.vimPlugins; [
      catppuccin-nvim
      lualine-nvim
      plenary-nvim
      nvim-web-devicons
      nvim-lint
      nvim-lspconfig
    ];

    extraPackages = with pkgs; [
      ruff
    ];
 };

  xdg.configFile."nvim/init.lua".source = ./init.lua;
  xdg.configFile."nvim/lua".source = ./lua;

  }
