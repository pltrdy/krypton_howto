# Krypton How To Mine
## TL;DR look bat folder https://github.com/pltrdy/krypton_howto/tree/master/bat
## Solo Mining
### Prerequisites
1) Download GKR
* GKR OSX- x64: https://mega.nz/#!2gYVDA6Q!2f9RTwhJmI8oY8r-PgFIuUX297ZztAhZNgWU0sPf9Fk
* GKR WIN- x32: https://mega.nz/#!rhJUxTzD!NiMbOwYQQD6_Dd78x5oq-hZ-9IkjZ9ACMhSR0-zGmgk
* GKR WIN- x64: https://mega.nz/#!LhpSVbRb!HHs0tPJbTp8V0dMgXGMRX96GogAyLHEk2mge4dbKH3c

2) Download an ethereum miner, e.g. ethminer: http://cryptomining-blog.com/tag/ethminer/

### Let's mine
You first need to have `gkr` running (put this code in a `run_gkr.bat` file for convenience):
```
@echo off
color 0A
"gkr.exe" --rpc --maxpeers 100 console 2>kr.log
```

and keep it running! Don't close the window.

Then run the miner:
`ethminer -G -F http://127.0.0.1:8888`

then see the 'ethminer' section below for optimization

## Pool Mining
### Prerequisites
1) Download an ethereum miner, e.g. ethminer: http://cryptomining-blog.com/tag/ethminer/
2) Create an account at http://kr.suprnova.cc which is currently the only KR pool
3) Create a worker (My Account > My Worker) lets call it 'my_worker'

### Let's mine!
`ethminer -G -F http://kr.suprnova.cc:6767/<myusername>.my_worker/50` again, putting it in a .bat is a good idea.


## Ethminer parameters
### Environnement Variables
You may increase your Hashrate by setting different variables before running ethminer, again, you better set it in a .bat which would look like this:

```
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_HEAP_SIZE 100
setx GPU_FORCE_64BIT_PTR 0
```

Not that this depend on your setup, you may want to try various set of parameters.

### OpenCL Ethminer Parameters
If your using ethminer on GPU using OpenCL (~you have AMD), you should try using ethminer command parameters:
` --cl-local-work 256` if this does not work, divide it by two i.e. `--cl-global-work 128; 64 etc...`

Then, make the same for `--cl-global-work 16384, 8192, 4096 etc...`

Your final mining command may be
`ethminer -G -F http://127.0.0.1:8888 --cl-local-work 256 --cl-global-work 16384` for solo mining and


`ethminer -G -F http://kr.suprnova.cc:6767/<username>.my_worker/100 --cl-local-work 256 --cl-global-work 16384` for pool mining
