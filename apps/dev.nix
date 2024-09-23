{pkgs, ...}: {
  home.packages = with pkgs; [
    gcc
    go
    gnumake
    deno
    bun
    nodejs
    zig
    python3
    mise
    wireshark
  ];
}
