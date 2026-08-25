{
  hostName,
  windowManager,
  lib,
  ...
}:

{
  home = {
    file = {
      ".sync/folders.txt".text = ''
        /home/sudhirk/Programming
        /home/sudhirk/.dotfiles
      '';

      ".sync/sync_boot.sh".source = ./sync_boot.sh;
      ".sync/sync_poweroff.sh".source = ./sync_poweroff.sh;

    }
    // lib.optionalAttrs (windowManager == "kde") {
      ".sync/kde/login.sh".source = ./kde_login.sh;
      ".sync/kde/logout.sh".source = ./kde_logout.sh;
    };
  };
}
