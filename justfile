non_nixos_full:
    home-manager switch --flake .#non_nixos_full --impure
nixos_full:
    home-manager switch --flake .#nixos_full
update:
    nix-channel --update
    nix flake update
    just nixos_full
    just rebuild
rebuild:
    sudo nixos-rebuild switch --flake .#dell
vm:
    nix build .#nixosConfigurations.vm.config.system.build.vm
