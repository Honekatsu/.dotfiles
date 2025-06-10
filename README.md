# .dotfiles

Nix/NixOSのconfig

## NixOS

```Bash
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

```Bash
nix-shell -p git
git clone --depth=1 https://github.com/Honekatsu/.dotfiles.git
cd ./.dotfiles

sudo nixos-rebuild switch

rm flake.lock
git add .
nix run nixpkgs#home-manager -- switch --flake .#myHome

sudo nixos-rebuild switch -I nixos-config=configuration.nix
```

## macOS

```Bash
git clone --depth=1 https://github.com/Honekatsu/.dotfiles.git
```

```Bash
rm flake.lock
git add .
nix run nixpkgs#home-manager -- switch --flake .#myMac
```

## WSL(Ubuntu)

```Bash
git clone --depth=1 https://github.com/Honekatsu/.dotfiles.git
```

```Bash
rm flake.lock
git add .
nix run nixpkgs\#home-manager -- switch --flake .\#myWSL_x64
```
