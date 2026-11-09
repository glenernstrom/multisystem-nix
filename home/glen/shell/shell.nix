{ config, pkgs, ...}:

{

  imports = [
    ./nvim/neovim.nix
  ];
   
  programs.bash = {
    enable = true;
  };

  programs.fish = {
    enable = true;
  };

#  programs.starship = {
#    enable = true;
#    enableBashIntegration = true;
#    enableFishIntegration = true;
#
#    presets = [ 
#      "nerd-font-symbols" 
#    ];
#  };

}
