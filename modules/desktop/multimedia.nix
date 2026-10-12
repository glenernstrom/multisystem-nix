# modules/desktop/multimedia.nix
{ pkgs, ... }:

let
  gst = pkgs.gst_all_1;
in
{
  environment.systemPackages = with gst; [
    gstreamer
    gst-plugins-base
    gst-plugins-good
    gst-plugins-bad
    gst-plugins-ugly
    gst-libav
  ];

  environment.sessionVariables = {
    GST_PLUGIN_SYSTEM_PATH_1_0 =
      pkgs.lib.makeSearchPath "lib/gstreamer-1.0" [
        gst.gstreamer
        gst.gst-plugins-base
        gst.gst-plugins-good
        gst.gst-plugins-bad
        gst.gst-plugins-ugly
        gst.gst-libav
      ];
  };
}
