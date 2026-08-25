{ pkgs, ... }:

{
  home.packages = with pkgs; [
    heroic
    vesktop
    statix
    prismlauncher
    btop-cuda
    nixfmt
    yazi
  ];
}
