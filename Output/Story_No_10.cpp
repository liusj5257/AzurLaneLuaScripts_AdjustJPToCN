#include "../common.h"
void WNX07(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("大型作战已经重置！请重新派遣舰队前往作战海域，展开新一轮作战！"));
lua_pop(L, 1);
}
void WNNG07(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了己方港口。"));
lua_pop(L, 1);
}
void W262003(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("未被激活的灯塔..在正下方可以放置能源矩阵。"));
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
