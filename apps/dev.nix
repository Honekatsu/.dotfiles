{pkgs, ...}: {
  home.packages = with pkgs; [
    gcc
    go
    gnumake
    deno
    bun
    #nodePackages.npm
    nodejs_22
    zig
    python3
    #mise
    wireshark
    python312Packages.ansible-core
  ];
}
