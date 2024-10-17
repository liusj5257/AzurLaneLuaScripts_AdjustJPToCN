#include "../common.h"
void W262011(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("破局者偷走了能源矩阵，导致通路中断，灯塔照明效率也大大下降了。"));
replaceString(L, 2, Str("say"), Str("浓雾再次笼罩海域，请指挥官迅速找到破局者并击破，夺回能源矩阵！"));
replaceString(L, 3, Str("say"), Str("提示：破局者可能在浓雾中的任意位置出现，靠近破局者或是击破其附近的普通敌人后会收到进一步的提示。"));
lua_pop(L, 1);
}
void W262012(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("感受到了破局者的气息，应该就在附近了！"));
lua_pop(L, 1);
}
void W262013(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("破局者似乎不在附近..."));
lua_pop(L, 1);
}
void W262014(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("感受到了破局者的气息，应该已经非常接近了！！"));
lua_pop(L, 1);
}
void W262015(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("还原了被偷走的能源矩阵！"));
replaceString(L, 2, Str("say"), Str("打捞完海域中剩余的物资后，就从出口离开吧"));
lua_pop(L, 1);
}
