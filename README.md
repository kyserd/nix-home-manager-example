# nix home-manager example

This aims to be a simple example on how to bootstrap nix/home-manager on a foreign distro.

Based on [this amazing guide](https://github.com/Evertras/simple-homemanager) by Evertras

## Steps:

1. Install Nix (you may need to install curl)
```
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon
````

2. Open a new shell and run:
```
./scripts/bootstrap.sh
```

This will install home-manager, link the dotfiles in `.config` to `~/.config` and preform a home build/switch.
