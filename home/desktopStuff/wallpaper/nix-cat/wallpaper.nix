{ pkgs, lib, ... }:

let
  wallpaper_path = ".config/wallpapers";
  sequence_path = wallpaper_path + "/sequence";
in
{
  home = {
    file = {
      "${sequence_path}/1".source = ./sequenced/Wallpaper-Mocha-Red1.png;
      "${sequence_path}/2".source = ./sequenced/Wallpaper-Mocha-Orange2.png;
      "${sequence_path}/3".source = ./sequenced/Wallpaper-Mocha-Yellow3.png;
      "${sequence_path}/4".source = ./sequenced/Wallpaper-Mocha-Green4.png;
      "${sequence_path}/5".source = ./sequenced/Wallpaper-Mocha-Blue5.png;
      "${sequence_path}/6".source = ./sequenced/Wallpaper-Mocha-Lavender6.png;
      "${sequence_path}/no_color".source = ./sequenced/Wallpaper-Mocha-Nocolor.png;
      "${sequence_path}/no_color_lock".source = ./sequenced/Wallpaper-Mocha-NocolorWithLock.png;
    };

    packages = [ pkgs.awww ];

    file.".scripts/wallpaper_poweroff".text = lib.mkForce ''
      awww img /home/sudhirk/.config/wallpapers/sequence/no_color_lock --transition-type outer --transition-pos 0.5,0.5 --transition-fps 120 --transition-duration 0.5
      sleep 0.5
    '';
  };
}
