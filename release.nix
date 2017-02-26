let
  release = import ./default.nix {};
in {
  inherit release;
}
