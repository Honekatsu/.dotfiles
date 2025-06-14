{pkgs, ...}:
{
  home.file ={
    "cli_tools.zsh" = {
      target = ".zsh.d/cli_tools.zsh";
      source = ./.zsh.d/cli_tools.zsh;
    };
  };
}