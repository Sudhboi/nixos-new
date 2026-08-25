{ pkgs, ... }:

{
  home.packages = with pkgs; [
    heroic
    vesktop
    statix
    prismlauncher
    nixfmt
    yazi
  ];
}
