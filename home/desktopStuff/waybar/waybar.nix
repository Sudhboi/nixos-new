{ waybarStyle, ... }:

{
  programs.waybar.enable = true;
  programs.waybar.systemd.enable = true;

  home.file.".config/waybar" = {
    recursive = true;
    source = ./style_${waybarStyle};
  };
}
