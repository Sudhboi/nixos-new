{ ... }:

{
  imports = [
    ./sync/syncScripts.nix
  ];

  home.file.".scripts/poweroff.sh" = {
    executable = true;
    text = ''
      /home/sudhirk/.scripts/wallpaper/wallpaper_poweroff &
      /home/sudhirk/.sync/sync_poweroff.sh < /home/sudhirk/.sync/folders.txt
      wait
    '';
  };

  home.file.".scripts/boot.sh" = {
    executable = true;
    text = ''
      /home/sudhirk/.scripts/wallpaper/wallpaper_boot &
      /home/sudhirk/.sync/sync_boot.sh < /home/sudhirk/.sync/folders.txt
    '';
  };
}
