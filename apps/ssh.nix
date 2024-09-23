{pkgs, ...}:
{
  home.file = {
    "~/.ssh/config" = {
      target = ".ssh/config";
      source = ./ssh_config;
    };
  };
}
