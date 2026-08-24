{ hostName, ... }:
{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      "nrs" = "nh os switch $HOME/.dotfiles";
      "hms" = "nh home switch $HOME/.dotfiles -c ${hostName}";
      "q" = "exit";
    };
    
    initContent = ''
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
  };
}
