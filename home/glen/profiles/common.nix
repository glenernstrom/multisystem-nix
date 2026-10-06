{ config, pkgs, firefox-addons, ... }:

{
  imports = [
    ../ghostty/ghostty.nix
    ../nvim/neovim.nix
  ];

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
    isDefault = true;

     search = {
       force = true;
       default = "ddg";
       privateDefault = "ddg";
     };

    };
  };
}
