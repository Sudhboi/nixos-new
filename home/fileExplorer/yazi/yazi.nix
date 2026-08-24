{ ... }:

{
  programs.yazi = {
    enable = true;
    shellWrapperName = "yy";
    settings = {
      mgr = {
        show_hidden = true;
      };
    };
  };
  home.file.".config/yazi/theme.toml".source = ./theme.toml;
}
