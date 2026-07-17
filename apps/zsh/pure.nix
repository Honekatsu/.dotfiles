{pkgs, ...}:
{
  home.file ={
    "pure.zsh" = {
      target = ".zsh.d/pure.zsh";
      source = ./.zsh.d/pure.zsh;
    };
  };
}
