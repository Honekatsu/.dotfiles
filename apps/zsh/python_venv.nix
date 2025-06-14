{pkgs, ...}:
{
  home.file ={
    "python.zsh" = {
      target = ".zsh.d/python_venv.zsh";
      source = ./.zsh.d/python_venv.zsh;
    };
  };
}
