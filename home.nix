{
  imports = [
    ./apps/apps.nix
    ./apps/browser.nix
    ./apps/sns.nix
    ./apps/shell.nix
    ./apps/dev.nix
    ./apps/editor.nix
    ./apps/vim.nix
    ./apps/media.nix
    ./apps/wezterm.nix
    ./apps/git.nix
    ./apps/streaming.nix
    ./apps/pc.nix
    ./apps/ssh.nix
  ];
  
  home = rec {
    username = "katsu";
    homeDirectory = "/home/${username}";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
