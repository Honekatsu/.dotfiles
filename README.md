```bash
rm flake.nix
git add .
nix run nixpkgs#home-manager -- switch --flake .#myHome
```
