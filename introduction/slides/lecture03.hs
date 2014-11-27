module Main (main) where

import Lecture

subtitle :: String
subtitle = "第3回 vimを学ぶ"

main :: IO ()
main = runLecture [
	[flip writeTitle subtitle], prelude, aboutVim,
	beforePractice,
	basicMove, insertMode, undoCmd, aCmd, oCmd, xCmd, ddCmd, yyCmd, lvCmd,
	moveHeadLast, fCmd, fCmdBack, gCmd, scroll, moveInMonitor, moveToLine,
	searchMove, writeQuit, summary
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
	text t "* たとえば、カーソルの左上下右への移動はそれぞれhjkl", \t -> do
	text t "* それじゃあ普通にアルファベットを入力するときは?", \t -> do
	dvArrowShort t
	itext t 1 "ノーマルモードからインサートモードへ移行する"
	text t "", \t -> do
	text t "* 「モード付きのエディタ」ということ", \t -> do
	arrowIText t 1 "vimを使うときにはモードを意識する必要がある" ]

beforePractice :: Page
beforePractice = [ \t -> do
	writeTopTitle t "練習を始める前に"
	text t "", \t -> do
	text t "* 基本的な機能と便利な機能について練習する", \t -> do
	text t "* もちろん今すべて覚える必要はない", \t -> do
	text t "* 一度触れておくことで何かの際に思い出せるだろう", \t -> do
	text t "* 最後にも触れるが、最低限必要なコマンドは以下の通り", \t -> do
	itext t 1 "- 'h', 'j', 'k', 'l'によるカーソル移動", \t -> do
	itext t 1 "- 'i', 'a'によるインサートモードへの遷移", \t -> do
	itext t 1 "- Escキーによるノーマルモードへの遷移", \t -> do
	itext t 1 "- 'x'による一文字削除", \t -> do
	itext t 1 "- ':wq'による保存終了"
	]

basicMove :: Page
basicMove = [ \t -> do
	writeTopTitle t "カーソル移動"
	text t "", \t -> do
	text t "* HHKBの練習のときに作ったファイルを開こう", \t -> do
	itext t 1 "vim practice.txt", \t -> do
	text t "* カーソルは一番左下にあるはずだ", \t -> do
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
	text t "* これでhjklでカーソル移動ができるようになる", \t -> do
	text t "* vimではこの状態が基本なのでこれをノーマルモードと呼ぶ"
	]

undoCmd :: Page
undoCmd = [ \t -> do
	writeTopTitle t "もとに戻す"
	text t "", \t -> do
	text t "* まちがった編集をしてしまってもとに戻したいときには", \t -> do
	itext t 1 "undo: u", \t -> do
	text t "* 'u'を押せば良い", \t -> do
	text t "* \"Hello, world!\"の'w'にカーソルを合わせよう", \t -> do
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
	writeTopTitle t "一行削除・貼り付け"
	text t "", \t -> do
	text t "* jkで好きな行に移動しよう", \t -> do
	text t "* そこで'd'を2回連続で入力してみる", \t -> do
	arrowIText t 1 "一行削除される", \t -> do
	text t "* またjkで適当な行に移動しよう", \t -> do
	text t "* そこで'p'を押す", \t -> do
	text t "* 移動した行の「下」に削除した行が挿入される", \t -> do
	text t "* ここで一度'u'でもとに戻す", \t -> do
	text t "* 今度は'P'を入力してみよう", \t -> do
	text t "* カーソルのある行の「上」に行が挿入されただろう" ]

yyCmd :: Page
yyCmd = [ \t -> do
	writeTopTitle t "一行コピー"
	text t "", \t -> do
	text t "* jkで好きな行に移動する", \t -> do
	text t "* 'y'を2回連続で入力する", \t -> do
	arrowIText t 1 "何も起きていないように見える", \t -> do
	text t "* 適当な行に移動して、'p'を押してみよう", \t -> do
	text t "* さっきの行がコピーされる" ]

lvCmd :: Page
lvCmd = [ \t -> do
	writeTopTitle t "複数行削除・コピー"
	text t "", \t -> do
	text t "* 適当な行に移動し、大文字の'V'を押してみよう", \t -> do
	text t "* jやkでカーソルを移動してみる", \t -> do
	arrowIText t 1 "選択範囲が白黒反転する", \t -> do
	text t "* 好きな範囲を選択したら'd'を押す", \t -> do
	arrowIText t 1 "選択範囲が削除される", \t -> do
	text t "* 適当な行に移動し'p'を入力するその行の下に挿入される", \t -> do
	text t "* 次に'd'の代わりに'y'にして同じことをしてみよう", \t -> do
	arrowIText t 1 "選択範囲がコピーされるだろう" ]

moveHeadLast :: Page
moveHeadLast = [ \t -> do
	writeTopTitle t "行頭・行末への移動"
	text t "", \t -> do
	text t "* 行頭や行末に移動したい場合はしばしばある", \t -> do
	text t "* hやlで1文字ずつ移動しても良いが"
	itext t 2 "もっと効率的なやりかたがある", \t -> do
	text t "* 適当な行に移動して'0'を入力する", \t -> do
	text t "* 次に'$'を入力する", \t -> do
	text t "* これをくりかえしてみよう", \t -> do
	text t "* カーソルが行頭・行末を行き来するだろう" ]

fCmd :: Page
fCmd = [ \t -> do
	writeTopTitle t "一文字をねらって"
	text t "", \t -> do
	text t "* 今度は行内の好きな文字をねらった移動を見てみよう", \t -> do
	text t "* 'o'コマンドを入力してから、以下の文字列を入力しよう", \t -> do
	itext t 1 "One little, two little, three little Indians", \t -> do
	text t "* '0'コマンドで先頭に移動しておこう", \t -> do
	text t "* ここでカーソルを文字'o'に移動したいとする", \t -> do
	text t "* 'fo'と打ってみよう", \t -> do
	arrowIText t 1 "カーソルが'two'の'o'に移動する", \t -> do
	text t "* 次は'Indians'のふたつめの'n'をねらって移動する", \t -> do
	text t "* 'fn'と打つとまずはひとつめの'n'に移動する", \t -> do
	text t "* もう一度'fn'としても良いがもっと簡単な方法がある", \t -> do
	text t "* ';'を入力してみよう" ]

fCmdBack :: Page
fCmdBack = [ \t -> do
	writeTopTitle t "もどる"
	text t "", \t -> do
	text t "* もう一度'0'を入力して行頭にカーソルを移動させよう", \t -> do
	text t "* 今度は'two little'の3番目のtに移動させたいとする", \t -> do
	text t "* 'ft'を入力し';'を何度か押してみよう", \t -> do
	text t "* わざとねらった't'を通り越すまで';'を入力する", \t -> do
	text t "* そして次に','を入力してみよう", \t -> do
	arrowIText t 1 "ひとつ前の't'にもどる", \t -> do
	text t "* ';'と','を適当に入力してカーソルの移動を楽もう" ]

gCmd :: Page
gCmd = [ \t -> do
	writeTopTitle t "ファイルの先頭・末尾への移動"
	text t "", \t -> do
	text t "* 'g'を2回入力してみよう", \t -> do
	text t "* 今度は大文字'G'を入力してみよう", \t -> do
	text t "* これをくりかえしてみる", \t -> do
	text t "* カーソルがファイルの先頭と末尾を行き来する"
	]

scroll :: Page
scroll = [ \t -> do
	writeTopTitle t "スクロール"
	text t "", \t -> do
	text t "* スクロールの練習をするために長いファイルを作る", \t -> do
	text t "* 大文字'V'を入力しjまたはkを何度か押し複数行を選択する", \t -> do
	text t "* 'y'コマンドでコピーし、'50p'と入力してみよう", \t -> do
	text t "* こうすることで選択範囲が50倍になってコピーされる", \t -> do
	text t "* Ctrl+eを何度か押してみる", \t -> do
	text t "* Ctrl+yを何度か押してみる", \t -> do
	arrowIText t 1 "画面が上下に移動する", \t -> do
	text t "* Ctrl+dを何度か押してみる", \t -> do
	text t "* Ctrl+uを何度か押してみる", \t -> do
	arrowIText t 1 "画面半分を単位として画面が上下に移動する" ]

moveInMonitor :: Page
moveInMonitor = [ \t -> do
	writeTopTitle t "画面内移動"
	text t "", \t -> do
	text t "* ここでHMLと順に打ってみよう", \t -> do
	text t "* カーソルが画面の上中下を移動する" ]

moveToLine :: Page
moveToLine = [ \t -> do
	writeTopTitle t "指定行への移動"
	text t "", \t -> do
	text t "* 行番号で指定した行に移動することができる", \t -> do
	text t "* '50g'と打ってみよう", \t -> do
	text t "* カーソルがファイルの50行目に移動する", \t -> do
	text t "* 次の練習のために文字列を入力しておこう", \t -> do
	text t "* hやlでカーソルを適当に移動して'i'コマンドで以下を入力", \t -> do
	itext t 1 "here you are", \t -> do
	text t "* yyでこの行をコピーする", \t -> do
	text t "* [数]gで好きな行に移動してpで貼り付け", \t -> do
	text t "* 移動と貼り付けを何度かくりかえしておこう", \t -> do
	text t "* ファイルのいろいろな場所に\"here you are\"が挿入された"
	]

searchMove :: Page
searchMove = [ \t -> do
	writeTopTitle t "検索移動"
	text t "", \t -> do
	text t "* とりあえずggでファイルの先頭に移動しておこう", \t -> do
	text t "* ここで'/you'と入力する", \t -> do
	arrowIText t 1 "カーソルが'you'の先頭の'y'に移動する", \t -> do
	text t "* 今度は'n'を入力する", \t -> do
	text t "* 'n'を入力するたびに「次の」youにカーソルが移動する", \t -> do
	text t "* 今度は大文字'N'を入力する", \t -> do
	text t "* 大文字'N'を入力すると「前の」youにカーソルが移動する" ]

writeQuit :: Page
writeQuit = [ \t -> do
	writeTopTitle t "保存終了"
	text t "", \t -> do
	text t "* ':wq'を入力しエンターキーを押すことで保存終了できる" ]

summary :: Page
summary = [ \t -> do
	writeTopTitle t "まとめ"
	text t "", \t -> do
	text t "* よく使う機能についてひととおり練習してみた", \t -> do
	text t "* これ以外にもvimには多くのコマンドが存在する", \t -> do
	text t "* 一度に全部覚える必要はない", \t -> do
	text t "* ひとつコマンドを覚えるたびにひとつ編集効率が上がる", \t -> do
	text t "* はじめは以下のコマンドだけ覚えておけば良いだろう", \t -> do
	itext t 1 "- 'h', 'j', 'k', 'l'によるカーソルの移動", \t -> do
	itext t 1 "- 'i', 'a'によるインサートモードへの遷移", \t -> do
	itext t 1 "- Escキーによるノーマルモードへの遷移", \t -> do
	itext t 1 "- 'x'による一文字削除", \t -> do
	itext t 1 "- ':wq'による保存終了"
	]
