{ pkgs, ... }:

{
  programs.fastfetch = {
    enable = true;
    package = pkgs.fastfetch;
  };

  xdg.configFile."fastfetch/config.jsonc".source = ./config.jsonc;
}
