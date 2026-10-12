{ pkgs, ... }:

{
  services.sunshine = {
    enable = true;
    autoStart = true;
    openFirewall = true;

    # Start with KDE's Wayland capture rather than KMS.
    capSysAdmin = false;

    package = pkgs.sunshine.override {
      cudaSupport = true;
    };

    settings = {
      capture = "portal";
      encoder = "nvenc";
    };
  };

  users.users.glen.extraGroups = [ "uinput" ];
}
