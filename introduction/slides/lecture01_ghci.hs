module Main (main) where

import Lecture
import System.Random
import System.IO.Unsafe
import Control.Monad

subtitle :: String
subtitle = "第X回 ghciに触れる"

main :: IO ()
main = runLecture [
	[flip writeTitle subtitle], prelude,
	lecture2, lecture3, lecture4, lecture4_5, lecture4_7, lecture5, lecture6,
	summary
 ]

prelude :: Page
prelude = [ \t -> do
	writeTopTitle t "はじめに"
	text t "", \t -> do
	text t "* ghciに触れてみよう" ]

lecture2 :: Page
lecture2 = [ \t -> do
	writeTopTitle t "手を動かしてみる"
	text t "", \t -> do
	text t "* ghcに触れてみよう", \t -> do
	text t "* まずはバージョンの確認をしてみよう", \t -> do
	itext t 1 "% ghc --version", \t -> do
	itext t 1 "The Glorious Glasgow Haskell Compilation System,"
	itext t 2 "version 7.6.3", \t -> do
	text t "* 次に対話環境を立ち上げてみよう(ghciの'i'を忘れずに!)", \t -> do
	itext t 1 "% ghci", \t -> do
	itext t 1 "(数行のメッセージ)"
	itext t 1 "Prelude>", \t -> do
	text t "* プロンプトが出た", \t -> do
	itext t 1 "- \"Prelude\"の意味はそのうち明らかになる" ]

lecture3 :: Page
lecture3 = [ \t -> do
	writeTopTitle t "手を動かしてみる"
	text t "", \t -> do
	text t "Prelude>", \t -> do
	itext t 1 "- 入力を促(prompt)されている", \t -> do
	itext t 1 "- しかし、何を入力すればいいのだろうか?", \t -> do
	itext t 1 "- 困ったのでとりあえず対話を終了させたい", \t -> do
	text t "Prelude> :quit", \t -> do
	text t "% ", \t -> do
	itext t 1 "- 出られた", \t -> do
	itext t 1 "- 出られることがわかったので安心してもう一回", \t -> do
	text t "% ghci", \t -> do
	text t "Prelude>", \t -> do
	itext t 1 "- いつでも出られるのでゆっくり考えよう" ]

l4Number :: Int
l4Number = unsafePerformIO $ randomRIO (0, 100)
l4Char :: Char
l4Char = unsafePerformIO $ randomRIO ('a', 'z')

lecture4 :: Page
lecture4 = [ \t -> do
	writeTopTitle t "手を動かしてみる"
	text t "", \t -> do
	text t "Prelude>", \t -> do
	itext t 1 "- とりあえず数字を入れてみよう", \t -> do
	text t $ "Prelude> " ++ show l4Number, \t -> do
	text t $ show l4Number
	text t $ "Prelude> ", \t -> do
	itext t 1 "- 数字を入れるとそのまま表示される", \t -> do
	itext t 1 "- 終了するまで次々に入力を促(prompt)される", \t -> do
	itext t 1 "- 文字を入れてみよう", \t -> do
	text t $ "Prelude> " ++ show l4Char, \t -> do
	text t $ show l4Char ]

lecture4_5 :: Page
lecture4_5 = [ \t -> do
	writeTopTitle t "手を動かしてみる"
	text t "", \t -> do
	text t "* 今回用意したキーボードは", \t -> do
	itext t 1 "英語配列のHappy Hacking Keyboard", \t -> do
	text t "* 熟練すると使いやすくなるキーボードだ", \t -> do
	text t "* すこしクセがある", \t -> do
	text t "* バックスペースを入力したいときには", \t -> do
	itext t 1 "Fn + Delete", \t -> do
	text t "* 試してみよう", \t -> do
	text t "Prelude> miss", \t -> do
	itext t 1 "Fn + Deleteを4回入力する", \t -> do
	text t "Prelude>" ]

lecture4_7 :: Page
lecture4_7 = [ \t -> do
	writeTopTitle t "手を動かしてみる"
	text t "", \t -> do
	text t "* バックスペースの代わりに以下のキーも使える", \t -> do
	itext t 1 "Ctrl + h", \t -> do
	text t "* こちらのほうが打ちやすいかもしれない", \t -> do
	text t "* 試してみよう", \t -> do
	text t "Prelude> machigaeta", \t -> do
	itext t 1 "Ctrl + hを10回入力する", \t -> do
	text t "Prelude>" ]

l5Number1, l5Number2 :: Int
[l5Number1, l5Number2] =
	unsafePerformIO $ replicateM 2 $ randomRIO (0, 100)

lecture5 :: Page
lecture5 = [ \t -> do
	writeTopTitle t "手を動かしてみる"
	text t "", \t -> do
	text t "Prelude>", \t -> do
	itext t 1 "- 文字列を入れてみよう", \t -> do
	text t "Prelude> \"Hello, world!\"", \t -> do
	text t "\"Hello, world!\"", \t -> do
	itext t 1 "- 対話環境で伝統的な挨拶ができた", \t -> do
	itext t 1 "- 計算をしてみよう", \t -> do
	text t $ "Prelude> " ++ show l5Number1 ++ " + " ++ show l5Number2, \t -> do
	text t $ show $ l5Number1 + l5Number2 ]

l6Number1, l6Number2, l6Number3, l6Number4 :: Int
[l6Number1, l6Number2, l6Number3, l6Number4] =
	unsafePerformIO $ replicateM 4 $ randomRIO (0, 100)

lecture6 :: Page
lecture6 = [ \t -> do
	writeTopTitle t "手を動かしてみる"
	text t "", \t -> do
	itext t 1 "- 引き算とかけ算もしてみよう", \t -> do
	text t $ "Prelude> " ++ show l6Number1 ++ " - " ++ show l6Number2, \t -> do
	text t $ show $ l6Number1 - l6Number2, \t -> do
	text t $ "Prelude> " ++ show l6Number3 ++ " * " ++ show l6Number4, \t -> do
	text t $ show $ l6Number3 * l6Number4, \t -> do
	text t ""
	text t "* Haskellは電卓として使えることがわかった", \t -> do
	text t "* 今回はghciにとりあえず触れてみた", \t -> do
	text t "* 次の講義で実質的な内容に触れていこう" ]

summary :: Page
summary = [ \t -> do
	writeTopTitle t "まとめ"
	text t "", \t -> do
	text t "* ghcの対話環境を紹介した" ]
