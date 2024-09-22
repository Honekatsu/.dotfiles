{pkgs, ...}:
{
  home.packages = [pkgs.vscode];
  home.file = {
    ".vimrc" = {
      target = ".vimrc";
      source = ./.vimrc;
    };
  };
}
