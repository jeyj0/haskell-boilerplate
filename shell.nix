{ nixpkgs ? import <nixpkgs> {} }:
let
  pinnedPkgs =
    nixpkgs.pkgs.fetchFromGitHub {
      owner = "NixOS";
      repo = "nixpkgs-channels";

      # change this to update ghc and all other dependencies (also see below for language-server)
      rev = "a31736120c5de6e632f5a0ba1ed34e53fc1c1b00";
      sha256 = "0xfjizw6w84w1fj47hxzw2vwgjlszzmsjb8k8cgqhb379vmkxjfl";
    };

  project = import ./release.nix;

  pinned = import pinnedPkgs {
    config = nixpkgs.config;
  };
in
pinnedPkgs.stdenv.mkDerivation {
  name = "shell";
  buildInputs = project.env.nativeBuildInputs ++ [
    pinned.haskellPackages.cabal-install

    pinned.haskellPackages.ghcid
    # make sure the ghc version referenced here is the same as installed above
    pinned.haskell.packages.ghc884.haskell-language-server

    pinned.haskellPackages.hlint

    pinned.entr
  ];
}
