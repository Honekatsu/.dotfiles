{pkgs, ...}:
{
  home.file ={
    ".zshrc" = {
      target = ".zshrc";
      source = ./.zshrc;
    };
  };
}
