#include "../common.h"
void W262008(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("能源矩阵放置完毕，所有电力方阵都重新开始运转了！"));
replaceString(L, 2, Str("say"), Str("...."));
replaceString(L, 3, Str("say"), Str("！？"));
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
void NICONICO2(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("最近、綾波の様子が…？\n\n<size=45>その二　弾幕が薄い！？</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("数分後・綾波の部屋"));
replaceString(L, 3, Str("say"), Str("（トントン）"));
replaceString(L, 4, Str("say"), Str("（モニターを見て）あ、新着動画、おお…こっちも――"));
replaceString(L, 5, Str("say"), Str("（トントン）"));
replaceString(L, 6, Str("say"), Str("うぅ…誰ですか…綾波の休憩時間に……"));
replaceString(L, 7, Str("say"), Str("（トントン）"));
replaceString(L, 8, Str("say"), Str("今行くのですよーー指揮官ですか…"));
replaceString(L, 9, Str("say"), Str("綾波、大事なことをやっている最中です。指揮官はテキトウに座っていいです。"));
replaceString(L, 10, Str("say"), Str("ーーこれですか？「ニコニコドウガ」ですよ。"));
replaceString(L, 11, Str("say"), Str("友達から勧められたのです。"));
replaceString(L, 12, Str("say"), Str("見た目はシンプルですけど、面白い放送が一杯あるのです。"));
replaceString(L, 13, Str("say"), Str("友達と「弾幕」で話し合って……楽しいです…"));
replaceString(L, 14, Str("say"), Str("キシンの弾幕、味わうが良い…！――"));
lua_pop(L, 1);
}
