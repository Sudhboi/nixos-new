{ pkgs, ... }:

{
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };

  home.packages = [
    pkgs.devenv
  ];

  home.file.".config/direnv/direnv.toml".source = ./direnv.toml;
  home.file.".config/direnv/direnvrc".source = ./direnvrc;
}
