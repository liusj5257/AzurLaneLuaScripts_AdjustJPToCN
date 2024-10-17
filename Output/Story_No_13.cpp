#include "../common.h"
void W262001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("根据指挥部的消息，这片海域受到塞壬浓雾的影响，导致远处的电力方阵断电。"));
replaceString(L, 2, Str("say"), Str("请指挥官携带三块能源矩阵，依次寻找到雾气中的三座灯塔控制台，点亮灯塔的同时重新构建电力输送通路。"));
lua_pop(L, 1);
}
void W262002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("请先找到前置的灯塔！"));
lua_pop(L, 1);
}
void W262003(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("未被激活的灯塔..在正下方可以放置能源矩阵。"));
lua_pop(L, 1);
}
void W262004(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("被激活的灯塔，通过能源矩阵通路获得源源不断的电力。可以照亮附近的海域。"));
lua_pop(L, 1);
}
void W262005(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("被激活的灯塔，然而缺少了电力输送通路，仅能靠能源矩阵本身提供的能量发出微弱的光芒。"));
lua_pop(L, 1);
}
void W262006(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("电力方阵，通过底框的颜色可以判断是否被激活。"));
lua_pop(L, 1);
}
void W262007(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("第一块能源矩阵放置完毕，看来通路已经成功构建起来了，请尽快寻找到剩下两处灯塔吧。"));
lua_pop(L, 1);
}
void W262008(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("能源矩阵放置完毕，所有电力方阵都重新开始运转了！"));
replaceString(L, 2, Str("say"), Str("...."));
replaceString(L, 3, Str("say"), Str("！？"));
lua_pop(L, 1);
}
void W262009(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("受到不明影响，电路断开了。"));
lua_pop(L, 1);
}
void W262010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("......—— "));
lua_pop(L, 1);
}
