{pkgs, ...}:
{
  home.file = {
    ".latexmkrc" = {
      target = ".latexmkrc";
      source = ./latexmkrc;
    };
  };
}
