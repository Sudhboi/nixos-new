{ ... }:

{
  services.hyprpaper = {
    enable = true;
    settings = {

      splash = false;
      preload = [
        "${./wallpaper-vertical.png}"
        "${./wallpaper_right.jpg}"
      ];

      wallpaper = [
        {
          monitor = "HDMI-A-1";
          path = "${./wallpaper-vertical.png}";
        }
        {
          monitor = "DP-1";
          path = "${./wallpaper_right.jpg}";
        }
      ];
    };
  };
}
