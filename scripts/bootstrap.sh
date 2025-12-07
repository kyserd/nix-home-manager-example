#!/usr/bin/env sh

SCRIPT_DIR=$(dirname "$0")

# Install home-manager
nix-channel --add https://github.com/nix-community/home-manager/archive/release-25.11.tar.gz home-manager
nix-channel --update

# Run the Home Manager installation command and create the first Home Manager generation
nix-shell '<home-manager>' -A install

source $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh

nix-shell -p stow just --run "just --justfile ${SCRIPT_DIR}/../justfile stow home-switch"
