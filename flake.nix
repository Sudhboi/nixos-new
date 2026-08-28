{
  description = "SKONG!!!";

  outputs =
    inputs@{
      self,
      nixpkgs,
      home-manager,
      nix-index-database,
      ...
    }:
    let
      system = "x86_64-linux";
      argsTemplate = host: wm: wbs: wps: {
        hostName = "${host}";
        terminalEmulator = "kitty";
        windowManager = "${wm}";
        waybarStyle = "${wbs}";
        wallpaperStyle = "${wps}";
        inherit inputs;
      };
      hornetArgs = argsTemplate "hornet" "niri" "1" "nix-cat";
      knightArgs = argsTemplate "knight" "hyprland" "0" "gruvbox";
      makeSystem =
        args:
        nixpkgs.lib.nixosSystem {
          modules = [ ./nixos/nixos.nix ];
          inherit system;
          specialArgs = args;
        };
      makeUser =
        args:
        home-manager.lib.homeManagerConfiguration {
          modules = [
            ./home/sudhirk.nix
            nix-index-database.homeModules.default
          ];
          pkgs = nixpkgs.legacyPackages.${system};
          extraSpecialArgs = args;
        };
      makeConfig = func: {
        "hornet" = func hornetArgs;
        "knight" = func knightArgs;
      };
    in
    {
      nixosConfigurations = makeConfig makeSystem;
      homeConfigurations = makeConfig makeUser;
    };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri = {
      url = "github:sodiboo/niri-flake";
    };

    hyprland.url = "github:hyprwm/Hyprland";

    mango = {
      url = "github:mangowm/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };

    nix-index-database.url = "github:nix-community/nix-index-database";
    nix-index-database.inputs.nixpkgs.follows = "nixpkgs";

  };
}
