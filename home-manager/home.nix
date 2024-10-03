{ config, pkgs, ... }:

{
  imports = [

  ];

  home = {
    username = "zihad";
    homeDirectory = "/home/zihad";
    stateVersion = "24.05";
    enableNixpkgsReleaseCheck = false;
    packages = with pkgs; [
      bat
      btop
      chezmoi
      firefox-bin
      veracrypt
    ];
  };

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  programs.home-manager.enable = true;
}
