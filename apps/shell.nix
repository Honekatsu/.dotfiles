{pkgs, ...}: {
  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      shellAliases = {
        cat = "bat";
        ls = "eza";
        find = "fd";
        ps = "procs";
        grep = "rg";
      };
    };
    starship = {
      enable = true;
      settings = {
        add_newline = true;
        username = {
          disabled = false;
          show_always = true;
        };
        time = {
          disabled = false;
        };
      };
    };
    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };
  };
  home.packages = with pkgs; [
    bat
    eza
    fd
    procs
    ripgrep
  ];
}
