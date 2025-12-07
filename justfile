list:
    @just --list

home-switch:
    home-manager switch --flake .#debian


stow:
    stow --target ~/.config .config

