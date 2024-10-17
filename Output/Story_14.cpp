#include "../common.h"
void W263001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("将能源矩阵搬运到目标点！"));
replaceString(L, 2, Str("say"), Str("注意海域中央的敌方侦查塔，其警戒范围每回合都会顺时针转动90度，进入警戒范围则任务失败！！"));
lua_pop(L, 1);
}
void W264000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("击破海域中所有测试者！"));
lua_pop(L, 1);
}
void W267000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("大型作战第五章剧情已全部结束，未被选择的结局可以前往回忆中进行查看。请前往情报面板确认后续任务。"));
lua_pop(L, 1);
}
void W3000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这是？谜题空间？"));
lua_pop(L, 1);
}
void W300000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了档案海域。清理海域内所有塞壬舰队后，将会获得档案奖励。"));
lua_pop(L, 1);
}
void W300001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("档案回收完毕，海域目标已完成。可以前往下一档案海域进行作战。"));
lua_pop(L, 1);
}
void W300002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("档案回收完毕，海域目标已完成。"));
replaceString(L, 2, Str("say"), Str("本次档案海域记录仪中记录的所有档案均已回收完毕。"));
lua_pop(L, 1);
}
void W3001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海面上出现了异动！一部分海域的入口被打开了，先尝试调查一下看看吧"));
lua_pop(L, 1);
}
void W3002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("找到了被关闭的设备，看起来已经失去能量了"));
replaceString(L, 2, Str("say"), Str("是否消耗一个电池把设备激活并带走"));
getByList(L,2);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W3003(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("并没有可以投放的道具，尝试用扫描搜索一下附近吧"));
lua_pop(L, 1);
}
void W3004(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("要把设备放置在这里吗"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W3005(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("装置运转正常..."));
lua_pop(L, 1);
}
void W3006(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("解谜完成！海域平静了下来...现在可以领取奖励离开地图了"));
lua_pop(L, 1);
}
void W3007(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海况出现了变化！"));
lua_pop(L, 1);
}
void W400000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：指挥官，我无法通过侦察模块获取前方海域的任何信息。海域之中存在未知强敌的概率接近100%。"));
replaceString(L, 2, Str("say"), Str("请确认是否解除塞壬区域封锁装置进入海域的深处？"));
getByList(L,2);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("确认"));
replaceString(L, 2, Str("content"), Str("查阅作战说明"));
replaceString(L, 3, Str("content"), Str("离开"));
lua_pop(L,2);
replaceString(L, 3, Str("say"), Str("指令已确认：正在尝试解除塞壬区域封锁装置——————"));
lua_pop(L, 1);
}
void W400001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：指挥官，前方海域出现未知强敌，塞壬区域封锁装置正在自动解除中。"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("准备战斗"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W400002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：指挥官，因为塞壬区域封锁装置的解除，整片深渊海域的海况出现了剧烈变化。"));
lua_pop(L, 1);
}
void W400003(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，周边区域的封锁被解除了。"));
lua_pop(L, 1);
}
void W400004(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("离开后将无法再次返回该处海域，是否确认离开？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("确认"));
replaceString(L, 2, Str("content"), Str("取消"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W400005(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，深渊海域中的守卫已击破，现在可以使用塞壬特殊通行装置离开了。"));
lua_pop(L, 1);
}
void W400101(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("面前的石柱上有两个符号。"));
replaceString(L, 2, Str("say"), Str("请进行选择——————"));
getByList(L,2);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("←"));
replaceString(L, 2, Str("content"), Str("→"));
replaceString(L, 3, Str("content"), Str("容我三思"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W400102(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("前方敌人极为强大，请指挥官谨慎迎战。"));
replaceString(L, 2, Str("say"), Str("受伤了的话请务必到我这边来，女灶神可以随时待命治愈那些受伤的姐妹哦~"));
lua_pop(L, 1);
}
void W610000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("战斗结果已确认：成功压制了一处塞壬据点，要塞海域中剩余塞壬据点数为：8。"));
lua_pop(L, 1);
}
void W610001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("战斗结果已确认：成功压制了一处塞壬据点，要塞海域中剩余塞壬据点数为：7。"));
lua_pop(L, 1);
}
void W610002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("战斗结果已确认：成功压制了一处塞壬据点，要塞海域中剩余塞壬据点数为：6。"));
lua_pop(L, 1);
}
void W610003(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("战斗结果已确认：成功压制了一处塞壬据点，要塞海域中剩余塞壬据点数为：5。"));
lua_pop(L, 1);
}
void W610004(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("战斗结果已确认：成功压制了一处塞壬据点，要塞海域中剩余塞壬据点数为：4。"));
lua_pop(L, 1);
}
void W610005(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("战斗结果已确认：成功压制了一处塞壬据点，要塞海域中剩余塞壬据点数为：3。"));
lua_pop(L, 1);
}
void W610006(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("战斗结果已确认：成功压制了一处塞壬据点，要塞海域中剩余塞壬据点数为：2。"));
lua_pop(L, 1);
}
void W610007(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("战斗结果已确认：成功压制了一处塞壬据点，要塞海域中剩余塞壬据点数为：1。"));
lua_pop(L, 1);
}
void W610008(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("战斗结果已确认：成功压制了一处塞壬据点，要塞海域中剩余塞壬据点数为：0。"));
replaceString(L, 2, Str("say"), Str("指挥官，所有塞壬据点均被清除，舰队取得了该片海域的控制权。"));
lua_pop(L, 1);
}
void W610010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：遭遇到塞壬舰队伏击。"));
lua_pop(L, 1);
}
void W610020(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，海域中异常的海雾消失了。"));
lua_pop(L, 1);
}
void W610021(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，海域中异常的腐蚀区域消失了。"));
lua_pop(L, 1);
}
void W610100(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，将海域中塞壬控制力下降到50%以下后，可使该装置失效。"));
lua_pop(L, 1);
}
void W610101(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，将海域中塞壬控制力下降到60%以下后，可使该装置失效。"));
lua_pop(L, 1);
}
void W610102(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，将海域中塞壬控制力下降到80%以下后，可使该装置失效。"));
lua_pop(L, 1);
}
void W610200(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：侦察到正在向我方据点移动的塞壬袭击舰队。建议，在据点被塞壬彻底占领之前，派遣舰队将其消灭。"));
lua_pop(L, 1);
}
void W610201(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("结果确认中：指挥官，塞壬袭击舰队已被消灭，此处据点暂时脱离了危险。同时，发现塞壬特殊补给箱，建议回收。"));
lua_pop(L, 1);
}
void W610202(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：我方据点被塞壬舰队占领，塞壬对于该片海域的控制力增加了。"));
lua_pop(L, 1);
}
void W610203(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("结果确认中：指挥官，塞壬防御舰队已被消灭，我们取得了该处据点的控制权。同时，发现塞壬特殊补给箱，建议回收。"));
lua_pop(L, 1);
}
void W610300(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指令执行中：正在打捞沉没的物资……结果确认，指挥官，物资回收完毕。"));
lua_pop(L, 1);
}
void W610301(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("......"));
replaceString(L, 2, Str("say"), Str("打捞到了沉入海中的物资！"));
lua_pop(L, 1);
}
void W610302(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，已到达指定区域。是否开始进行打捞作业？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("打捞"));
replaceString(L, 2, Str("content"), Str("离开"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W610303(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，水面之下依然存在有物资信号，是否继续进行打捞作业？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("打捞"));
replaceString(L, 2, Str("content"), Str("离开"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W610305(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指令执行中：正在打捞沉没的物资……警告，遭遇到塞壬舰队伏击。"));
lua_pop(L, 1);
}
void W610306(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指令执行中：正在打捞沉没的物资……警告，触发了塞壬设下的陷阱，周边海面出现了腐蚀区域。"));
lua_pop(L, 1);
}
void W610350(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("独角兽————？独角兽妹妹——————"));
replaceString(L, 2, Str("say"), Str("...真是的，独角兽这孩子跑到哪里去了？"));
lua_pop(L, 1);
}
void W610351(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("嗯？指挥官，能帮忙寻找一下独角兽吗？这孩子一个人不知道跑到哪里去了..."));
replaceString(L, 2, Str("say"), Str("这片海域十分危险，指挥官也请注意安全哦。"));
lua_pop(L, 1);
}
void W610352(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("帮助光辉寻找到走失的独角兽。"));
lua_pop(L, 1);
}
void W610353(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("光辉姐姐...！"));
replaceString(L, 2, Str("say"), Str("独角兽！"));
replaceString(L, 3, Str("say"), Str("真是的，下次可不能这样乱跑了哦..."));
replaceString(L, 4, Str("say"), Str("嗯嗯..！但是，优酱它.."));
replaceString(L, 5, Str("say"), Str("哎呀..看起来受了一点皮肉伤呢，让光辉姐姐来为它治疗吧"));
replaceString(L, 6, Str("say"), Str("指挥官也辛苦了，需要光辉为您捶捶背吗..？"));
lua_pop(L, 1);
}
void W610354(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("下次可不能再乱跑了哦~"));
replaceString(L, 2, Str("say"), Str("嗯！"));
lua_pop(L, 1);
}
void W610355(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("......"));
replaceString(L, 2, Str("say"), Str("呜............"));
replaceString(L, 3, Str("say"), Str("呀————！不要过来.."));
replaceString(L, 4, Str("say"), Str(".... ...哥哥？"));
replaceString(L, 5, Str("say"), Str("呜呜...因为和优酱走丢了，独角兽就一个人出来找...优酱好像受伤了的样子...."));
replaceString(L, 6, Str("say"), Str("（独角兽怀中的优酱身上有着明显的伤痕）"));
replaceString(L, 7, Str("say"), Str("哥哥...能带着独角兽回去找光辉姐姐吗？"));
replaceString(L, 8, Str("say"), Str("诶嘿嘿...有哥哥在，独角兽就安心了~"));
lua_pop(L, 1);
}
void W610356(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("哥哥...要丢下独角兽不管吗？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("再努力一下，帮助独角兽寻找光辉"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W611000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("作战指令接收中————————"));
replaceString(L, 2, Str("say"), Str("指挥官，该处海域遭受到塞壬大规模反击。目前，塞壬舰队已经成功在海域中建立了若干据点，在实质上取得了海域间控制权。"));
replaceString(L, 3, Str("say"), Str("通过消灭塞壬舰队，取得所有据点的控制权后，即可重新夺回整片海域的控制权。"));
replaceString(L, 4, Str("say"), Str("塞壬据点数量和坐标将会实时更新在G.M系统的可视化面板上供您查看。"));
replaceString(L, 5, Str("say"), Str("作战指令结束————————"));
lua_pop(L, 1);
}
void W611001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("已经击破所有塞壬据点，可以从塞壬特殊通行装置或者海域边缘离开，离开后将无法再次返回本处海域。"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("确认"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W612000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，海域中存在的异常洋流构成了某种阻碍舰队移动的封锁区域。建议，寻找并摧毁海域中的4处塞壬洋流控制器。"));
lua_pop(L, 1);
}
void W612001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("结果确认中：指挥官，海域中的1处塞壬洋流控制器被摧毁了。"));
lua_pop(L, 1);
}
void W612002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("结果确认中：指挥官，海域中的全部4处塞壬洋流控制器均被摧毁，异常洋流现象消失了。"));
lua_pop(L, 1);
}
void W700002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("即将进入虫洞副本，进行月度Boss挑战。"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("确认"));
replaceString(L, 2, Str("content"), Str("取消"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W700010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域守卫代行者出现了！"));
lua_pop(L, 1);
}
void W700020(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("当前正在进行普通难度仲裁机关作战。"));
replaceString(L, 2, Str("say"), Str("离开后当前作战进度将会保留，本月内再次进入可继续挑战。"));
replaceString(L, 3, Str("say"), Str("击破普通难度仲裁机关后，将会开启困难难度仲裁机关作战。"));
lua_pop(L, 1);
}
void W700021(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("当前正在进行困难难度仲裁机关作战。"));
replaceString(L, 2, Str("say"), Str("离开后当前作战进度将会重置，已获得的奖励无法重复领取，且当前海域中无法使用舰队维护指令。"));
replaceString(L, 3, Str("say"), Str("彻底击破敌人后可获得丰厚奖励。"));
lua_pop(L, 1);
}
void W700022(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("当前正在进行困难难度仲裁机关模拟战。"));
replaceString(L, 2, Str("say"), Str("当前海域仲裁者与困难难度中保持一致，但击破后不会获得任何奖励，仅供模拟。"));
lua_pop(L, 1);
}
void W700030(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了核心区前哨站。通过前方的特殊通行装置可以挑战普通难度的仲裁机关。"));
lua_pop(L, 1);
}
void W700031(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("困难难度已解锁，通过前方的特殊通行装置可以挑战困难难度的仲裁机关。"));
lua_pop(L, 1);
}
void W700032(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("本月月度的仲裁机关挑战已完成，再次进入特殊通行装置可以重复挑战困难难度仲裁机关模拟战，模拟战无法获取任何奖励。"));
lua_pop(L, 1);
}
void W700100(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指令接收中：指挥官，现在开始进行迎击仲裁者·天帕岚斯·XIV的特殊准备模拟战。"));
replaceString(L, 2, Str("say"), Str("请带领舰队击败设定于模拟战海域中的代行者XIV「Equilibrium」吧。"));
lua_pop(L, 1);
}
void W700101(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指令接收中：指挥官，接下来开始进行迎击仲裁者·司特莲库斯·VIII的特殊准备模拟战。"));
replaceString(L, 2, Str("say"), Str("请带领舰队击败设定于模拟战海域中的代行者VIII「Determination」吧。"));
lua_pop(L, 1);
}
void W700102(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指令接收中：指挥官，最后来进行迎击仲裁者·赫米忒·IX的特殊准备模拟战。"));
replaceString(L, 2, Str("say"), Str("请带领舰队击败设定于模拟战海域中的代行者IX「Exploration」吧。"));
lua_pop(L, 1);
}
void W700110(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("搜索模块同步中：海域中存在特殊塞壬建筑干扰，请将其全部破坏。"));
lua_pop(L, 1);
}
void W700120(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("结果确认中：代行者XIV「Equilibrium」已被击败，可以前往下一处模拟战海域。"));
lua_pop(L, 1);
}
void W700121(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("结果确认中：代行者VIII「Determination」已被击败，可以前往下一处模拟战海域。"));
lua_pop(L, 1);
}
void W700122(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("结果确认中：代行者IX「Exploration」已被击败，模拟战海域已全部完成，即将开启正式作战。"));
lua_pop(L, 1);
}
void W700200(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("与仲裁者量产型机体作战取得了阶段性胜利，获得了阶段性胜利奖励。"));
lua_pop(L, 1);
}
void W700201(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("成功击败了本月普通难度仲裁者量产型机体。回到作战港口后再次进入，可以挑战本月的困难难度仲裁者量产型机体。"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("确认"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W700202(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("成功击败了本月困难难度仲裁者量产型机体。回到作战港口后再次进入，可以重复挑战困难难度仲裁机关模拟战，但无法获取任何奖励。"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("确认"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W710000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这里是？……"));
replaceString(L, 2, Str("say"), Str("看起来进入了未知的海域，深蓝色的海水上漂浮着紫灰色的暗云，空气里充斥着浓郁的海盐气息，以及阵阵铁锈的味道……"));
replaceString(L, 3, Str("say"), Str("谨慎调查周围异常海域，找到未知海域的出口。"));
lua_pop(L, 1);
}
void W710001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("舰队集合点，是否将其他舰队调动到集合点？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("调动"));
replaceString(L, 2, Str("content"), Str("不调动"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W710002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域中萦绕着黑色的暗流，看起来无法靠近……"));
lua_pop(L, 1);
}
void W710003(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("舰队进入了调查点，周围的黑色暗流退却了！"));
lua_pop(L, 1);
}
void W710004(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("周围的黑色暗流复苏了！看样子必须得有舰队一直位于调查点上才行！"));
lua_pop(L, 1);
}
void W710005(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("......"));
replaceString(L, 2, Str("say"), Str("舰队受到黑色潮汐影响，回过神来竟然回到了出发点？"));
getByList(L,2);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("......"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W710006(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("暗流稳定了……"));
lua_pop(L, 1);
}
void W710007(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("多个舰队同时靠近调查点会非常危险，指挥官请谨慎行事"));
replaceString(L, 2, Str("say"), Str("如果舰队行动受限，请先撤离调查点上的舰队。"));
lua_pop(L, 1);
}
void W710008(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这是……海域在燃烧？"));
replaceString(L, 2, Str("say"), Str("寻找一下周围海域，看看有什么发现吧……"));
lua_pop(L, 1);
}
void W710009(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("…………………………"));
replaceString(L, 2, Str("say"), Str("…………………………"));
replaceString(L, 3, Str("say"), Str("看起来只是一个黑方舟的不稳定投影……投影的另一端是一片完全陌生的海域，是否深入调查？"));
getByList(L,3);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("调查"));
replaceString(L, 2, Str("content"), Str("离开"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W710010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("……这是……"));
replaceString(L, 2, Str("say"), Str("……这股熟悉的破坏感……这是黑方舟的内心世界？"));
replaceString(L, 3, Str("say"), Str("……看起来周围环境杂乱无序，可能离开这个奇怪的地方和这里有所关系……"));
lua_pop(L, 1);
}
void W710011(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域中出现了亮光！"));
lua_pop(L, 1);
}
void W710012(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("洋流流动了起来！"));
replaceString(L, 2, Str("say"), Str("大部分海域看起来还是处于封锁状态……洋流并没有贯通……"));
getByList(L,2);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("..."));
lua_pop(L,2);
lua_pop(L, 1);
}
void W710013(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("一个奇特的标记，是否阅读上面的说明？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("阅读"));
replaceString(L, 2, Str("content"), Str("不阅读"));
lua_pop(L,2);
replaceString(L, 2, Str("say"), Str("此处为副本世界观介绍文本预留"));
replaceString(L, 3, Str("say"), Str("混乱之海：黑方舟不完全的降临体出现在本世界线，切割了正常的海域空间，造成了混乱之海"));
replaceString(L, 4, Str("say"), Str("意识之海：黑方舟内心意识的具象化，部分信息碎片在降临时被同化到了混乱之海中"));
replaceString(L, 5, Str("say"), Str("意识之海的修复：在混乱之海中找到黑方舟意识的碎片，修复意识之海里紊乱的洋流"));
lua_pop(L, 1);
}
void W710014(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("火焰下方隐约是个漩涡……似乎是一个传送通道"));
replaceString(L, 2, Str("say"), Str("这个时候还不可以使用，试着打通环流看看吧"));
getByList(L,2);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("离开"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W710015(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("得到了黑方舟的记忆碎片"));
replaceString(L, 2, Str("say"), Str("到意识之海使用试试看吧。"));
lua_pop(L, 1);
}
void W710016(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("…………………………"));
replaceString(L, 2, Str("say"), Str("记忆一片混乱"));
replaceString(L, 3, Str("say"), Str("是否放入黑方舟的记忆体尝试修复？"));
getByList(L,3);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("确认"));
replaceString(L, 2, Str("content"), Str("离开"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W710017(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("并没有获得对应的记忆碎片……"));
lua_pop(L, 1);
}
void W710018(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("空间变得稳定了！"));
replaceString(L, 2, Str("say"), Str("洋流流向了深处......"));
lua_pop(L, 1);
}
void W710019(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域被点亮了！"));
lua_pop(L, 1);
}
void W710020(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这是……另一块记忆碎片吗？"));
lua_pop(L, 1);
}
void W710021(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("得到了黑方舟的的记忆碎片。"));
replaceString(L, 2, Str("say"), Str("周围涌动的暗流停息了下来，敌舰也消失了……"));
lua_pop(L, 1);
}
void W710022(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这是？！"));
replaceString(L, 2, Str("say"), Str("整片海域都失去了温度了吗……无论如何还是先到意识之海看看吧"));
lua_pop(L, 1);
}
void W710023(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("漩涡上的火焰消散了……"));
lua_pop(L, 1);
}
void W710024(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这是……另一个环流么……"));
replaceString(L, 2, Str("say"), Str("感觉黑暗潮汐的波动大幅度减弱了，似乎舰队已经可以进入燃烧的海域之中了，尝试着调查一下吧"));
getByList(L,2);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("......"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W710025(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("火焰在飞快的缩小，要停留在这里么？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("停留"));
replaceString(L, 2, Str("content"), Str("离开"));
lua_pop(L,2);
replaceString(L, 2, Str("say"), Str("火焰消失了……"));
replaceString(L, 3, Str("say"), Str("脚下洋流开始涌动……"));
lua_pop(L, 1);
}
void W710026(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("洋流并没有贯通……"));
replaceString(L, 2, Str("say"), Str("黑色的潮汐出现了！"));
lua_pop(L, 1);
}
void W710027(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("洋流贯通了"));
replaceString(L, 2, Str("say"), Str("在洋流的尽头出现了时空通道……"));
lua_pop(L, 1);
}
void W710028(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("环流的尽头洋溢着奇怪的力量，看起来还是不要靠近比较好……"));
lua_pop(L, 1);
}
void W710029(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这是……又回到这里了么"));
replaceString(L, 2, Str("say"), Str("不对，黑方舟的意识稳定了很多……然而空间中出现了具象化的塞壬精英，空间变得不稳定了！"));
replaceString(L, 3, Str("say"), Str("在意识空间破碎之前，尽快击破塞壬棋子！"));
lua_pop(L, 1);
}
void W710030(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("洋流变得支离破碎了起来……得尽快找到干涉黑方舟内心的塞壬棋子才行"));
lua_pop(L, 1);
}
void W710031(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("......"));
lua_pop(L, 1);
}
void W710032(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这是......最后的棋子么......"));
replaceString(L, 2, Str("say"), Str("......"));
lua_pop(L, 1);
}
void W710033(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("意识空间的消融更为严重了，请指挥官尽快离开..."));
lua_pop(L, 1);
}
void W710034(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("意识空间马上消融，指挥官请马上离开当前海域！"));
lua_pop(L, 1);
}
void W710035(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("所有棋子都被消除了......看起来空间恢复了稳定"));
lua_pop(L, 1);
}
void W710036(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这是，第三块记忆碎片么......试着使用着看看吧"));
lua_pop(L, 1);
}
void W710037(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这就是......最后了吧......"));
replaceString(L, 2, Str("say"), Str("好强烈的暗流潮汐波动..."));
lua_pop(L, 1);
}
void W710038(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这是...最后一块塞壬记忆碎片了吧..."));
replaceString(L, 2, Str("say"), Str("借助地形避开潮汐暗流吧"));
lua_pop(L, 1);
}
void W710039(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("潮汐会在舰队离开当前区域后消退"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("..."));
lua_pop(L,2);
lua_pop(L, 1);
}
void W710040(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("得到了所有的记忆碎片......现在前往意识之海看看吧"));
lua_pop(L, 1);
}
void W710041(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("空间变得稳定了！"));
replaceString(L, 2, Str("say"), Str("洋流的流向改变了......通往了未知之地"));
lua_pop(L, 1);
}
void W710042(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("沿着洋流，前往黑方舟意识的中枢吧"));
lua_pop(L, 1);
}
void W710043(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这是...黑方舟的意识消散了么..."));
replaceString(L, 2, Str("say"), Str("再尝试一次吧......"));
lua_pop(L, 1);
}
void W710044(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域中出现了新的记忆碎片！"));
lua_pop(L, 1);
}
void W730000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了仲裁者的精神世界。"));
lua_pop(L, 1);
}
void W730001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("需要派遣一队进入海域中央完成解谜。"));
lua_pop(L, 1);
}
void W730010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域中央似乎有异常，请指挥官前往调查。"));
lua_pop(L, 1);
}
void W730011(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域中出现了三个能源矩阵，但我方舰队无法到达其所在位置。"));
replaceString(L, 2, Str("say"), Str("中央的控制台上有一圆盘，通过控制圆盘的倾斜方向可以使能源矩阵滑动。"));
lua_pop(L, 1);
}
void W730020(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域中央的石柱越来越拥挤了。"));
replaceString(L, 2, Str("say"), Str("将能源矩阵归位！"));
lua_pop(L, 1);
}
void W730030(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("是否派遣当前舰队进入海域中央？（海域中央不会发生战斗，进入后其他舰队无法进入）"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("再想想"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W730031(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("将能源矩阵归位！"));
replaceString(L, 2, Str("say"), Str("注意：海域中存在隐形石柱，靠近了才会显形！"));
lua_pop(L, 1);
}
void W731000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("靠近后才会显形的石柱，阻拦了去路"));
lua_pop(L, 1);
}
void W731001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域周围出现了塞壬精英敌人！"));
replaceString(L, 2, Str("say"), Str("在精神世界中也能遭遇敌人吗..指挥官，请小心应战！"));
lua_pop(L, 1);
}
void W731002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("被浓雾围住，暂时无法通行。请切换到其他舰队进行操作。"));
lua_pop(L, 1);
}
void W732000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("要将圆盘往那个方向倾斜？（选择了方向后，地图上所有未归位的能源矩阵都会往那个方向滑动）"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("↑上↑"));
replaceString(L, 2, Str("content"), Str("←左←"));
replaceString(L, 3, Str("content"), Str("↓下↓"));
replaceString(L, 4, Str("content"), Str("→右→"));
replaceString(L, 5, Str("content"), Str("离开"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W732001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域周围出现了塞壬精英敌人！"));
replaceString(L, 2, Str("say"), Str("击破塞壬精英"));
lua_pop(L, 1);
}
void W733000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("数 据 错 误"));
lua_pop(L, 1);
}
void W733001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("仲裁者的精神世界极其不稳定，开始逐渐崩坏了。"));
lua_pop(L, 1);
}
void W733002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("将能源矩阵带到新的归位点。"));
lua_pop(L, 1);
}
void W734000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("仲裁者·赫米忒————————作战开始"));
lua_pop(L, 1);
}
void W740000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了深层空间。"));
lua_pop(L, 1);
}
void W740001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海面上出现了红黄两色的光柱，拼成了一个正方形..不知道意味着什么？"));
replaceString(L, 2, Str("say"), Str("在该空间中只有一队可以移动，请指挥官谨慎探索，在海域中寻找解开谜题的线索。"));
lua_pop(L, 1);
}
void W740002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("找到了海域中的其他的光柱方阵！"));
replaceString(L, 2, Str("say"), Str("通过旁边的控制台可以使其中光柱排列发生变化，将方阵还原到与初始方阵一致，即可解开谜题。"));
lua_pop(L, 1);
}
void W740010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("要转动内层还是外层？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("内层"));
replaceString(L, 2, Str("content"), Str("外层"));
replaceString(L, 3, Str("content"), Str("离开"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W742000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了深层空间。"));
replaceString(L, 2, Str("say"), Str("寻找海域中的目标方阵。"));
lua_pop(L, 1);
}
void W742001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("其他舰队暂时无法移动，请指挥官谨慎探索。"));
lua_pop(L, 1);
}
void W742002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("找到了海域中的目标方阵！"));
replaceString(L, 2, Str("say"), Str("通过四周的控制台可以推动其中的光柱，将方阵还原到与初始方阵一致，即可解开谜题。（该谜题需要其他舰队协助完成。）"));
lua_pop(L, 1);
}
void W742010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("是否重置谜题？（重置后海域状态会恢复到最初的样子）"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("再想想"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W744000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了深层空间。"));
replaceString(L, 2, Str("say"), Str("寻找海域中的目标方阵。"));
lua_pop(L, 1);
}
void W744001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("找到了海域中的目标方阵！"));
replaceString(L, 2, Str("say"), Str("目标方阵中没有任何光柱.."));
replaceString(L, 3, Str("say"), Str("通过四周的控制台，可以选择该侧光柱的颜色与扩散次数，将方阵还原到与初始方阵一致，即可解开谜题。"));
lua_pop(L, 1);
}
void W744010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("选择光柱颜色 与 扩散强度"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("黄 扩散4次"));
replaceString(L, 2, Str("content"), Str("黄 扩散3次"));
replaceString(L, 3, Str("content"), Str("红 扩散4次"));
replaceString(L, 4, Str("content"), Str("红 扩散3次"));
replaceString(L, 5, Str("content"), Str("离开"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W744011(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("选择扩散次数？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("4次"));
replaceString(L, 2, Str("content"), Str("3次"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W746000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了深层空间。"));
lua_pop(L, 1);
}
void W746001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("中央方阵的光柱被分散到了海域各处！"));
replaceString(L, 2, Str("say"), Str("通过控制塔可以将光柱往海域中央推进，当光柱触碰到其他光柱或是到达海域边缘时则会停止。"));
replaceString(L, 3, Str("say"), Str("试着还原出初始方阵吧！"));
lua_pop(L, 1);
}
void W746002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("如果出现失误，可以使用重置按钮，即时重置谜题"));
lua_pop(L, 1);
}
void W746003(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("仲裁者出现"));
lua_pop(L, 1);
}
void W746010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("是否推动光柱？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W749000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("仲裁者·司特莲库斯————————作战开始"));
lua_pop(L, 1);
}
void W750000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了图腾空间。海域中的传送门通向深层空间，进入后需完成其中的解谜。"));
lua_pop(L, 1);
}
void W750001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域中出现了新的传送门。"));
lua_pop(L, 1);
}
void W750002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域中出现了新的传送门。"));
lua_pop(L, 1);
}
void W760000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了仲裁者所构建的季节幻境。"));
replaceString(L, 2, Str("say"), Str("找到海域内的能源矩阵，并将其放置到海域中央以解开谜题。"));
lua_pop(L, 1);
}
void W760001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("将能源矩阵归位。"));
lua_pop(L, 1);
}
void W760002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("结果确认中：指挥官，能源矩阵已经成功安装至预定位置。"));
lua_pop(L, 1);
}
void W760003(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("出现了新的传送门，似乎可以通向下一层季节幻境。"));
lua_pop(L, 1);
}
void W760010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("是否通过传送门前往春之幻境？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W760011(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("是否通过传送门前往夏之幻境？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W760012(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("是否通过传送门前往秋之幻境？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W760013(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("是否通过传送门前往冬之幻境？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W760019(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("有舰队正携带着能源矩阵，暂时无法离开当前海域。"));
lua_pop(L, 1);
}
void W760020(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("看上去与周围环境格格不入的热带小岛，如果有<color=#92fc63>热带水果的种子</color>可以尝试种在这里。"));
lua_pop(L, 1);
}
void W760021(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("看上去与周围环境格格不入的热带小岛，如果有<color=#92fc63>热带水果的种子</color>可以尝试种在这里。"));
replaceString(L, 2, Str("say"), Str("虽然手里有一颗种子，不过被冻住了..不知道能不能在<color=#92fc63>炎热的地方</color>解冻？"));
lua_pop(L, 1);
}
void W760022(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("看上去与周围环境格格不入的热带小岛，如果有<color=#92fc63>热带水果的种子</color>可以尝试种在这里。"));
lua_pop(L, 1);
}
void W760023(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在小岛上种下了椰树的种子！或许在收获的季节就能品尝到美味的椰子了~"));
lua_pop(L, 1);
}
void W760024(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在小岛上种下了椰树的种子！或许在收获的季节就能品尝到美味的椰子了~"));
lua_pop(L, 1);
}
void W761000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域中十分炎热，洋流也比之前更强了！"));
lua_pop(L, 1);
}
void W761001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("通过左下方的传送门可以回到春天的海域。"));
lua_pop(L, 1);
}
void W761002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("天气十分炎热！冻结的种子上的冰雪逐渐融化了。"));
replaceString(L, 2, Str("say"), Str("获得了椰子树的种子！"));
lua_pop(L, 1);
}
void W761003(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("出现了新的传送门！"));
lua_pop(L, 1);
}
void W761020(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("普通的热带小岛，不过夏天可不适合播种呢。"));
lua_pop(L, 1);
}
void W761021(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("春天播下的种子已经发芽，长出了椰子树！"));
replaceString(L, 2, Str("say"), Str("或许在<color=#92fc63>收获的季节</color>就能喝到美味的椰子水了。"));
lua_pop(L, 1);
}
void W761022(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("上了锁的宝箱，如果有<color=#92fc63>宝箱钥匙</color>的话就好了。"));
lua_pop(L, 1);
}
void W761023(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("打开了宝箱！宝箱中是一个奇怪形状的机关...虽然踩下去了但是好像没什么用？"));
lua_pop(L, 1);
}
void W762000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("秋高气爽，海域中刮起了风。"));
lua_pop(L, 1);
}
void W762001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("通过传送门可以回到春天和夏天的海域，有的谜题可能需要在之前的海域中寻找线索哦。"));
lua_pop(L, 1);
}
void W762002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域中的部分场景发生了变化。"));
lua_pop(L, 1);
}
void W762020(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("看上去与周围环境格格不入的热带小岛。"));
lua_pop(L, 1);
}
void W762021(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("种下的椰子树已经成熟，长出了美味的椰子！"));
lua_pop(L, 1);
}
void W762022(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("树上有好多椰子，摘一点下来吧~"));
lua_pop(L, 1);
}
void W762030(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("捡到了宝箱钥匙！或许可以用来打开上锁的宝箱。"));
lua_pop(L, 1);
}
void W762031(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("无法从此处通过..有什么办法能解开机关吗？"));
lua_pop(L, 1);
}
void W763000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("寒风凛冽，海面上结起了冰。"));
lua_pop(L, 1);
}
void W763001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("通过传送门可以回到其他季节的海域，有的谜题可能需要在之前的海域中寻找线索哦。"));
lua_pop(L, 1);
}
void W763002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("..！！"));
lua_pop(L, 1);
}
void W763020(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("看上去与周围环境格格不入的热带小岛。"));
lua_pop(L, 1);
}
void W763021(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("岛上的椰子树已经临近枯萎，看不到椰子了。"));
lua_pop(L, 1);
}
void W763030(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("一只巨大的蛮啾拦住了去路。"));
replaceString(L, 2, Str("say"), Str("啾啾，好想喝美味的椰子汁.."));
replaceString(L, 3, Str("say"), Str("可是这个季节根本找不到新鲜的椰子啾.."));
replaceString(L, 4, Str("say"), Str("..！"));
replaceString(L, 5, Str("say"), Str("那边的指挥官！能帮个忙吗啾~？"));
replaceString(L, 6, Str("say"), Str("想和美味的椰子汁，但是这里只有几颗被冻住的椰树种子啾，是从旁边小岛上找到的.."));
replaceString(L, 7, Str("say"), Str("能想想办法让它们变成椰子汁吗.."));
lua_pop(L, 1);
}
void W763031(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("啾啾，好想喝美味的椰子汁.."));
lua_pop(L, 1);
}
void W763032(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("啾啾！是椰子汁！"));
replaceString(L, 2, Str("say"), Str("巨大的蛮啾喝着椰子汁，满意地离开了。"));
lua_pop(L, 1);
}
void W770000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("仲裁者·天帕岚斯————————作战开始"));
lua_pop(L, 1);
}
void W800000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在塞壬实验场中出现了一群正在游动的可爱海豹？追上去调查一下吧……"));
lua_pop(L, 1);
}
void W800001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这里似乎是..塞壬通道的深层空间？"));
replaceString(L, 2, Str("say"), Str("这里视野严重受限，请指挥官谨慎前行，寻找线索"));
lua_pop(L, 1);
}
void W800100(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("该处塞壬实验场的谜题较为困难，是否向领航员-TB寻求帮助？（寻求帮助后，领航员-TB会直接解开海域中的谜题）"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("寻求帮助"));
replaceString(L, 2, Str("content"), Str("再努力一下"));
replaceString(L, 3, Str("content"), Str("本次探索不需要帮助"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W800101(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指令已确认：现在开始执行实验场环境解析进行任务。"));
replaceString(L, 2, Str("say"), Str("分析模块运行中：正在解析塞壬实验场信息………"));
lua_pop(L, 1);
}
void W800102(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：已经彻底破解了塞壬实验场中的谜题。"));
lua_pop(L, 1);
}
void W800103(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("还是再加把劲思考一下吧！"));
lua_pop(L, 1);
}
void W803000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("出现了两群海豹，不过似乎有一群是实验场生成的棋子，通过G.M系统的分析模块寻找出真正的海豹吧……"));
lua_pop(L, 1);
}
void W803001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("发现塞壬棋子的痕迹，看来这一群并不是真正的海豹……"));
lua_pop(L, 1);
}
void W803002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在塞壬实验场中出现了一群正在游动的可爱海豹？追上去调查一下吧……"));
lua_pop(L, 1);
}
void W806000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，前往海豹出现区域的航线被巨型浮冰挡住了。"));
replaceString(L, 2, Str("say"), Str("建议：在海雾中寻找实验场气候调节装置可以消除巨型浮冰的影响。"));
lua_pop(L, 1);
}
void W806001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("建议：在海雾中寻找实验场气候调节装置可以消除巨型浮冰的影响。"));
lua_pop(L, 1);
}
void W806002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("部分海雾与巨型浮冰消失了。"));
lua_pop(L, 1);
}
void W806003(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("部分海雾与巨型浮冰消失，可以继续寻找海豹了！"));
lua_pop(L, 1);
}
void W806010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，塞壬的实验场防御舰队出现了。"));
lua_pop(L, 1);
}
void W820000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("取得能源矩阵，并将其运输到海域中的指定位置。"));
lua_pop(L, 1);
}
void W820010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：触发了塞壬实验场的防御系统，当前区域的洋流变得湍急起来。"));
lua_pop(L, 1);
}
void W820011(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在湍急的洋流中无法继续移动，舰队将返回实验场的起始点。"));
lua_pop(L, 1);
}
void W820020(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：触发了塞壬实验场的防御系统，当前区域的洋流变得湍急起来。"));
lua_pop(L, 1);
}
void W820030(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：触发了塞壬实验场的防御系统，当前区域的洋流变得湍急起来，同时在海面上发现了大量浮冰。"));
replaceString(L, 2, Str("say"), Str("建议：寻找实验场气候调节装置，改变浮冰的状态。"));
lua_pop(L, 1);
}
void W820040(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("结果确认中：指挥官，能源矩阵已经成功安装至预定位置。"));
lua_pop(L, 1);
}
void W823000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("取得能源矩阵，并将其运输到海域中的指定位置。"));
replaceString(L, 2, Str("say"), Str("分析模块同步中：指挥官，能源矩阵周边洋流可以通过实验场中的塞壬洋流控制器予以调整。"));
lua_pop(L, 1);
}
void W823010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("塞壬的信息收集装置，目前处于停机状态……"));
lua_pop(L, 1);
}
void W823020(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：海域中的洋流消失了。"));
lua_pop(L, 1);
}
void W823021(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：触发了塞壬实验场的警报系统，塞壬的信息收集装置被激活了。"));
replaceString(L, 2, Str("say"), Str("塞壬信息收集装置的侦测范围会不停发生变化，舰队进入侦测范围将返回实验场的起始点，能源矩阵也会返回初始位置，注意规避。"));
lua_pop(L, 1);
}
void W823022(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("为了避免被塞壬信息收集装置扫描，舰队已返回起始点，能源矩阵也已返回初始位置。"));
lua_pop(L, 1);
}
void W826000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("取得能源矩阵，并将其运输到海域中的指定位置。"));
replaceString(L, 2, Str("say"), Str("分析模块同步中：指挥官，移动能源矩阵将导致实验场内腐蚀区域的扩散，建议谨慎行动。"));
replaceString(L, 3, Str("say"), Str("腐蚀区域每回合会以十字型向外扩散，可以被海域中障碍物和洋流阻碍，建议以此为基础寻找解决方案。"));
lua_pop(L, 1);
}
void W826020(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("无法向该方向继续移动了！"));
lua_pop(L, 1);
}
void W826021(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("该区域的海水中充斥着腐蚀性液体，还是不要靠近比较好……"));
lua_pop(L, 1);
}
void W826030(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("是否开始运输能源矩阵？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W826031(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：触发了塞壬实验场的警报系统，实验场内腐蚀区域开始扩散了。"));
lua_pop(L, 1);
}
void W826032(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("腐蚀区域正在海面上逐渐扩散，舰队进入腐蚀区域后将返回实验场的起始点，能源矩阵也会返回初始位置，注意规避。"));
lua_pop(L, 1);
}
void W826040(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("为了避免被遭受腐蚀区域伤害，舰队已返回起始点，能源矩阵也已返回初始位置。"));
replaceString(L, 2, Str("say"), Str("建议：腐蚀区域的扩散可以被海域中障碍物和洋流阻碍，建议以此为基础寻找解决方案。"));
lua_pop(L, 1);
}
void W840000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("解除机关的顺序错误，舰队已返回起始点！通过观察光点亮起的顺序，按照顺序解除机关吧。"));
lua_pop(L, 1);
}
void W840010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，内层洋流的方向已经发生了变化。"));
lua_pop(L, 1);
}
void W840011(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，外层洋流的方向已经发生了变化。"));
lua_pop(L, 1);
}
void W840020(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，海域中的洋流正在变得愈发湍急。"));
lua_pop(L, 1);
}
void W840021(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，海域中的发现了能够调节洋流状态的实验场气候调节装置。"));
lua_pop(L, 1);
}
void W843000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，海域中的部分浮冰变为了巨型浮冰。"));
lua_pop(L, 1);
}
void W843001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，海域中的部分浮冰变为了洋流。"));
lua_pop(L, 1);
}
void W843002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，海域中的部分区域重新凝结为了浮冰。"));
lua_pop(L, 1);
}
void W843010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：基于不明原因，海域中出现了大量浮冰，请注意前进航线。"));
lua_pop(L, 1);
}
void W843011(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，海域中的发现了能够调节浮冰状态的实验场气候调节装置。"));
lua_pop(L, 1);
}
void W846000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：海域中存在有多处塞壬设下的陷阱区域，建议注意规避行动。"));
lua_pop(L, 1);
}
void W846010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("为了避免遭受陷阱区域伤害，舰队已返回起始点。"));
replaceString(L, 2, Str("say"), Str("建议：规避陷阱区域，谨慎前行。"));
lua_pop(L, 1);
}
void W846020(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("警告：海域中发现了更高密度的陷阱区域，建议注意规避，谨慎行动。"));
replaceString(L, 2, Str("say"), Str("警告：舰队的导航系统遭受到强烈干扰，在海域中移动将出现某种不确定性。"));
replaceString(L, 3, Str("say"), Str("建议：以当前舰队为中心，向着预定区域的对称区域进行移动，也许可以帮助舰队前往正确的目标。"));
lua_pop(L, 1);
}
void W849010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海面上出现复数了实验场机关。通过观察光点亮起的顺序，按照顺序解除机关吧。"));
replaceString(L, 2, Str("say"), Str("注意，海域中的黄色区域仅可正常触发一次，重复触发将导致舰队返回起始点。"));
replaceString(L, 3, Str("say"), Str("舰队需要在不重复触发任意黄色区域的情况下，一次性将所有黄色区域和实验场机关全部触发。"));
lua_pop(L, 1);
}
void W849011(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("因为黄色区域没有全部触发，舰队回到了起始点。"));
lua_pop(L, 1);
}
