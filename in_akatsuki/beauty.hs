import Lecture
import System.Random
import System.IO.Unsafe
import Control.Monad

subtitle :: String
subtitle = "第0回 美しさ"

main :: IO ()
main = runLecture [
	[flip writeTitle subtitle], myself, myself2, myself3, myself4,
	beauty, language,

	prelude, whatsFunction, procedure, procedure2,
	funcedure, funcedure2, funcedure3, funcedure4,
	funcedureProblem, funcedureProblem2, funcedureProblem3,
	funcedureProblem4,
	whatsFunction2, fromProcedure, slime, pureFunction, transparency,
	features1,

	dynamicTyping, dynamicTyping2, dynamicTyping3, dynamicTyping4,
	staticTyping,
	features2,

	functionArray,

	lazyEveluation, myIf, myIf2, myIf3, myIf4, myIf5, myIf6, myIf7,
	lazy, lazyExam
--	, meaning, meaning2, meaning3,
--	meaning4, meaning5,
--	haskell, haskell2, haskell3, haskell4,
--	lecture, attention, lecture2,
--	lecture3, lecture4, lecture4_5, lecture4_7, lecture5, lecture6,
--	summary
 ]

myself :: Page
myself = [ \t -> do
	writeTopTitle t "自己紹介"
	text t "", \t -> do
	text t "* Gentoo GNU/Linux歴: 13年", \t -> do
	text t "* Gentooではすべてのパッケージをソースからビルドできる", \t -> do
	text t "* パッケージ管理システムPortageは非常に優秀", \t -> do
	text t "* インストールはCDブートしたGNU/Linux環境下で", \t -> do
	itext t 3 "コマンドをぽちぽち入力していく", \t -> do
	text t "* カーネルのビルドも自分でする", \t -> do
	text t "* 自分で入れたものしか入っていないという満足感"
	]

myself2 :: Page
myself2 = [ \t -> do
	writeTopTitle t "自己紹介"
	text t "", \t -> do
	text t "* Haskell歴: 12年", \t -> do
	text t "* 出会いは「Rubyソースコード完全解説」", \t -> do
	itext t 0.7 "「HaskellやPL/Iで"
	itext t 1 "書いてあるわけではないので一般人にも読める」", \t -> do
	text t "* Haskellって?", \t -> do
	arrowIText t 1 "「The Craft of Functional Programming」購入", \t -> do
	arrowIText t 1 "「美しさ」の虜になる", \t -> do
	text t "* それ以来Haskellでのコーディングを続ける", \t -> do
	arrowIText t 1 "Hackageへのパッケージの登録数40以上"
	text t "", \t -> do
	text t "https://hackage.haskell.org/user/YoshikuniJujo"
	]

myself3 :: Page
myself3 = [ \t -> do
	writeTopTitle t "自己紹介"
	text t "", \t -> do
	text t "* エディタは?", \t -> do
	text t "* 「Emacs? いいOSですね」", \t -> do
	text t "* 「エディタは13年来Vimを使ってます」", \t -> do
	text t "* vi系の指づかいは「熟練」が生きる", \t -> do
	text t "* Firefoxにはvimperator拡張を入れる", \t -> do
	text t "* マウス嫌い(もちろんタッチパッドも)", \t -> do
	arrowIText t 1 "「マウスは生産性を落とす」", \t -> do
	arrowIText t 1 "ウィンドウマネージャはxmonad", \t -> do
	arrowIText t 1 "マウスに触れるのは1日数回"
	]

myself4 :: Page
myself4 = [ \t -> do
	writeTopTitle t "自己紹介"
	text t "", \t -> do
	text t "* zshいいよ", \t -> do
	text t "* tmuxいいよ", \t -> do
	text t "* rxvt-unicode, TUT-code, HHKB, KVM ...", \t -> do
	text t "* ターミナルは黒字に白", \t -> do
	arrowIText t 1 "ブルーライトとは無縁", \t -> do
	text t "「僕の構築したデスクトップ環境最高!!!」"
	text t "", \t -> do
	arrowIText t 1 "指になじむ環境の構築", \t -> do
	arrowIText t 1 "すべてをカスタマイズ", \t -> do
	arrowIText t 1 "小さなことでもこだわるところにはこだわる", \t -> do
	arrowIText t 1 "「僕」のためだけに進化し続ける環境"
	]

beauty :: Page
beauty = [ \t -> do
	writeTopTitle t "美しさとは"
	text t "", \t -> do
	text t "* 美しいものは効率的である", \t -> do
	text t "* 漢字変換って「美しくない」", \t -> do
	text t "* 何か他の方法はないか?", \t -> do
	text t "* キーの組み合わせで漢字入力", \t -> do
	arrowIText t 1 "「美しい」", \t -> do
	text t "* コンセプト的な美しさがある", \t -> do
	text t "* kdで日、udで本、fnで語", \t -> do
	text t "* 日本語は「kdudfn」で打てる", \t -> do
	text t "* それが漢字直接入力", \t -> do
	text t "* いくつかあるが僕の使っているのはTUT-code", \t -> do
	text t "* 覚えていない漢字はしぶしぶ「漢字変換」"
	]

language :: Page
language = [ \t -> do
	writeTopTitle t "言語は美しくなければならない"
	text t "", \t -> do
	text t "* 実用性は客観的? 美しさは主観的?", \t -> do
	arrowIText t 1 "違います", \t -> do
	text t "* 僕に言わせれば", \t -> do
	itext t 1 "「実用性は主観的、美しさは客観的」", \t -> do
	text t "* ある程度メジャーな言語が実用的かどうかは", \t -> do
	itext t 1 "- それが好きか嫌いかということ", \t -> do
	itext t 1 "- 細かい分野間の違いにもよる", \t -> do
	text t "* 「美しさ」の基準は明確", \t -> do
	itext t 1 "- 統一感があるか", \t -> do
	itext t 1 "- 本質をつかんでいるか", \t -> do
	itext t 1 "- 回りくどくない直接的な表現ができるか"
	]

prelude :: Page
prelude = [ \t -> do
	writeTopTitle t "Haskell万歳"
	text t "", \t -> do
	text t "* Haskell万歳な世界に入る用意はできましたか?", \t -> do
	text t "* 比較対象としてRubyとCを使いますが", \t -> do
	itext t 4 "disるわけではありません", \t -> do
	text t "* 僕がHaskellの次によく知っている言語がRubyとC", \t -> do
	text t "* RubyもCもそれぞれに美しさがある", \t -> do
	text t "* とくにRubyは非常に美しい", \t -> do
	text t "* 今回は当て馬にしますが本当はわりと好きな言語"
	]

whatsFunction :: Page
whatsFunction = [ \t -> do
	writeTopTitle t "手続きと関数"
	text t "", \t -> do
	text t "* 「関数とは何ですか?」", \t -> do
	text t "高校生: 「変数Xと変数Yの関係を表す式です」", \t -> do
	text t "数学者: 「集合のある要素を別の要素に結びつけるものだ」", \t -> do
	text t "プログラマ: 「手続きをまとめたものだ」", \t -> do
	text t "高数生、数学者: 「え?」", \t -> do
	text t "* プログラマだけ「関数」で別のものを指している"
	itext t 2 "", \t -> do
	itext t 2 "__人人人人人人___"
	isemititle t 2 "> なぜ?!!!  <"
	itext t 2 "~~~Y^Y^Y^Y^Y^Y~~~"
	]

procedure :: Page
procedure = [ \t -> do
	writeTopTitle t "手続き"
	text t "", \t -> do
	text t "村外れの老人: ", \t -> do
	itext t 0 "「チューリングという者がおった」", \t -> do
	itext t 0 "「彼はいつも無限の長さのリボンを探していたよ」", \t -> do
	itext t 0 "「リボンに数字を書き込んだりリボンを移動させたり」", \t -> do
	itext t 0 "「そのようなことをいつも夢想していたようじゃった」", \t -> do
	itext t 0 "「ノイマンという男はそのリボンをメモリと呼んでおった」", \t -> do
	text t "(映像とぎれる)"
	]

procedure2 :: Page
procedure2 = [ \t -> do
	writeTopTitle t "手続き"
	text t "", \t -> do
	text t "* 手続きとは", \t -> do
	itext t 1 "値を変化させたり入力したり出力したりすること", \t -> do
	text t "* チューリングマシンからアセンブラまで", \t -> do
	itext t 3 "出てくる式は純粋な手続きである", \t -> do
	itext t 1 "- もどり番地をスタックにセットせよ", \t -> do
	itext t 1 "- アドレスXXに制御を移せ", \t -> do
	itext t 1 "- (アドレスXXの一連の仕事)", \t -> do
	itext t 1 "- スタックで指定された番地にもどれ"
	]

funcedure :: Page
funcedure = [ \t -> do
	writeTopTitle t "関続き"
	text t "", \t -> do
	text t "* C言語ではもどる前にレジスタに値をセットする", \t -> do
	text t "* これを「返り値」と呼ぶ", \t -> do
	text t "* こんな手続きは?", \t -> do
	itext t 1 "- スタックに、もどり番地と数xを積む", \t -> do
	itext t 1 "- 数xを2倍したものをレジスタにセットする", \t -> do
	itext t 1 "- スタックで指定されたもどり番地にもどる", \t -> do
	text t "* 引数がxで返り値が2 * xとなる", \t -> do
	itext t 1 "f(x) = 2 * x", \t -> do
	text t "* 手続きだけど「関数」のようにも見える", \t -> do
	text t "* 関数みたいな手続きなので「関続き」とでも呼ぶ", \t -> do
	arrowIText t 2 "そんな言葉はない!!!"
	]

funcedure2 :: Page
funcedure2 = [ \t -> do
	writeTopTitle t "関続き"
	text t "", \t -> do
	text t "* C言語では返せる値はレジスタにおさまる整数値のみ", \t -> do
	text t "* Rubyでは返り値として何でも指定できる", \t -> do
	arrowIText t 1 "C言語でよりもRubyでのほうが関数らしさアップ", \t -> do
	text t "* 手続きが関数になろうとしている", \t -> do
	text t "* ソートすることを考えてみよう", \t -> do
	text t "* 与えられた配列自体を並べ変える", \t -> do
	arrowIText t 1 "手続きとしてのソート", \t -> do
	text t "* ソートされた新たな配列を返す", \t -> do
	arrowIText t 1 "関数としてのソート"
	]

funcedure3 :: Page
funcedure3 = [ \t -> do
	writeTopTitle t "関続き"
	text t "", \t -> do
	text t "* すべての仕事で値の返しかたに選択肢の2重化がある", \t -> do
	itext t 1 "- 仕事の結果を返り値として返す", \t -> do
	itext t 1 "- 仕事の結果を外部の変数に保存する", \t -> do
	text t "* 値の渡しかたにも選択肢の2重化がある", \t -> do
	itext t 1 "- 値を引数として渡す", \t -> do
	itext t 1 "- 外部の変数として渡す", \t -> do
	arrowIText t 1 "本質的な醜さがある"
	]

funcedure4 :: Page
funcedure4 = [ \t -> do
	writeTopTitle t "純粋な関数"
	text t "", \t -> do
	text t "* Haskellでは", \t -> do
	itext t 1 "- 関数は関数であり", \t -> do
	itext t 1 "- 手続きは手続きである", \t -> do
	itext t 1 "- 2つはきちんと切り分けられている", \t -> do
	arrowIText t 1 "美しい"
	]

funcedureProblem :: Page
funcedureProblem = [ \t -> do
	writeTopTitle t "現実的問題"
	text t "", \t -> do
	text t "* 醜さは現実的に問題となることがある", \t -> do
	text t "* 以下のC言語の式を見てみよう", \t -> do
	itext t 1 "int x = 0;", \t -> do
	itext t 1 "printf(\"%d\\n\", ++x + ++x + ++x);", \t -> do
	text t "* ++xは以下のような仕事をする", \t -> do
	itext t 1 "- 変数xに1足した値を変数xに代入し", \t -> do
	itext t 1 "- 新しい値を返り値として返す", \t -> do
	text t "* これは典型的な「関続き」だ", \t -> do
	text t "* printfで表示される数は何になると思いますか?"
	]

funcedureProblem2 :: Page
funcedureProblem2 = [ \t -> do
	writeTopTitle t "現実的問題"
	text t "", \t -> do
	text t "* 僕がGCC(v4.7.3)でコンパイルした結果はなんと", \t -> do
	itext t 2 "(ここでためる)", \t -> do
	arrowIText t 1 "7", \t -> do
	preLine t
	itext t 2 "(ここで聴衆がどよめく)", \t -> do
	text t "* どよめいてください", \t -> do
	text t "* xははじめ0", \t -> do
	itext t 1 "- はじめの++xでxは1になり1を返す", \t -> do
	itext t 1 "- 次の++xでxは2になり2を返す", \t -> do
	itext t 1 "- さらに次の++xでxは3になり3を返す", \t -> do
	text t "* それぞれの(++x)を足すと答えは6のはずだ"
	]

funcedureProblem3 :: Page
funcedureProblem3 = [ \t -> do
	writeTopTitle t "現実的問題"
	text t "", \t -> do
	text t "* C言語では式のなかでの評価順に決まりはない", \t -> do
	itext t 1 "- はじめの++xと2番目の++xを同時に実行したっていい", \t -> do
	text t "* GCCはまずはじめの2つの(++x)をまとめて計算する", \t -> do
	text t "* すると2 + 2となり4となる、このときxは2", \t -> do
	text t "* 次に3番目の(++x)を計算する、これは3となる", \t -> do
	text t "* よって++x + ++x + ++xは7となる"
	]

funcedureProblem4 :: Page
funcedureProblem4 = [ \t -> do
	writeTopTitle t "現実的問題"
	text t "", \t -> do
	text t "* Rubyでも同じ問題は生じる", \t -> do
	text t "* 評価順によって結果が変化してしまう", \t -> do
	text t "* トリビアルな問題?", \t -> do
	preLine t
	itext t 3.5 "ではない", \t -> do
	text t "* 本質的に違う2つのもの「関数」と「手続き」の混同"
	]

whatsFunction2 :: Page
whatsFunction2 = [ \t -> do
	writeTopTitle t "関数とは"
	text t "", \t -> do
	text t "* 「関数とは何ですか?」", \t -> do
	text t "Haskellプログラマ: 「値を別の値に変換するものだ」", \t -> do
	text t "高校生、数学者: 「そうとも言う」"
	text t "", \t -> do
	text t "* 手続き脳で考えると", \t -> do
	itext t 1 "「Haskellは値の変化を認めないかたくるしい奴だ」", \t -> do
	text t "* 関数脳で考えると", \t -> do
	itext t 1 "「彼らをお許しください、"
	itext t 2 "関数と手続きの違いをわかっていないのです」", \t -> do
	itext t 1 "(「ルカによる福音書第23章34節」より)"
	]

fromProcedure :: Page
fromProcedure = [ \t -> do
	writeTopTitle t "参照透過性"
	text t "", \t -> do
	text t "* 「手続き」側から見るとHaskellの関数は", \t -> do
	arrowIText t 1 "状態が使えない機能制限版の「関数」", \t -> do
	text t "* Haskellをやりすぎて関数脳になると", \t -> do
	arrowIText t 1 "彼らの言うところの「関数」は似非関数だ", \t -> do
	text t "* 歩みよります", \t -> do
	text t "* 手続き側から考えるとHaskellの関数の特徴は", \t -> do
	itext t 1 "- 状態を変化させない", \t -> do
	itext t 1 "- 状態の変化に影響されない", \t -> do
	text t "* 関数の動作を変化させるのは「引数」だけ", \t -> do
	itext t 1 "- 同じ引数なら常に同じ値を返す", \t -> do
	preLine t
	arrowIText t 7 "参照透過性", \t -> do
	text t "関数脳患者:", \t -> do
	preLine t
	itext t 2 "「名前をつけるほどのものでもない」"
	]

slime :: Page
slime = [ \t -> do
	writeTopTitle t "状態変化"
	text t "", \t -> do
	text t "* 関数が状態を変化させることを副作用と呼ぶ", \t -> do
	text t "* 副作用のある、副作用に左右される関数を使っていると", \t -> do
	text t "* 金槌で釘を打とうとした瞬間に", \t -> do
	itext t 1 "- 金槌がのこぎりになったり", \t -> do
	itext t 1 "- 釘が親指になったりする", \t -> do
	text t "* ときには便利だが", \t -> do
	itext t 1 "いざというときに大変なことになる"
	]

pureFunction :: Page
pureFunction = [ \t -> do
	writeTopTitle t "置き換え"
	text t "", \t -> do
	text t "* 関数が副作用を持たないことを「純粋」と呼ぶ", \t -> do
	text t "* 関数が純粋であれば", \t -> do
	itext t 1 "- 関数定義はほぼ「置き換え」と等しくなる", \t -> do
	text t "* 「置き換え」によって同じ処理になることを確認すれば", \t -> do
	itext t 1 "- 2つの処理が同じ処理を行っていることは明らかに", \t -> do
	text t "* 目視によるデバッグがある程度可能となる"
	]

transparency :: Page
transparency = [ \t -> do
	writeTopTitle t "参照透過性"
	text t "", \t -> do
	text t "* 参照透過性について説明した", \t -> do
	text t "* 手続き側から見ると「関数マイナス状態変化」", \t -> do
	text t "* でも本当は関数のもともとの概念にもどしただけ"
	]

features1 :: Page
features1 = [ \t -> do
	writeTopTitle t "Haskellの特徴"
	text t "", \t -> do
	writeNextTitle t "特徴1: 参照透過性"
	]

dynamicTyping :: Page
dynamicTyping = [ \t -> do
	writeTopTitle t "動的型付け"
	text t "", \t -> do
	text t "* Rubyで値の逆数を計算する関数を書いてください", \t -> do
	text t "* こんな感じになるでしょうか", \t -> do
	text t "def recip(x)"
	itext t 1 "1 / x"
	text t "end", \t -> do
	text t "* 数については逆数の意味は明らかだ", \t -> do
	text t "* 文字列では逆数を逆順の文字列と考える", \t -> do
	text t "* 文字列についても正しく動作させたい"
	]

dynamicTyping2 :: Page
dynamicTyping2 = [ \t -> do
	writeTopTitle t "動的型付け"
	text t "", \t -> do
	text t "def recip(x)"
	itext t 1 "case x"
	itext t 2 "when Numeric"
	itext t 3 "1 / x"
	itext t 2 "when String"
	itext t 3 "x.reverse"
	itext t 1 "end"
	text t "end", \t -> do
	text t "* ブール値については逆は", \t -> do
	itext t 1 "- trueに対してfalse", \t -> do
	itext t 1 "- falseに対してtrueで良さそうだ"
	]

dynamicTyping3 :: Page
dynamicTyping3 = [ \t -> do
	writeTopTitle t "動的型付け"
	text t "", \t -> do
	text t "def recip(x)"
	itext t 1 "case x"
	itext t 1 "when Numeric"
	itext t 2 "1 / x"
	itext t 1 "when String"
	itext t 2 "x.reverse"
	itext t 1 "when TrueClass"
	itext t 2 "not x"
	itext t 1 "when FalseClass"
	itext t 2 "not x"
	itext t 1 "end"
	text t "end"
	]

dynamicTyping4 :: Page
dynamicTyping4 = [ \t -> do
	writeTopTitle t "動的型付け"
	text t "", \t -> do
	text t "* Rubyは動的型付けなので新たな型への対応も簡単だ", \t -> do
	text t "* 関数ではなくクラスメソッドとすれば", \t -> do
	itext t 1 "- when節の内容を別ファイルにすることもできる", \t -> do
	text t "* ここで完全なrecip関数を書きたいとする", \t -> do
	text t "* 「失敗」することのないrecip関数は書けるか", \t -> do
	arrowIText t 1 "不可能", \t -> do
	text t "* 引数の型が決まっていない", \t -> do
	arrowIText t 1 "何が与えられるかは予測できない", \t -> do
	text t "* Rubyの関数の持つ「無限の拡張性」は", \t -> do
	itext t 1 "- 絶対失敗しない関数を書くことを不可能にする"
	]

staticTyping :: Page
staticTyping = [ \t -> do
	writeTopTitle t "静的型付け"
	text t "", \t -> do
	text t "* Haskellでは静的型付けを採用している", \t -> do
	text t "* 関数は定義された集合内の値にのみ適用できる", \t -> do
	text t "* たとえば関数notはBool値に適用されBool値を返す", \t -> do
	text t "* Bool値はTrueとFalseの2つの値しか存在しない", \t -> do
	itext t 1 "- 完全に正しい関数であることを保証するには", \t -> do
	arrowIText t 2 "2つの場合のみ考えれば良い", \t -> do
	text t "* 完全に正しいライブラリを用意することができる"
	]

features2 :: Page
features2 = [ \t -> do
	writeTopTitle t "Haskellの特徴"
	text t "", \t -> do
	writeNextTitle t "特徴1: 参照透過性", \t -> do
	writeNextTitle t "特徴2: 静的型付け"
	]

functionArray :: Page
functionArray = [ \t -> do
	writeTopTitle t "関数の配列"
	text t "", \t -> do
	text t "* 引数として数値を取り数値を返す関数の配列を作り", \t -> do
	itext t 1 "- すべての関数を値5に適用した配列を作りたい", \t -> do
	text t ""
	]

lazyEveluation :: Page
lazyEveluation = [ \t -> do
	writeTopTitle t "遅延評価"
	text t "", \t -> do
	text t "* 参照透過性に関連する特徴の説明", \t -> do
	text t "* 参照透過性があるからこそこの特徴が生きる"
	]

myIf :: Page
myIf = [ \t -> do
	writeTopTitle t "myIf問題"
	text t "", \t -> do
	text t "* みなさんif文というものを知っていますか?", \t -> do
	text t "* if文を使ったことのある人は手を挙げてください", \t -> do
	text t "* ほぼ全員ですね", \t -> do
	text t "* Haskellもこのくらい人気があれば良いのですが", \t -> do
	text t "* それではif文と同じ働きをするmyIf関数を書いてください", \t -> do
	text t "* if文を使ってもかまいません", \t -> do
	itext t 1 "(お茶を飲みながら待つ、余裕を見せつけてやれ)", \t -> do
	text t "* さてどうなったでしょう"
	]

myIf2 :: Page
myIf2 = [ \t -> do
	writeTopTitle t "myIf問題", \t -> do
	text t "* Rubyだとこうかな", \t -> do
	itext t 1 "def myIf(b, t, e)"
	itext t 2 "if b then t else e end"
	itext t 1 "end", \t -> do
	text t "* 偶数だったら2で割り奇数だったらそのまま返す関数", \t -> do
	text t "* if文を使うと", \t -> do
	itext t 1 "def div2(n)", \t -> do
	itext t 2 "if n.even? then n / 2 else n"
	itext t 1 "end", \t -> do
	text t "* myIf関数を使うと", \t -> do
	itext t 1 "def myDiv2(n)"
	itext t 2 "myIf(n.even?, n / 2, n)"
	itext t 1 "end"
	]

myIf3 :: Page
myIf3 = [ \t -> do
	writeTopTitle t "myIf問題"
	text t "", \t -> do
	text t "* 試してみる", \t -> do
	itext t 1 "puts div2(12)   => 6", \t -> do
	itext t 1 "puts div2(7)    => 7", \t -> do
	itext t 1 "puts myDiv2(12) => 6", \t -> do
	itext t 1 "puts myDiv2(7)  => 7", \t -> do
	text t "* 無問題(モウマンタイ)だ", \t -> do
	text t "* 6はまだ2で割れるからもう1回割っときたい", \t -> do
	itext t 1 "- div2(6)とすれば良い", \t -> do
	arrowIText t 1 "自動化しよう"
	]

myIf4 :: Page
myIf4 = [ \t -> do
	writeTopTitle t "myIf問題"
	text t "", \t -> do
	text t "* 同じことをくりかえす場合「再帰」が使える", \t -> do
	itext t 1 "- ちなみに「反復」は「再帰」の部分集合", \t -> do
	text t "* 以下のようなdivdiv2を作る", \t -> do
	itext t 1 "def divdiv2(n)"
	itext t 2 "if n.even? then divdiv2(n / 2) else n end"
	itext t 1 "end", \t -> do
	text t "* divdiv2(n)はnを割れるだけ2で割った値を返す", \t -> do
	itext t 1 "- nが偶数のときdivdiv2(n)はdivdiv2(n / 2)に等しい", \t -> do
	itext t 1 "- nが奇数のときdivdiv2(n)はnに等しい", \t -> do
	text t "* この内容がそのままコードになっている", \t -> do
	itext t 1 "puts divdiv2(12) => 3"
	]

myIf5 :: Page
myIf5 = [ \t -> do
	writeTopTitle t "myIf問題"
	text t "", \t -> do
	text t "* 関数divdiv2もmyIfを使って書き直してみよう", \t -> do
	itext t 1 "def myDivdiv2(n)"
	itext t 2 "myIf(n.even?, myDivdiv2(n / 2), n)"
	itext t 1 "end", \t -> do
	text t "* やってることは関数divdiv2と同じこと(のはず)", \t -> do
	text t "* 試してみよう", \t -> do
	itext t 1 "puts myDivdiv2(12)", \t -> do
	itext t 1 "stack level too deep (SystemStackError)", \t -> do
	itext t 1 "「おわあ」", \t -> do
	itext t 1 "「おぎやあ、おぎやあ、おぎやあ」"
	itext t 1 "「おわああ、これを書いた人は病気です」", \t -> do
	itext t 4 "(萩原朔太郎「猫」より)"
	]

myIf6 :: Page
myIf6 = [ \t -> do
	writeTopTitle t "myIf問題"
	text t "", \t -> do
	text t "* myIfの定義をもう一度見てみる", \t -> do
	itext t 1 "def myIf(b, t, e)"
	itext t 2 "if b then t else e end"
	itext t 1 "end", \t -> do
	text t "* デバッグ中に何度もつぶやく祈りのセリフ", \t -> do
	text t "「神様!どう考えてもmyIfに問題があるなんて思えません」", \t -> do
	text t "* ifとmyIfの違いはいくらコードを見ても見つかりはしない", \t -> do
	text t "キバヤシ:"
	itext t 1 "「if文には言語設計者による細工があるってことだ」", \t -> do
	text t "他の4人 :「なっなんだってェーーーーー!!」"
	]

myIf7 :: Page
myIf7 = [ \t -> do
	writeTopTitle t "myIf問題"
	text t "", \t -> do
	text t "* 言語設計者がif文にしていた密かな細工", \t -> do
	text t "* それが「遅延評価」だ", \t -> do
	text t "* if文を関数として考えると3引数関数となる", \t -> do
	text t "* すると以下のような性質があることがわかる", \t -> do
	itext t 1 "- 第2引数は第1引数が真のときのみ必要", \t -> do
	itext t 1 "- 第3引数は第1引数が偽のときのみ必要", \t -> do
	itext t 1 "- 引数は必要とされるまで評価されない", \t -> do
	text t "* if文以外のRubyの関数の引数は常に評価される", \t -> do
	arrowIText t 1 "これを正格評価と呼ぶ"
	]

lazy :: Page
lazy = [ \t -> do
	writeTopTitle t "遅延評価"
	text t "", \t -> do
	text t "* 遅延評価を「正格評価」と対比し「非正格評価」とも呼ぶ", \t -> do
	text t "* Haskellではすべての関数がデフォルトで遅延評価となる", \t -> do
	text t "* つまりmyIf関数が書ける", \t -> do
	text t "* if文は特別なものではなく単なる3引数関数と考えられる", \t -> do
	arrowIText t 1 "統一感がある", \t -> do
	arrowIText t 1 "美しい"
	]

lazyExam :: Page
lazyExam = [ \t -> do
	writeTopTitle t "遅延評価"
	text t "", \t -> do
	text t "* もしも遅延評価ならば以下のような関数が書ける", \t -> do
	text t "def pickOdd(a, b)"
	itext t 1 "if a.even? then b else a end"
	text t "end"
	text t "def div2(n)"
	itext t 1 "pickOdd(n, div2(n))"
	text t "end", \t -> do
	text t "* pickOddはaが偶数ならばbを選びそうでなければaを返す", \t -> do
	text t "* div2は関数pickOddを使った奇数になるまで2で割る関数", \t -> do
	text t "* pickOddは2の倍数かどうかで処理を分ける構文と考えられる", \t -> do
	text t "* 遅延評価によって単なる関数としてこのような処理が書ける"
	]
