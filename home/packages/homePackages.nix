{ pkgs, ... }:

{
  home.packages = with pkgs; [
    heroic
    vesktop
    statix
    nixfmt
    yazi
  ];
}
