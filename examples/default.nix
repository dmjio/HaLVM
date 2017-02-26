{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "halvm-examples";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base ];
  homepage = "https://galois.com/project/halvm/";
  description = "HaLVM examples";
  license = stdenv.lib.licenses.bsd3;
}
