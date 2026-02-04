{pkgs, ...}:
{
  home.file ={
    "cli_tools.zsh" = {
      target = ".zsh.d/cli_tools.zsh";
      source = ./.zsh.d/cli_tools.zsh;
    };
    "config.yml" = {
      target = ".config/lazygit/config.yml";
      source = ./lazygit_config.yml;
    };
  };
  home.packages = with pkgs; [
    bun
    eza
    fzf
    gh
    lazygit
    yazi
    zoxide
  ];
}
