{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    heroic
    fzf
    wireplumber
    git
    python3
    wget
    libnotify
    brightnessctl
    gnumake
    ripgrep
    libtool
    zip
    unzip
    coreutils
    pciutils
    gcc
    fd
    clang
    cmake
    rustup
  ];
}
