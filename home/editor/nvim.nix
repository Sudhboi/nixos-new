{ config, pkgs, ... }:
{
  programs.neovim.defaultEditor = true;
  home = {
    file.".config/nvim".source =
      config.lib.file.mkOutOfStoreSymlink /home/sudhirk/.dotfiles/home/editor/nvim;
    packages = with pkgs; [
      neovim
      neovide
    ];
    file.".editor/editor".source = ./nv.sh;
  };
}
