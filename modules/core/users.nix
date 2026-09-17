{ ... }:

{
  users.users.glen = {
  isNormalUser = true;
  description = "Glen Ernstrom";
  extraGroups = [
    "networkmanager"
    "wheel"
    ];
  };
}
