{ hostName, ... }:

{
  imports = [
    ../hosts/${hostName}/hardware-configuration.nix
    ./boot/boot.nix
    ./packages/packages.nix
    ./users/users.nix
    ./shell/zsh.nix
    ./localisation/localisation.nix
    ./nixLd/nixLd.nix
    ./networking/networking.nix
    ./windowManager/windowManager.nix
    ./programs/programs.nix
    ./services/services.nix
    ./graphics/graphics.nix
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  system.stateVersion = "25.11"; # Did you read the comment?
}
