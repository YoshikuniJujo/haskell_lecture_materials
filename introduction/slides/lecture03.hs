module Main (main) where

import Lecture

subtitle :: String
subtitle = "第3回 vimを使う"

main :: IO ()
main = runLecture [
	[flip writeTitle subtitle], prelude, aboutVim,
	basicMove, insertMode, undoCmd, aCmd, oCmd, xCmd, ddCmd
	]

prelude :: Page
prelude = [ \t -> do
	writeTopTitle t "はじめに"
	text t "", \t -> do
	text t "* 指になじむエディタを持とう", \t -> do
	text t "* 今回はvimについて学ぶが", \t -> do
	itext t 1 "- 「エディタ戦争勃発」は困るので"
	itext t 4 "nanoとEmacsも用意しておいた", \t -> do
	text t "* この講義を進めるうえでエディタが使える必要がある", \t -> do
	text t "* 演者はvim使いなのでvimについて教えることにする" ]

aboutVim :: Page
aboutVim = [ \t -> do
	writeTopTitle t "vimの特徴"
	text t "", \t -> do
	text t "* カーソルの移動等の編集作業に普通のキーを使う", \t -> do
	text t "* マウスは使わない", \t -> do
	arrowIText t 1 "いちいちキーボードから手を離す必要がない", \t -> do
	text t "* 例えばカーソルの左上下右への移動はそれぞれhjkl", \t -> do
	text t "* それじゃあ普通にアルファベットを入力するときは?", \t -> do
	dvArrowShort t
	itext t 1 "ノーマルモードからインサートモードへ移行すれば良い"
	text t "", \t -> do
	text t "* 「モード付きのエディタ」ということ", \t -> do
	arrowIText t 1 "vimを使うときには常にモードを意識している" ]

basicMove :: Page
basicMove = [ \t -> do
	writeTopTitle t "カーソル移動"
	text t "", \t -> do
	text t "* HHKBの練習のときに作ったファイルを開こう", \t -> do
	itext t 1 "vim practice.txt", \t -> do
	text t "* カーソルは多分一番左下にあると思う", \t -> do
	text t "* カーソルを左右に動かしてみよう", \t -> do
	itext t 1 "左: h 右: l", \t -> do
	text t "* 何度か'l'を押してカーソルを右端まで持っていこう", \t -> do
	text t "* 今度は'h'を押してカーソルを左橋まで持っていこう", \t -> do
	text t "* 次は上下移動だ", \t -> do
	itext t 1 "下: j 上: k", \t -> do
	text t "* 何度かkを押してカーソルを一番上まで持っていこう", \t -> do
	text t "* 今度はjを押してカーソルを一番下まで持っていこう" ]

insertMode :: Page
insertMode = [ \t -> do
	writeTopTitle t "インサートモード"
	text t "", \t -> do
	text t "* hjklを使ってカーソルを好きな場所に移動させよう", \t -> do
	text t "* 移動させたら'i'を押してみよう", \t -> do
	arrowIText t 1 "これでインサートモードになった", \t -> do
	text t "* 以下のように入力してみよう", \t -> do
	itext t 1 "Hello, world!", \t -> do
	text t "* 入力が終わったらインサートモードから抜けよう", \t -> do
	itext t 1 "Escキーを押す(左手小指をめいっぱい左上にのばす)", \t -> do
	text t "* hjklでカーソル移動ができるようになる", \t -> do
	text t "* vimではこの状態が基本なのでこれをノーマルモードと呼ぶ"
	]

undoCmd :: Page
undoCmd = [ \t -> do
	writeTopTitle t "もとに戻す"
	text t "", \t -> do
	text t "* まちがった編集をしてしまってもとに戻したいときには", \t -> do
	itext t 1 "undo: 'u'", \t -> do
	text t "* 'u'を押せば良い", \t -> do
	text t "* \"Hello, world\"の'w'にカーソルを合わせよう", \t -> do
	text t "* そこで'i'を押し何かを入力しよう", \t -> do
	itext t 1 "例: miss", \t -> do
	text t "* Escキーでノーマルモードにしてから'u'を押してみる", \t -> do
	text t "* もとに戻ったと思う", \t -> do
	text t "* ちょっとしたまちがいならば、すぐに戻すことができる" ]

aCmd :: Page
aCmd = [ \t -> do
	writeTopTitle t "インサートモード再び"
	text t "", \t -> do
	text t "* インサートモードへの移行にはいくつかの方法がある", \t -> do
	text t "* さっきと同じように'w'にカーソルを合わせよう", \t -> do
	text t "* ここで'i'を押し適当な文字を入力してみよう", \t -> do
	itext t 1 "例: ABC", \t -> do
	text t "* 'w'の「前に」文字列が挿入されたはずだ", \t -> do
	text t "* Escキーでノーマルモードに戻り、'u'でもとに戻そう", \t -> do
	text t "* 今度は'a'を押してから適当な文字を入力してみる", \t -> do
	itext t 1 "例: DEF", \t -> do
	text t "* 'w'の「後ろに」文字列が入力されたはずだ", \t -> do
	itext t 1 "'i': カーソルの前に文字列を挿入する", \t -> do
	itext t 1 "'a': カーソルの後ろに文字列を挿入する" ]

oCmd :: Page
oCmd = [ \t -> do
	writeTopTitle t "行を変えて挿入"
	text t "", \t -> do
	text t "* 新たな行を加えたいということはよくある", \t -> do
	text t "* カーソルを適当な行に移動させてから'o'を押してみよう", \t -> do
	text t "* カーソルがあった行の下に新たな行ができた", \t -> do
	text t "* 以下を入力してからEscキーを押そう", \t -> do
	itext t 1 "Hello, wworld!"
	itext t 1 "(wが重なっているのは次の練習のため)", \t -> do
	text t "* 「この下に新しい行を足そう」というときに便利だ" ]

xCmd :: Page
xCmd = [ \t -> do
	writeTopTitle t "一文字削除"
	text t "", \t -> do
	text t "* さて、さっきの入力ではwが2つ入力されていた", \t -> do
	text t "* 'h'キーを使ってカーソルを'w'に合わせよう", \t -> do
	text t "* ここで'x'キーですよ", \t -> do
	text t "* \"wworld\"となっていたのが\"worldに\"修正された", \t -> do
	text t "* 消したい文字があったらhjklでカーソルを合わせ'x'" ]

ddCmd :: Page
ddCmd = [ \t -> do
	writeTopTitle t "一行削除"
	text t "", \t -> do
	text t ""
	]
