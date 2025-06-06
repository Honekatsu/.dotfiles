{pkgs, ...}:
{
  home.file ={
    ".zshrc" = {
      target = ".zshrc";
      source = ./.zshrc;
    };
    ".starship" = {
      target = ".config/starship.toml";
      source = "./.starship.toml";
    };
  };
}
