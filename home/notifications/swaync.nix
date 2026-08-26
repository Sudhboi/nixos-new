{ ... }:

{
  services.swaync.enable = true;
  home.file.".config/swaync" = {
    source = ./swaync;
    recursive = true;
  };
}
