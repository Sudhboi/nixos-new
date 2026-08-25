{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    lfs.enable = true;
    settings = {
      user.name = "Sudhir Krisna";
      user.email = "sudhboiii@gmail.com";
      init.defaultBranch = "main";
    };
  };

  home.packages = [ pkgs.lazygit ];

  programs.zsh.shellAliases = {
    "lg" = "lazygit";
  };
}
