#!/usr/bin/env sh

SCRIPT_DIR=$(dirname "$0")

# Install nix
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon

# Install home-manager
nix-channel --add https://github.com/nix-community/home-manager/archive/release-25.11.tar.gz home-manager
nix-channel --update

source $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh

nix-shell -p stow just -- just --justfile ${SCRIPT_DIR}/../justfile stow home-switch 
