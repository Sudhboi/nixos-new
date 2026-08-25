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

  programs.zsh.initContent = ''
    function yo() {
          	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
          	yazi "$@" --cwd-file="$tmp"
          	IFS= read -r -d \'\' cwd < "$tmp"
          	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
          	rm -f -- "$tmp"
          }

          function y() {
            if [ "$1" != "" ]; then
              if [ -d "$1" ]; then
                cd "$1"
                yo
              else
                cd "$(zoxide query $1)"
                yo
              fi
            else
              yo
            fi
              return $?
          }
  '';
}
