#include "../common.h"
void WNG01(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("线路接通，加密通讯已接入，内容极密，司令部最高指令——"));
replaceString(L, 2, Str("say"), Str("约一周前，在我方对北大洋近海进行的例行侦查中，侦察机发现了一件重大的异常现象。"));
replaceString(L, 3, Str("say"), Str("经过数次侦查与情报分析，现确认，塞壬部署于该处近海的作战单位正在向海域深处撤离。"));
replaceString(L, 4, Str("say"), Str("原因尚不明确，调查工作仍在继续。"));
replaceString(L, 5, Str("say"), Str("从结果来说，由于塞壬部队的撤离，原本被封锁的近海海域得到开放，我方的行动范围获得了相当程度的扩大。"));
replaceString(L, 6, Str("say"), Str("目前，司令部正在调整战术方针与配置，分区块探明海域内的情况。"));
replaceString(L, 7, Str("say"), Str("在调查过程中，一块位于北大西洋中心的海域的引起了司令部的重视。"));
replaceString(L, 8, Str("say"), Str("虽然侦察机无法深入调查，但仍然在其边缘探测到了巨大的不明能量源反映。"));
replaceString(L, 9, Str("say"), Str("结合之前塞壬的行动模式，司令部认定在北大西洋海域出现了极其严峻的状况，故在此对全港区下达紧急作战任务。"));
replaceString(L, 10, Str("say"), Str("行动代号\"NA作战\"。各辖区务必集结最精锐之作战舰队，接受司令部测试部队的检验考核。"));
replaceString(L, 11, Str("say"), Str("通过考核的作战部队将获准参与此次大型作战之中，并即刻开往予定集结地点。"));
replaceString(L, 12, Str("say"), Str("作战目标为突破北大西洋海域中的塞壬防线，探明海域中塞壬的阴谋，最终夺回整片海域的控制权。"));
replaceString(L, 13, Str("say"), Str("所有收到此命令的指挥官务必将此作为最优先事项执行。"));
lua_pop(L, 1);
}
void WNN003G(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("使用舰队指令模块-舰队部署，可以部署潜艇编队进入NA海域。"));
lua_pop(L, 1);
}
void WNN005A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("深渊海域中有强大的塞壬守卫，其火力和耐久都远超其他塞壬单位。"));
replaceString(L, 2, Str("say"), Str("挑战深渊塞壬守卫后，即便作战失败，其耐久也会继承到下一场战斗，可以继续用其他舰队挑战。"));
replaceString(L, 3, Str("say"), Str("使用舰队与塞壬守卫作战，有几率发现其弱点；使用不同的舰队与之交战，有几率使其弱点加深。"));
lua_pop(L, 1);
}
void WNNG07(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了己方港口。"));
lua_pop(L, 1);
}
void WNNG08(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("为了应对更高强度的战斗，为指挥官开放了舰队扩编权限，现在可以派遣4支舰队进入NA海域了。"));
lua_pop(L, 1);
}
void WNNG09(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在普通海域中可以使用潜艇支援了！"));
lua_pop(L, 1);
}
void WNNG10(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在大型作战中，作战失败会使得当前舰队士气下降，舰队在战斗中造成伤害降低。"));
replaceString(L, 2, Str("say"), Str("使用舰队指令模块中的舰队休整指令，可以恢复所有舰队的士气。"));
replaceString(L, 3, Str("say"), Str("舰船的耐久可以使用维修设备等道具回复，或者也可以在已解锁的港口海域使用舰队部署来回复所有舰队成员的耐久。"));
lua_pop(L, 1);
}
void WNNG11(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在大型作战中，舰船耐久归零后并不会离开作战，而是会保留10%的耐久继续进行下一场战斗。"));
replaceString(L, 2, Str("say"), Str("但是耐久归零后的舰船会进入战损状态，部分技能在战斗中不再生效。"));
replaceString(L, 3, Str("say"), Str("进入战损状态的舰船，需要回到已解锁的港口海域进行修理。"));
lua_pop(L, 1);
}
void WNNG12(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了塞壬据点海域。"));
lua_pop(L, 1);
}
void WNNG13(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("使用大型作战记录仪可以跳过重复调查海域的过程，购买后请到大型作战中打开背包使用它吧。"));
lua_pop(L, 1);
}
void WNNG14(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("大型作战已重置，开启了补给商店"));
lua_pop(L, 1);
}
void WNX05(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("舰队已不能维持作战，战前测试失败，指挥官当前舰队实力不符合大型作战实战要求。"));
replaceString(L, 2, Str("say"), Str("请训练或整备舰队，提升综合实力后，再次提交测试申请。"));
lua_pop(L, 1);
}
void WNX06(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("使用了大型作战记录仪！获取了大型作战的相关信息！！！"));
replaceString(L, 2, Str("say"), Str("大型作战的所有海域移动限制被解除了，并且得到了所有海域的调查奖励！"));
lua_pop(L, 1);
}
void WNX07(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("大型作战已经重置！请重新派遣舰队前往作战海域，展开新一轮作战！"));
lua_pop(L, 1);
}
