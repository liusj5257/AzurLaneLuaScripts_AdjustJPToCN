#include "../common.h"
void GUOQING5(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("又是五航战的那孩子么，真是执着而又愚蠢啊。"));
replaceString(L, 2, Str("say"), Str("烦人的虫子果然被诱饵吸引进来了。"));
replaceString(L, 3, Str("say"), Str("按照流程进行系统检查...呵呵呵，所有系统看起来都在正常工作中~"));
replaceString(L, 4, Str("say"), Str("能自由自在掌控所管辖的一切，真不愧是神明的实验场。"));
replaceString(L, 5, Str("say"), Str("妄图与强者对抗的弱者，终究只会为自己的狂妄付出代价..."));
replaceString(L, 6, Str("say"), Str("派它们去好了，正好可以好好\"检验\"一下神明赐予我们的新武器~"));
replaceString(L, 7, Str("say"), Str("想要妨碍我与\"那位大人\"重逢的人，必须好好惩罚一下才行呢，呵呵呵呵......"));
lua_pop(L, 1);
}
