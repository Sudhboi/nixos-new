{ pkgs, ... }:

{
  home.packages = with pkgs; [
    heroic
    vesktop
    statix
    prismlauncher
    btop-cuda
    flameshot
    grim
    wl-clipboard
    slurp
    satty
    nixfmt
    yazi
  ];
}
