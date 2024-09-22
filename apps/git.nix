{pkgs, ...}:
{
  programs.git = {
    enable = true;
    userName = "ReyoKatsu";
    userEmail = "38076269+Honekatsu@users.noreply.github.com";
    #extraConfig = ''
    #  [gpg]
    #    format = ssh
    #  [user]
    #    signingkey = /home/katsu/.ssh/id_ed25519.pub
    #'';
  };

  programs.gh = {
    enable = true;
    extensions = with pkgs; [gh-markdown-preview];
    settings = {
      editor = "vim";
    };
  };
}
