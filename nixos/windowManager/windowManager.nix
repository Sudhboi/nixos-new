{ windowManager, ... }:
{
  imports = [
    ./x11.nix
    ./displayManager.nix
    ./${windowManager}.nix
  ];
}
