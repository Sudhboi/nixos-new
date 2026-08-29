{ wallpaperStyle, ... }:

{

  home.file.".scripts/wallpaper/wallpaper_boot" = {
    executable = true;
    text = "";
  };

  home.file.".scripts/wallpaper/wallpaper_poweroff" = {
    executable = true;
    text = "";
  };

  imports = [
    ./${wallpaperStyle}/wallpaper.nix
  ];
}
