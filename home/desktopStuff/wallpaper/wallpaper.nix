{ wallpaperStyle, ... }:

{

  home.file.".scripts/wallpaper_boot" = {
    executable = true;
    text = "";
  };

  home.file.".scripts/wallpaper_poweroff" = {
    executable = true;
    text = "";
  };

  imports = [
    ./${wallpaperStyle}/wallpaper.nix
  ];
}
