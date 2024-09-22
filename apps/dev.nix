{pkgs, ...}: {
  home.packages = with pkgs; [
    gcc
    go
    deno
    bun
    nodejs
    zig
    python3
    mise
    wireshark
  ];
}
