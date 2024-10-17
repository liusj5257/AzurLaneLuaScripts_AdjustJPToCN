#include "../common.h"
void WNNG08(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("为了应对更高强度的战斗，为指挥官开放了舰队扩编权限，现在可以派遣4支舰队进入NA海域了。"));
lua_pop(L, 1);
}
void WNX05(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("舰队已不能维持作战，战前测试失败，指挥官当前舰队实力不符合大型作战实战要求。"));
replaceString(L, 2, Str("say"), Str("请训练或整备舰队，提升综合实力后，再次提交测试申请。"));
lua_pop(L, 1);
}
