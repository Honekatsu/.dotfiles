```bash
z ./.dotfiles

sudo nixos-rebuild switch -I nixos-config=configuration.nix

rm flake.nix
git add .
nix run nixpkgs#home-manager -- switch --flake .#myHome
```
