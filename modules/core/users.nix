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
    openssh.authorizedKeys.keys = [
    
      # lynx key
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGDnYQ23WRtxFCfeg04dMRaPOpFHVPEt/Nd0xNmDbWnm otterbrain@protonmail.com"

      # lutra key
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMWAOzSCFgEcyydj3Fd63EmAiT6xY9kI7oAEOqNTLQOo otterbrain@protonmail.com"


   ];
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
 };
}
