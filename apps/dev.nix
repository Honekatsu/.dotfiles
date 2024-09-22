{pkgs, ...}: {
  home.packages = with pkgs; [
    gcc
    go
    deno
    bun
    zig
    python3
    mise
    wireshark
  ];
}
