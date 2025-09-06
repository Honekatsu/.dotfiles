{pkgs, ...}:
{
  home.file ={
    "neovim.zsh" = {
      target = ".zsh.d/neovim.zsh";
      source = ../zsh/.zsh.d/neovim.zsh;
    };
  };
  home.packages = with pkgs; [
    luarocks
  ];
}
