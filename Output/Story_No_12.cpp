#include "../common.h"
void TACT10006(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("鳥海は燃料不足と損傷で追撃が困難…潜水艦の子たちも似た状況…困ったわね。"));
replaceString(L, 2, Str("say"), Str("だから拙者が最初から…"));
replaceString(L, 3, Str("say"), Str("同じよ高雄ちゃん、私たちの速力じゃ総出したところで大した戦果を得られないわ。"));
replaceString(L, 4, Str("say"), Str("それはわかっておる！だけど！"));
replaceString(L, 5, Str("say"), Str("はいはい、納得出来ないのはわかってるけど、今回は基地航空隊に任せましょ？「決戦」になったら思う存分暴れるがいいわ。"));
replaceString(L, 6, Str("say"), Str("……もう良い！お前にはいつも言い負かされっぱなしだ…"));
lua_pop(L, 1);
}
void TACT10007(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("くっ！…ここまで来てまだ空襲が…！こっちの情報に何か間違いでもあるというのか？"));
replaceString(L, 2, Str("say"), Str("ウェールズ、どうする？これ以上は持ちこたえられないわ！"));
replaceString(L, 3, Str("say"), Str("こんなハエどもにやられるとは…私の慢心ゆえか…それとも大艦巨砲の時代はもう終わりだというのか？"));
replaceString(L, 4, Str("say"), Str("レパルス、ヴァンパイア、エレクトラ、エクスプレス、すまない、私の慢心に付き合わせてしまって…"));
replaceString(L, 5, Str("say"), Str("気にしないでいいの。あんたは十分頑張ったから。"));
replaceString(L, 6, Str("say"), Str("……そんな辛気臭い話はやめやめ！まだチャンスはあるわ！"));
replaceString(L, 7, Str("say"), Str("…そうだな。みな踏ん張れ！買った喧嘩は最後までやり抜くのよ！"));
lua_pop(L, 1);
}
void TACT10008(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("ごめん、ウェールズ、私……先に行くね……"));
replaceString(L, 2, Str("say"), Str("レパルス！くっ、お前が先に逝ったらフッドとレナウンにどんな顔をすれば良いんだ！……ヴァンパイア！ここは私が引き受ける！レパルスのことを頼んだ！"));
replaceString(L, 3, Str("say"), Str("……わかったわ。ウェールズ……ご武運を。"));
replaceString(L, 4, Str("say"), Str("いい勉強代になったな…フッド、どうやらこれは完全に私の慢心のようだ。"));
replaceString(L, 5, Str("say"), Str("時代が変わったというのか……？ふふ、面白い…！"));
replaceString(L, 6, Str("say"), Str("重桜よ、今日は私たちが敗北した。よくやってくれた。お前たちを見くびったことを謝ろう。"));
replaceString(L, 7, Str("say"), Str("だがこれは我がロイヤルの敗北にあらず！私とレパルスが倒れようが、我が栄光はいつか必ずお前たちにさばきを下す！それまでに、私の慢心を笑うのを許してやろう！"));
replaceString(L, 8, Str("say"), Str("……女王陛下にーー栄光あれ！！"));
lua_pop(L, 1);
}
void TACT10009(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("高雄ちゃん、だから言ったじゃない？ロイヤルの重装甲でも攻撃機の魚雷の前ではこうも脆いわ。悔しいぐらいに…うふふ"));
replaceString(L, 2, Str("say"), Str("認めたくないが……我々水上艦を上回る戦果だ。拙者は確かに基地航空隊の力を侮った。"));
replaceString(L, 3, Str("say"), Str("まあ安心して、この子たちは役に立ったけど、上の方々が「決戦」にこだわる限り、私たちは御役御免にならないわ。"));
replaceString(L, 4, Str("say"), Str("そうだな。ではこの刀が鞘から抜かれる時まで英気を養うとしよう。"));
replaceString(L, 5, Str("say"), Str("……うふふ、航空戦隊の大戦果に、「Z」の破滅…もう少しで世界は激動する――"));
replaceString(L, 6, Str("say"), Str("新しい時代の幕開け、刮目させてもらうわ……"));
lua_pop(L, 1);
}
void TACT10010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("所詮は「スペアデータ」に残されている「ログ」を使ったシミュレーション…「なぞる」ことしかならないのね…"));
replaceString(L, 2, Str("say"), Str("戦争、矛盾、憎悪、果たしてどんなものを産み出してくれるか？"));
replaceString(L, 3, Str("say"), Str("ふふふ…「今度」は失望させないでほしいわ……"));
lua_pop(L, 1);
}
