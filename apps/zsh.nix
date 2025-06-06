{pkgs, ...}:
{
  home.file ={
    ".zshrc" = {
      target = ".zshrc";
      source = ./.zshrc;
    };
    "starship.toml" = {
      target = ".config/starship.toml";
      source = ./starship.toml;
    };
  };
}
