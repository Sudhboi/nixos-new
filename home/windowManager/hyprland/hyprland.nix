{ inputs, pkgs, ... }:

{
  imports = [
    ./waybar.nix
    ./cursor.nix
    ./hyprpaper/hyprpaper.nix
    ../../notifications/swaync.nix
    ./xdg.nix
    ./hypridle.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage =
      inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    configType = "lua";
    extraConfig = ''
      require("main")
    '';
  };
}
