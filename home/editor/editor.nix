{ ... }:
{
  imports = [
    ./nvim.nix
  ];
  home.sessionVariables = {
    EDITOR = "$HOME/.editor/editor";
  };
}
