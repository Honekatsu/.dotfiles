{pkgs, ...}:
{
  home.file ={
    ".zshrc" = {
      target = ".zshrc";
      source = ./.zshrc;
    };
    "default.zsh" = {
      target = ".zsh.d/default.zsh";
      source = ./.zsh.d/default.zsh;
    };
  };
}
