{pkgs, ...}:
{
  home.file ={
    "cli_tools.zsh" = {
      target = ".zsh.d/cli_tools.zsh";
      source = ./.zsh.d/cli_tools.zsh;
    };
  };
  home.packages = with pkgs; [
    eza
    fzf
    gh
    lazygit
    yazi
    zoxide
  ];
}