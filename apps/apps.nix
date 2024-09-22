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
  ];

xdg.configFile."rclone/rclone.conf".text = "

";


}
