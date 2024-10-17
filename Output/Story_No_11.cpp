#include "../common.h"
void ZHUXIAN040404(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("これがあなたの「実験」？"));
replaceString(L, 2, Str("say"), Str("ええ、アズールレーンとレッドアクシズを戦わせて、「進化」を促すの"));
replaceString(L, 3, Str("say"), Str("しかし、いささか効率が悪すぎない？量産艦の偽装ならまだしも、「駒」まで動員するとは…"));
replaceString(L, 4, Str("say"), Str("「駒」も同じよ。例えアズールレーンとレッドアクシズがいなくても、彼女たちの戦いも、進化が続くわ"));
replaceString(L, 5, Str("say"), Str("「楔」は「フネ」だけではないの。一つの事件、一つの戦場、その全てが歴史への「楔」となり、「未来」を変えるチャンスになるわ"));
replaceString(L, 6, Str("say"), Str("そしてその「楔（ノード）」に「接続（アクセス）」するものこそがこの戦い――"));
replaceString(L, 7, Str("say"), Str("ええ、そうよ。この子たちは未来を救うための存在だわ"));
replaceString(L, 8, Str("say"), Str("過去の戦いを再現し、介入し、己の力を上げ、そしていつか「覚醒」するまで、戦い、傷つけ合う……"));
replaceString(L, 9, Str("say"), Str("――沈むまで、ね"));
replaceString(L, 10, Str("say"), Str("ふふ…その「リュウコツ」、いつまで折れずにいられるかしら…"));
lua_pop(L, 1);
}
void ZHUXIAN040103(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("………………"));
replaceString(L, 2, Str("say"), Str("一言も発することなく突っ込んできて、そして撃破した途端消えた…か"));
replaceString(L, 3, Str("say"), Str("うわぁ、サラトガちゃんから見ても不気味過ぎるね"));
replaceString(L, 4, Str("say"), Str("サラトガ、ノースカロライナ、援護ありがと！"));
replaceString(L, 5, Str("say"), Str("ううん、元々夜間戦闘は空母よりこっちのほうがやりやすいですから"));
replaceString(L, 6, Str("say"), Str("……にしても、いくら敵対状態のレッドアクシズとはいえ、同じ艦船であんな戦い方は…"));
replaceString(L, 7, Str("say"), Str("わかる。私たちの知ってる重桜とはまるで別人みたいな戦い方だったね"));
replaceString(L, 8, Str("say"), Str("…………"));
replaceString(L, 9, Str("say"), Str("どうしたのエンタープライズ？考え込んで"));
replaceString(L, 10, Str("say"), Str("アストリアは確かこう言ってたな…「この航路にはセイレーンが出没していた」と"));
replaceString(L, 11, Str("say"), Str("それってつまり…今の重桜の子たちはセイレーンが化けてたってこと？"));
replaceString(L, 12, Str("say"), Str("決めつけるのは早計だが、あくまで可能性の話だ。そうでなければアストリアたちの証言と合わない"));
replaceString(L, 13, Str("say"), Str("「青葉」を始めとする重桜艦隊と遭遇したってことね"));
replaceString(L, 14, Str("say"), Str("たしかあちらでは向こうが名乗っていたのに、こっちの「アオバ」が名乗らないのはおかしいってわけね"));
replaceString(L, 15, Str("say"), Str("敵相手に名乗るのは重桜が好きなやり方ですね"));
replaceString(L, 16, Str("say"), Str("赤城や加賀、飛龍もみーんな名乗ってたしね"));
replaceString(L, 17, Str("say"), Str("…自分を奮い立たせるならともかく、わざわざ相手に名乗り出る必要性は感じないがな"));
replaceString(L, 18, Str("say"), Str("夜戦だとこちらも動きにくくなる。慎重に進もう"));
lua_pop(L, 1);
}
void ZHUXIAN040202(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("まずいわねこれ…敵の援軍がどんどん出てくるし"));
replaceString(L, 2, Str("say"), Str("アストリア姉さん！損傷がもう…！"));
replaceString(L, 3, Str("say"), Str("大丈夫よ！こっちも重傷だけど、なんとか重桜艦隊を凌いだから…"));
replaceString(L, 4, Str("say"), Str("…っ。向こうは反転しなかったね…"));
replaceString(L, 5, Str("say"), Str("多分エンタープライズさんたちを警戒していたのかもしれませんね…"));
replaceString(L, 6, Str("say"), Str("夜戦では向こうが強いですけど、航空攻撃に対応できる構成ではなかったようですし"));
replaceString(L, 7, Str("say"), Str("見逃してもらったのはありがたいけど…あいててて、このままでは…"));
replaceString(L, 8, Str("say"), Str("アストリア姉さん、危ない！"));
replaceString(L, 9, Str("say"), Str("魚雷回避！"));
replaceString(L, 10, Str("say"), Str("わわ！？どこから！？"));
replaceString(L, 11, Str("say"), Str("……ふ、古鷹？！"));
replaceString(L, 12, Str("say"), Str("…………"));
replaceString(L, 13, Str("say"), Str("もう全回復してるの？！レッドアクシズのセイレーン技術ってこんなにやばいの？！"));
replaceString(L, 14, Str("say"), Str("そんなことないはずです…そもそも古鷹たちはついさっき去ったばかりじゃありませんか？"));
replaceString(L, 15, Str("say"), Str("それに様子が違う…生きてる気がしない…"));
replaceString(L, 16, Str("say"), Str("うぅ…もうヤケだ！エンタープライズさんたちが来るまでなんとか凌ぎ切るよ！"));
replaceString(L, 17, Str("say"), Str("うん！"));
lua_pop(L, 1);
}
void ACTRUYUE07(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("111111111111\n\n<size=45>一　1111111111</size>"));
lua_settable(L, -3);
lua_pop(L,3);
lua_pop(L, 1);
}
void WNNG09(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在普通海域中可以使用潜艇支援了！"));
lua_pop(L, 1);
}
void ZHUXIAN040102(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("……なんだって？！"));
replaceString(L, 2, Str("say"), Str("ホーネット、どうした？"));
replaceString(L, 3, Str("say"), Str("アストリアとシカゴたちの連絡が途絶えた！重巡洋艦「青葉」を始めとした重桜艦隊と思わしき敵艦と遭遇したって！"));
replaceString(L, 4, Str("say"), Str("やっぱりレッドアクシズか…くっ、夜戦となれば連中に有利だ…"));
replaceString(L, 5, Str("say"), Str("どうする？ノースカロライナを呼んで加勢してもらったら…"));
replaceString(L, 6, Str("say"), Str("それも考えている、ただ、重桜の夜戦艦隊ともなれば乱戦も考えられる。空母の力を活かせないどころか味方を巻き込んで攻撃してしまう危険が…"));
replaceString(L, 7, Str("say"), Str("…………っ"));
replaceString(L, 8, Str("say"), Str("待て。前方から誰かやって来るぞ"));
replaceString(L, 9, Str("say"), Str("え、えっ！？"));
replaceString(L, 10, Str("say"), Str("あれは――――？！"));
replaceString(L, 11, Str("say"), Str("………………"));
replaceString(L, 12, Str("say"), Str("ウソ…青葉……？！"));
replaceString(L, 13, Str("say"), Str("もしくは古鷹級の誰かだ。識別信号が間違っていなければな。重桜の戦力…想像以上だ"));
replaceString(L, 14, Str("say"), Str("応答せよ。重桜艦。これ以上接近したら――"));
replaceString(L, 15, Str("say"), Str("………………"));
replaceString(L, 16, Str("say"), Str("無言で突っ込んでくる…だと？！"));
replaceString(L, 17, Str("say"), Str("とにかく応戦よ！エンプラ姉！"));
lua_pop(L, 1);
}
