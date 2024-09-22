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
nix-shell -p git
git clone https://github.com/Honekatsu/.dotfiles.git
cd ./.dotfiles

sudo nixos-rebuild switch

rm flake.nix
git add .
nix run nixpkgs#home-manager -- switch --flake .#myHome

sudo nixos-rebuild switch -I nixos-config=configuration.nix
```
