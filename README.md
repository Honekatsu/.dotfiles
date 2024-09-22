```bash
sudo nano /etc/nixos/configuration.nix
```
```nix
{config,pkgs, ...}:
{
  nix = {
    settings = {
      experimental-features = ["nix-command" "flakes"];
    };
  };
}
```

```bash
nix run nixpkgs#git
git clone git@github.com:Honekatsu/.dotfiles.git
z ./.dotfiles

sudo nixos-rebuild switch -I nixos-config=configuration.nix

rm flake.nix
git add .
nix run nixpkgs#home-manager -- switch --flake .#myHome
```
