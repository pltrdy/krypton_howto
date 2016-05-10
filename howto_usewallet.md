# How To Use Wallet?

## Prerequisites
1) Download & extract GKR:
* GKR OSX- x64: https://mega.nz/#!2gYVDA6Q!2f9RTwhJmI8oY8r-PgFIuUX297ZztAhZNgWU0sPf9Fk
* GKR WIN- x32: https://mega.nz/#!rhJUxTzD!NiMbOwYQQD6_Dd78x5oq-hZ-9IkjZ9ACMhSR0-zGmgk
* GKR WIN- x64: https://mega.nz/#!LhpSVbRb!HHs0tPJbTp8V0dMgXGMRX96GogAyLHEk2mge4dbKH3c
* Source: https://bitbucket.org/gkrypto/go-krypton/

2) Download & extract Krypton Wallet GUI
* MAC OSX GUI : https://mega.nz/#!z1RiCBxQ!ICIWnQA3aljq5tzXGt5iy-yzQXVKG_xDAj3tvYwNsXE
* Win QT  GUI : https://mega.nz/#!K4ISBIRA!p5feo6ktrtDqe-o_C-YtbYVL1dycnt6Z967oz3zPbvE
* Source: https://bitbucket.org/gkrypto/krypton-qt

## New wallet
You can create a wallet with:

`gkr account new`

## Using Wallet GUI
First run `gkr.exe`, you can either double click on it or run it from command line.
Then run the GUI `krypton-qt.exe`. I will take some time until it is fully functionnal as you need to get synced with the blockchain, you can see that it is updating by watching the current block number at the bottom left corner.
![alt text](https://ip.bitcointalk.org/?u=http%3A%2F%2Fi.imgur.com%2FJVGccwj.png&t=564&c=y6cW61HSFIZitA "QT Wallet Screenshot")
[qtscreen]: https://ip.bitcointalk.org/?u=http%3A%2F%2Fi.imgur.com%2FJVGccwj.png&t=564&c=y6cW61HSFIZitA
A 'hacky' way to know what is the last (or almost) block in Krypton is to look at Suprnova's last block: https://kr.suprnova.cc/index.php?page=statistics&action=blocks 
Your wallet will be ok when it is synced to that value or a higher value (because suprnovas just list block it found by itself).


## Backup my wallet
An important thing to do as otherwise losing your data will makes your KR lost too.
Under Windows, by default, your keys (what you need to use your wallet), are stored under:

` C:\Users\<your_username>\AppData\Roaming\Krypton\keystore`

Copy all it contains wherever you want, then paste it to another computer's Krypton keystore (same location) and it will be available in the wallet ;) 


