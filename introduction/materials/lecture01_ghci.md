第X回 この講義の意義と目的
==========================

はじめに
--------

この回ではghciに触れてみましょう。

手を動かしてみる
----------------

### バージョンの確認

まずはghcのバージョンの確認をしてみよう。

    % ghc --version
    The Glorius Glasgow Haskell Compilation System, version 7.6.3

### 対話環境を立ち上げと終了

次に対話環境を立ち上げてみよう(ghciの'i'を忘れずに)。

    % ghci
    GHCi, version 7.6.3: http://www.haskell.org/ghc/ :? for help
    Loading package ghc-prim ... linking ... done.
    Loading package integer-gmp ... linking ... done.
    Loading package base ... linking ... done.
    Prelude>

プロンプトが出た。"Prelude"の意味は講義の後のほうで明かされる。

    Prelude>

入力を促(prompt)されている。
しかし、何を入力すればいいのだろうか?
困ったのでとりあえず対話を終了させたい。
ghciから出るには':quit'を入力する。

    Prelude> :quit
    %

出られた。出かたがわかったので安心して再チャレンジしてみよう。

    % ghci
    Prelude>

いつでも出られるのでゆっくり考えられる。

### 数字と文字の入力

とりあえず数字を入れてみよう。何でもいいので適当に入れてみる。

    Prelude> 123
    123
    Prelude>

数字を入れるとそのまま表示される。
対話環境を終了させるまで次々に入力を促(prompt)される。

今度は文字を入れてみよう。

    Prelude> 'c'
    'c'

文字もそのまま出力される。

### HHKBでバックスペースを入力する

今回用意したキーボードは英語配列のHappy Hacking Keyboardである。
熟練すると使いやすくなるキーボードだがすこしクセがある。
独立したバックスペースキーがない。

バックスペースを入力したいときには

    Fn + Delete

とする。

試してみよう。

    Prelude> miss
        (Fn + Deleteを4回入力する)
    Prelude>

バックスペースの代わりに以下のキーも使える。

    Ctrl + h

こちらのほうが打ちやすいかもしれない。

試してみよう。

    Prelude> machigaeta
        (Ctrl + hを10回入力する)
    Prelude>

### 文字列の入力

今度は文字列を入れてみよう。

    Prelude> "Hello, world!"
    "Hello, world!"

対話環境で伝統的な挨拶ができた。
スタンドアロンなプログラムで本物のHello, world!を作るのは、
ずっとあとのほうの、入出力について学んだあとになる。

### 計算

計算をしてみよう。

    Prelude> 123 + 456
    579

引き算とかけ算もしてみよう。

    Prelude> 777 - 358
    419
    Prelude> 13 * 19
    247

「なるほど、Haskellってのは電卓のことか」

というわけで、Haskellが電卓として使えるということがわかった。
ghciにとりあえず触れてみた。

まとめ
------

ghcの対話環境であるghciを紹介した。
