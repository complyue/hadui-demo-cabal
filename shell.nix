# this defines the Nix env to run this interactive Haskell project
with (import (
# to use a version of Hadui from github
  builtins.fetchTarball {
    url = "https://github.com/complyue/hadui/archive/0.1.0.2.tar.gz";
    sha256 = "0lz2i7ycaj7pj82bjjkm5cchq3ds23v9i2pkc3hzq16p7hvb67lz";
  }

  # to use the version of Hadui checked out locally
  #../hadui
) { });
haskellPackages.shellFor {
  packages = p: [ p.hadui ];
  nativeBuildInputs = [ pkgs.cabal-install pkgs.hadui ];
}
