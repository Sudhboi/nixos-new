{
  ...
}:

{
  imports = [
    ./shell/shell_stuff.nix
    ./editor/editor.nix
    ./windowManager/windowManager.nix
    ./terminalEmulator/terminalEmulator.nix
    ./browser/browser.nix
    ./fileExplorer/fileExplorer.nix
    ./scripts/scripts.nix
    ./packages/homePackages.nix
  ];
  home = {
    username = "sudhirk";
    homeDirectory = "/home/sudhirk";
    stateVersion = "25.11";
  };
  programs.home-manager.enable = true; # Please read the comment before changing.

}
