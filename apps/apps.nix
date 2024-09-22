{pkgs, ...}:
{
  home.packages = with pkgs; [
    thunderbird
    keepassxc
    rclone
    remmina
    rustdesk
    #notion-enhancer
    zotero
    libsForQt5.kcalc
  ];

xdg.configFile."rclone/rclone.conf".text = "

";


}
