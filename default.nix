{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/3fe874d773588e2fa6b678e8bb5bb8b127e75e68.tar.gz") { } }:

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

  postFixup = ''
    date +%C
    $out/bin/g-date-time-format-test
  '';
}
