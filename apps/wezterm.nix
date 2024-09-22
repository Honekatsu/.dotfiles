{
  inputs,
  pkgs,
   ...
}:
{
  programs.wezterm = {
    package = inputs.wezterm.packages.${pkgs.system}.default;
    enable = true;
    enableZshIntegration = true;
    extraConfig = builtins.readFile ./wezterm.lua;
  };
}
