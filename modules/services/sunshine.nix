{ pkgs, ... }:

{
  services.sunshine = {
    enable = true;
    autoStart = true;
    openFirewall = true;

    package = pkgs.sunshine.override {
      cudaSupport = true;
    };
  };

  users.users.glen.extraGroups = [ "uinput" ];
}
