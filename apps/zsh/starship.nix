{pkgs, ...}:
{
  home.file ={
    "starship.zsh" = {
      target = ".zsh.d/starship.zsh";
      source = ./.zsh.d/starship.zsh;
    };
    "starship.toml" = {
      target = ".config/starship.toml";
      source = ./starship.toml;
    };
  };
}
