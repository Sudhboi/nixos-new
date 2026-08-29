{
  inputs,
  pkgs,
  hostName,
  ...
}:

{
  imports = [
    ../../desktopStuff/waybar/waybar.nix
    ../../desktopStuff/cursor/cursor.nix
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
  home = {
    file = {
      ".config/hypr/autostarts.lua".source = ./config/autostarts.lua;
      ".config/hypr/binds.lua".source = ./config/binds.lua;
      ".config/hypr/main.lua".source = ./config/main.lua;
      ".config/hypr/monitors.lua".source = ./config/monitors-${hostName}.lua;
    };
  };
}
