{ ... }:

{
  imports = [
    ./sync/syncScripts.nix
  ];

  home.file.".scripts/poweroff.sh" = {
    executable = true;
    text = ''
      /home/sudhirk/.scripts/wallpaper_poweroff &
      /home/sudhirk/.sync/sync_poweroff.sh < /home/sudhirk/.sync/folders.txt
      wait
    '';
  };
}
