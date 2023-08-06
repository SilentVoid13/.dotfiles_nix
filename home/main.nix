{
  inputs,
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./programs/common_terminal.nix
    ./programs/common_gui.nix
    ./programs/common_toolchain.nix
    ./programs/1password.nix
    ./programs/git
    ./programs/brave.nix
    ./programs/firefox.nix
    ./programs/alacritty.nix
    ./programs/foot.nix
    ./programs/sway
    ./programs/wofi.nix
    ./programs/fuzzel.nix
    ./programs/waybar.nix
    ./programs/binaryninja
    ./programs/gdb.nix
    ./programs/mpv.nix
    ./programs/zsh.nix
    ./programs/nvim
    ./programs/nodejs.nix

    ./services/dunst.nix
  ];
}
