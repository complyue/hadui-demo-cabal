# this defines the Nix env to run this interactive Haskell project
with (import (
# to use a version of Hadui from github
  builtins.fetchTarball {
    url = "https://github.com/complyue/hadui/archive/0.1.0.rc3.tar.gz";
    sha256 = "1d5jvgm584ciz4d89kvmlcg02sbc0567jqraqn3vqgrjipx006s9";
  }

  # to use the version of Hadui checked out locally
  #../hadui
) { });
haskellPackages.shellFor {
  packages = p: [ p.zlib ];
  nativeBuildInputs = [ pkgs.cabal-install pkgs.hadui ];
}
