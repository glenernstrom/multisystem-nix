{ config, pkgs, firefox-addons, ... }:

{
  imports = [
    ../ghostty/ghostty.nix
    ../nvim/neovim.nix
  ];
   
  programs.bash = {
    enable = true;
  };

  programs.fish = {
    enable = true;
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;

    presets = [ 
      "nerd-font-symbols" 
    ];
  };


  programs.firefox = {
    enable = true;

   languagePacks = [
    "en-US"
  ];


  globalExtensions =
    with firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
      ublock-origin
      proton-pass
    ];

  policies = {
    AppAutoUpdate = false;
    BackgroundAppUpdate = false;
    DisableFirefoxScreenshots = true;
    DisablePasswordReveal = true;
    DisableTelemetry = true;
    OfferToSaveLogins = false;
  };

  profiles.default = {
    id = 0;
    isDefault = true;
    path = "ied172pa.default-release";

     search = {
       force = true;
       default = "ddg";
       privateDefault = "ddg";
     };

    };
  };
}
