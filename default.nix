{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/a1678414b8a2124097b2e57a4296021224c44bf6.tar.gz") { } }:

pkgs.stdenv.mkDerivation rec {
  name = "g-date-time-format-test";

  src = ./.;

  nativeBuildInputs = with pkgs; [
    meson
    ninja
    pkg-config
  ];

  buildInputs = with pkgs; [
    glib
  ];
}
