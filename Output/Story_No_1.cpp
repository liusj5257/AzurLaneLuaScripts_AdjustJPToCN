#include "../common.h"
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
