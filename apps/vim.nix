{pkgs, ...}:
{
  home.file = {
    ".vimrc" = {
      target = ".vimrc";
      source = ./.vimrc;
    };
  };
}
