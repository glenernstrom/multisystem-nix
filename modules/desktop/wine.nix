{ ... }:

{
  environment.systemPackages = with pkgs; [

    # support both 32- and 64-bit applications
    wineWow64Packages.stable
  ];
}
