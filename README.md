# scaffold for Cabal based interactive Haskell project with Hadui

> Pro-tips: prepare a separate volume and mount to `/nix`, then:

[Install Nix](https://nixos.org/nix/download.html)

```shell
curl -L https://github.com/complyue/hadui-demo-cabal/archive/master.tar.gz | tar xzf -
mv hadui-demo-cabal-master my-awsome-project
cd my-awsome-project
nix-shell --run hadui-dev
```
