{ pkgs, ... }:

{
  home.packages = with pkgs; [
    heroic
    vesktop
    statix
    prismlauncher
    btop-cuda
    flameshot
    nixfmt
    yazi
  ];
}
