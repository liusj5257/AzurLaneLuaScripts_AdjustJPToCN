#include "../common.h"
void W262010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("......—— "));
lua_pop(L, 1);
}
void NICONICO6(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("最近、綾波の様子が…？\n\n<size=45>その六　綾波更生計画・下</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("キシン流奥義…！終わりです！"));
replaceString(L, 3, Str("say"), Str("うわ！さすがは「アヤナミ」…少し手加減したとは言え、一週間でこの幽霊さんから白星を一回奪うとは……"));
replaceString(L, 4, Str("say"), Str("で、これからはどうするの？もう一回やる？あ、積みゲーの実況とかでもいいのよー？いやーまったく一日24時間って本当に足りないもんねー……「アヤナミ」？"));
replaceString(L, 5, Str("say"), Str("すみません…AFKです……"));
replaceString(L, 6, Str("say"), Str("うん？「アヤナミ」もう寝落ちなの？まあ特別な訓練を受けなければこの幽霊さんのように持たないもんね～起きたらまた枠取ろ？"));
replaceString(L, 7, Str("say"), Str("（電源OFF）身体機能より、精神のほうが……（パタン）"));
lua_pop(L, 1);
}
