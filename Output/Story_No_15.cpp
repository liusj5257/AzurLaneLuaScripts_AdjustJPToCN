#include "../common.h"
void W262013(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("破局者似乎不在附近..."));
lua_pop(L, 1);
}
void W262009(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("受到不明影响，电路断开了。"));
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
