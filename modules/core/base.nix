{ pkgs, ... }:

{

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  time.timeZone = "America/New_York";

  i18n.defaultLocale = "en_US.UTF-8";

  users.users.glen = {
  isNormalUser = true;
  description = "Glen Ernstrom";
  extraGroups = [
    "networkmanager"
    "wheel"
    ];
  };

  nixpkgs.config.allowUnfree = true;

  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    git
    curl
    wget
    vim
    tree
  ];
}
