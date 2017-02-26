{ pkgs ? import <nixpkgs> { } }:
let
  inherit (pkgs) lib;
  halvm = pkgs.haskell.packages.integer-simple.ghcHaLVM240.override {
    overrides = self: super: {
      examples = self.callPackage ./examples {};
    };
  };
in with halvm; pkgs.runCommand "halvm-ci" { inherit examples ghc; } ''
    mkdir -p $out/nix-support
    echo file hello ${examples}/hello > $out/nix-support/hydra-build-products
    echo file HaLVM ${ghc}/HaLVM >> $out/nix-support/hydra-build-products
  ''

