{ pkgs, ... }:

{
  # Enable Plasma 
  services = {
    desktopManager.plasma6.enable = true;

    # Default display manager for Plasma
    displayManager.plasma-login-manager.enable = true;

    # Optionally enable xserver
    # xserver.enable = true;
  };

  environment.systemPackages = with pkgs; [
    adwaita-icon-theme
    hicolor-icon-theme
  ];

  programs.dconf.enable = true;
}

