{ pkgs, ... }:
{
  users.users.sudhirk = {
    isNormalUser = true;
    description = "Sudhir Krisna";
    extraGroups = [
      "networkmanager"
      "wheel"
      "input"
    ];
    shell = pkgs.zsh;
  };
}
