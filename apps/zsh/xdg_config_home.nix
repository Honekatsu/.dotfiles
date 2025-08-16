{pkgs, ...}:
{
  home.file ={
    "xdg_config_home.zsh" = {
      target = ".zsh.d/xdg_config_home.zsh";
      source = ./.zsh.d/xdg_config_home.zsh;
    };
  };
}
