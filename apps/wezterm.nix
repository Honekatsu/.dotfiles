{
  pkgs,
   ...
}:

let
  weztermFlake = builtins.getFlake "github:wez/wezterm?dir=nix";
in 
{
  programs.wezterm = {
    package = weztermFlake.packages.${pkgs.system}.default;
    enable = true;
    enableZshIntegration = true;
    extraConfig = builtins.readFile ./wezterm.lua;
  };
}
