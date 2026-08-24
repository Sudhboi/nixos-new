{ ... }:
{
  imports = [
    ./zsh.nix
    ./direnv/direnv.nix
    ./prompt/prompt.nix
    ./git/git.nix
    ./nix_index/nix_index.nix
  ];
}
