{ pkgs, ... }:

{
  home.pointerCursor = {
    enable = true;
    name = "catppuccin-mocha-light-cursors";
    package = pkgs.catppuccin-cursors.mochaLight;

    gtk.enable = true;
    x11.enable = true;
  };
  # home.pointerCursor = {
  #   gtk.enable = true;
  #   x11.enable = true;
  #   package = pkgs.bibata-cursors;
  #   name = "Bibata-Modern-Ice";
  #   size = 24;
  # };
}
