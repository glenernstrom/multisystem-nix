{ ... }:

{
  users.users.glen = {
  isNormalUser = true;
  description = "Glen Ernstrom";
  extraGroups = [
    "networkmanager"
    "wheel"
    "scanner"
    ];
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;

    users.glen = import ../../home/glen;
 };
}
