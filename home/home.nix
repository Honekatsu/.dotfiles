{
  imports = [
    ../apps/apps.nix
    ../apps/browser.nix
    ../apps/dev.nix
    ../apps/direnv.nix
    ../apps/editor.nix
    ../apps/git.nix
    ../apps/LaTeX/latex.nix
    ../apps/media.nix
    ../apps/neovim/neovim.nix
    ../apps/network.nix
    ../apps/pc.nix
    ../apps/shell.nix
    ../apps/sns.nix
    ../apps/ssh.nix
    ../apps/streaming.nix
    ../apps/vim.nix
    ../apps/wezterm.nix
    
    # Zsh configurations
    ../apps/zsh/zsh.nix
    ../apps/zsh/starship.nix
    ../apps/zsh/cli_tools.nix
    #../apps/zsh/xdg_config_home.nix
  ];
  
  home = rec {
    username = "katsu";
    homeDirectory = "/home/${username}";
    stateVersion = "25.11";
  };

  programs.home-manager.enable = true;
}
