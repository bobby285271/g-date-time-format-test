{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/ccde02e9ff2c5789246c40987443954225d46bc1.tar.gz") { } }:

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
