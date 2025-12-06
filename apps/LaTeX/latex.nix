{pkgs, ...}:
{
  home.file = {
    "~/.latexmk" = {
      target = ".latexmk";
      source = ./.latexmk;
    };
  };
}
