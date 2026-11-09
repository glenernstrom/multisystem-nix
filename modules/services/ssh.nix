
{ ... }:

{
  services.openssh = {
    enable = true;

    # Manage firewall access explicitly.
    openFirewall = false;

    settings = {
      PermitRootLogin = "no";

      # Require SSH keys rather than passwords.
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;

      # Restrict logins to your account.
      AllowUsers = [ "glen" ];

      # No remote X11 forwarding needed.
      X11Forwarding = false;
    };
  };

  # Allow SSH through Tailscale.
  networking.firewall.interfaces."tailscale0".allowedTCPPorts = [
    22
  ];
}

