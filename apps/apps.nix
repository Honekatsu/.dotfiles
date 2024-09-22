{pkgs, ...}:
{
  home.packages = with pkgs; [
    thunderbird
    keepassxc
    rclone
    rustdesk
    notion
    zotero
  ];

xdg.configFile."rclone/rclone.conf".text = "

";


}
