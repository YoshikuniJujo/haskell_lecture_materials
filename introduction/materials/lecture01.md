第1回 この講義の意義と目的
==========================

はじめに
--------

受講いただきありがとうございます。
期待に応えられるようがんばりますので
よろしくお願いします。

この講義の目指すもの
--------------------

* Haskellの基本的な考えかたを理解する
* Haskellを書けるようにする
* 「明日からのXXプログラミングが変わる」
    + XXはなじみの言語に置き換えてください
* Haskellという武器を手に入れる
    + 「よし、ここにHaskellを使おう」

XX言語のほうが普及してるけど?
-----------------------------

Haskellには優れた特徴が多くあり、
それらにより以下が望める。

* 開発効率の向上
* 保守作業の効率化

実際に仕事ではHaskellを使わなかったとしても、
Haskellを学ぶことでプログラミングにおける良い習慣が身につく。
また、普及している言語を使える人は数多くいるので、
それ「だけ」に精通したとしても
差別化されないコモディティとなってしまう。

Haskellが使えます
-----------------

Haskellを使えるということは、「優秀な人材である可能性が高い」
「プログラミングが好きで自発的に学んでいる」
「保守可能なプログラムを書ける」と思ってもらえる、可能性がある。

[Tsuru Capital](http://www.tsurucapital.com)という実例がある。
開発者からの
「Haskellを社内の標準言語にすれば、優秀な人材を集められる」と
いうアドバイスを受けて、それを実践した。

僕はコモディティじゃない!
-------------------------

今持っている技術は10年後、20年後にも通用するだろうか?

今持っている技術にHaskellをプラスすることで
「取り換え不可能な人材」になれる。
会社や社会にとって「取り換え不可能」な人材になれば
多少のわがままも言える。
つまり、「自分らしく」生きることができる。

明日の仕事、未来の自分
----------------------

Haskellは明日の仕事に役立つだけじゃない。
未来の自分の武器になる。
Haskellを学ぶということは「考え方」を学ぶということである。
アルゴリズムやロジックといった「考え方」自体は陳腐化しない。

もちろん、それだけじゃない。
何よりも「楽しい」。
Haskellにはたくさんの魅力があるがその一部を挙げるなら、

* 純粋で美しい
* 他の言語との距離がある
    - つまり「違いが楽し」めるということ
* アカデミックな世界とのつながりがある
    - 学問的な側面も楽しむことができる
* もちろん実用性もある

名前の由来
----------

![Haskell.B.Curry](HaskellBCurry.jpg "medium")

Haskell Brooks Curry (1900.9.12 - 1982.9.1) という数学者・論理学者が
名前の由来となっている。
関数型言語の基盤となっている理論であるコンビネータ論理の研究をした人。

歴史
----

1987年には遅延評価する関数型言語が12以上も存在していた。
統合の必要性が議決され、
言語のオープンな標準を作成するための委員会が作られた。

1990年にその努力がHaskell 1.0という言語仕様として結実した。
仕様はさらに1998年にHaskell 98となり、
The Haskell 98 Reportとして発表された。
この報告書では言語仕様だけでなく基本ライブラリも定義された。

2003年にHaskell 98の改定があり、
Haskell 98 Language and Libraries: The Revised Reportが発表され、
2006年にはHaskell'(Haskell Prime)と呼ばれるマイナーなバージョンアップがあった。

2010年にはHaskell 2010が発表され様々な機能が追加された。
他の言語とのバインディングのためのFFI(foreign function interface)や、
モジュールを階層構造で表現すること等が加わった。

処理系
------

「Haskell」というのは言語仕様の名前である。
他の多くの言語との違いのひとつとしてHaskellでは処理系の前に仕様がある。
処理系は数多くある。そのうちのいくつかを以下に挙げる。

* GHC (Glasgow Haskell Compiler)
* Hugs
* Gofer
* iHBC
* Helium
* jhc
* nhc98

現在よく使われているのはGHC。GHCはHaskell 2010に準拠している
が、Haskell 2010にはない拡張機能も含まれている。
これらの言語拡張は明示的に宣言することで使えるようになる。
こういった言語拡張のうち有用なものは次の標準に取り込まれるだろう。

この講義はGHCを使って進めていく。

講義の進めかた
--------------

主に対話的環境を使って講義を進めていく。
式を打ち込むとその式が評価された値が表示される。
入出力について学んだところでコンパイル実行についても見ていく。
GHCはコンパイル実行だけでなくインタプリタ実行にも対応している。

ターミナル
----------

この講義のなかではターミナルを主に利用する。
HaskellのIDE(統合開発環境)もあるようだが、演者は使ったことがない。
ターミナルを使う方法のほうが応用が利くし、
後からIDEを使う方法を学ぶこともできるだろう。

まとめ
------

Haskellの持つ様々な特徴によって、開発効率や保守作業の効率化が期待できる。
他の言語を使う場合でもそれらは応用できる。
Haskellを学ぶことで、脱「コモディティ」を目指そう。
Haskellを学ぶ最大の理由に「楽しさ」がある。

Haskellを学ぶ理由とHaskellの歴史について簡単に述べた。