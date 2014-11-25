module Main (main) where

import Lecture

subtitle :: String
subtitle = "第1回 この講義の意義と目的"

main :: IO ()
main = runLecture [
	[flip writeTitle subtitle], prelude, meaning, meaning2, meaning3,
	meaning4, meaning5,
	haskell, haskell2, haskell3, haskell4,
	lecture, attention, summary ]

prelude :: Page
prelude = [\t -> do
	writeTopTitle t "はじめに"
	text t "", \t -> do
	text t "* 受講いただきありがとうございます", \t -> do
	text t "* 期待に応えられるようがんばりますので"
	itext t 5 "よろしくお願いします" ]

meaning :: Page
meaning = [\t -> do
	writeTopTitle t "この講義の目指すもの"
	text t "", \t -> do
	text t "* Haskellの基本的な考えかたを理解する", \t -> do
	text t "* Haskellを書けるようにする", \t -> do
	dvArrowShort t
	text t "* 「明日からのXXプログラミングが変わる」", \t -> do
	itext t 1 "XXには各自なじみの言語名を入れてください", \t -> do
	text t "* Haskellという武器を手に入れる", \t -> do
	arrowIText t 1 "「よし、ここにはHaskellを使おう」" ]

meaning2 :: Page
meaning2 = [\t -> do
	writeTopTitle t "XX言語のほうが普及してるけど?"
	text t "", \t -> do
	text t "* Haskellには優れた特徴が多くある", \t -> do
	text t "* それらの特徴により以下が望める", \t -> do
	itext t 1 "- 開発効率の向上", \t -> do
	itext t 1 "- 保守作業の効率化", \t -> do
	text t "* Haskellを使わなくても", \t -> do
	itext t 1 "- プログラミングにおける良い習慣が身につく", \t -> do
	text t "* 普及している言語を使える人は数多くいる", \t -> do
	text t "* それ「だけ」に精通したとしても", \t -> do
	arrowIText t 1 "コモディティ化してしまう恐れがある" ]

meaning3 :: Page
meaning3 = [\t -> do
	writeTopTitle t "Haskellが使えます"
	text t "", \t -> do
	text t "* Haskellを使えるということは", \t -> do
	itext t 1 "- 優秀な人材である可能性が高い", \t -> do
	itext t 1 "- プログラミングが好きで自発的に学んでいる", \t -> do
	itext t 1 "- 保守可能なプログラムを書ける", \t -> do
	itext t 2 "と思われる、かもしれない", \t -> do
	text t "* Tsuru Capital(www.tsurucapital.com)という実例", \t -> do
	itext t 0.6 "「Haskellを社内の標準言語にすれば、"
	itext t 3 "優秀な人材を集められる」" ]

meaning4 :: Page
meaning4 = [\t -> do
	writeTopTitle t "僕はコモディティじゃない!"
	text t "", \t -> do
	text t "* 今持っている技術は10年後、20年後にも通用するだろうか?", \t -> do
	text t "* 今持っている技術にHaskellをプラスすることで"
	itext t 3 "「取り換え不可能な人材」になれる", \t -> do
	text t "* 会社や社会にとって「取り換え不可能」な人材になれば", \t -> do
	itext t 1 "- 多少のわがままも言える", \t -> do
	itext t 1 "- 「自分らしく」生きることができる" ]

meaning5 :: Page
meaning5 = [\t -> do
	writeTopTitle t "明日の仕事、未来の自分", \t -> do
	text t "* 明日の仕事に役立つ", \t -> do
	text t "* 未来の自分の武器になる", \t -> do
	text t "* Haskellを学ぶということは", \t -> do
	itext t 1 "- 「考え方」を学ぶということ", \t -> do
	itext t 1 "- アルゴリズムやロジックは陳腐化しない", \t -> do
	text t "* それだけじゃない!", \t -> do
	text t "* 何よりも「楽しい」", \t -> do
	text t "* Haskellの魅力", \t -> do
	itext t 1 "- 純粋で美しい", \t -> do
	itext t 1 "- 他の言語との距離", \t -> do
	itext t 1 "- アカデミックな世界とのつながり", \t -> do
	itext t 1 "- 実用性" ]

haskell :: Page
haskell = [\t -> do
	writeTopTitle t "名前の由来"
	text t "", \t -> do
	writeImageRight t haskellBCurry, \t -> do
	text t "* Haskell Brooks Curry"
	itext t 1 "(1900.9.12 - 1982.9.1)", \t -> do
	text t "* コンビネータ論理の研究をした"
	itext t 3 "数学者・論理学者", \t -> do
	text t "* コンビネータ論理は関数型言語の"
	itext t 3 "基盤となっている" ]

haskell2 :: Page
haskell2 = [\t -> do
	writeTopTitle t "歴史"
	text t "", \t -> do
	text t "* 1987年 遅延関数型言語の統合の必要性が議決された", \t -> do
	itext t 1 "- 遅延評価する純粋関数型言語の乱立", \t -> do
	itext t 1 "- 当時12以上存在していた", \t -> do
	itext t 1 "- オープンな標準を作成するための委員会の発足", \t -> do
	text t "* 1990年 Haskell 1.0", \t -> do
	itext t 1 "- 言語仕様が策定された", \t -> do
	text t "* 1998年 Haskell 98", \t -> do
	itext t 1 "- 言語仕様と基本ライブラリの定義", \t -> do
	itext t 1 "- The Haskell 98 Reportとして発表" ]

haskell3 :: Page
haskell3 = [\t -> do
	writeTopTitle t "歴史"
	text t "", \t -> do
	text t "* 2003年 Haskell 98 の改定", \t -> do
	itext t 1 "- Haskell 98 Language and Libraries:"
	itext t 5 "The Revised Report", \t -> do
	text t "* 2006年 Haskell' (Haskell Prime)", \t -> do
	itext t 1 "- Haskell 98のマイナーバージョンアップ", \t -> do
	text t "* 2010年 Haskell 2010", \t -> do
	itext t 1 "- 他の言語とのバインディング(FFI)", \t -> do
	itext t 1 "- モジュールの階層構造", \t -> do
	itext t 1 "- 等々が取り入れられた" ]

haskell4 :: Page
haskell4 = [\t -> do
	writeTopTitle t "処理系"
	text t "", \t -> do
	text t "* 「Haskell」とは仕様の名前", \t -> do
	itext t 1 "- 多くの言語とは異なり処理系の前に仕様がある", \t -> do
	text t "* 処理系には以下のものがある", \t -> do
	itext t 1 "GHC, Hugs, Gofer, iHBC, Helium, jhc, nhc98", \t -> do
	text t "* GHCとはGlasgow Haskell Compilerの略", \t -> do
	text t "* 現在よく使われているのはGHC", \t -> do
	text t "* GHCにはHaskell 2010にない拡張機能が含まれる", \t -> do
	itext t 1 "- 明示的に宣言することで使えるようになる", \t -> do
	itext t 1 "- 十分に吟味されたものは標準に取り込まれるかも", \t -> do
	text t "* この講義はGHCを使って進めていく" ]

lecture :: Page
lecture = [\t -> do
	writeTopTitle t "講義の進めかた"
	text t "", \t -> do
	text t "* 主に対話的環境を使う", \t -> do
	text t "* 式を打ち込んでその結果を得る", \t -> do
	text t "* 入出力を学んだらコンパイル実行について見る", \t -> do
	text t "* GHCはコンパイルせずにインタプリタとしても使える" ]

attention :: Page
attention = [\t -> do
	writeTopTitle t "ターミナル"
	text t "", \t -> do
	text t "* この講義のなかではターミナルを主に利用する", \t -> do
	itext t 1 "- ターミナルからエディタを呼び出す", \t -> do
	itext t 1 "- ターミナルからghcの対話環境を呼び出す", \t -> do
	text t "* HaskellのIDEもあるようだが", \t -> do
	itext t 1 "- 演者が使ったことがない", \t -> do
	itext t 1 "- ターミナルを使う方法のほうが応用が利く", \t -> do
	itext t 1 "- 後からIDEを使う方法を学ぶこともできる" ]

summary :: Page
summary = [\t -> do
	writeTopTitle t "まとめ"
	text t "", \t -> do
	text t "* Haskellの持つ様々な特徴によって", \t -> do
	itext t 1 "- 開発や保守作業の効率化が期待できる", \t -> do
	itext t 1 "- 他の言語を使う場合でも役に立つ", \t -> do
	text t "* Haskellを使えれば脱「コモディティ」が望める", \t -> do
	text t "* Haskellを学ぶのは楽しい", \t -> do
	text t "* Haskellの歴史について簡単に触れた", \t -> do
	text t "* 講義の進め方について簡単に触れた" ]
