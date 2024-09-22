{pkgs, ...}: {
  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
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
}
