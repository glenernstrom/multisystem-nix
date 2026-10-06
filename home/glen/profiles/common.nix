{ pkgs, firefox-addons, ... }:

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

      settings = {
        "extensions.autoDisableScopes" = 0;
      };

      extensions.packages =
        with firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
          ublock-origin
          proton-pass
        ];
    };
  };
}
