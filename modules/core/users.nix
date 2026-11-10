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
   # Public keys authorized to SSH into this account.
   # openssh.authorizedKeys.keys = [
   #   "ssh-ed25519 REPLACE_WITH_PUMA_PUBLIC_KEY"
   #   "ssh-ed25519 REPLACE_WITH_LYNX_PUBLIC_KEY"
   # ];
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
 };
}
