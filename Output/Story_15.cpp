#include "../common.h"
void W849012(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("因为黄色区域被重复触发，舰队回到了起始点。"));
lua_pop(L, 1);
}
void W860000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("使用红色区域控制装置可以改变海域中红色标识区域上障碍物的状态，是否确认使用？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W860001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("使用蓝色区域控制装置可以改变海域中蓝色标识区域上障碍物的状态，是否确认使用？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W860002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("使用紫色区域控制装置可以改变海域中紫色标识区域上障碍物的状态，是否确认使用？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W860010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("通过使用海域中不同颜色标识区域上的控制装置，可以改变对应颜色标识区域上障碍物的状态。"));
replaceString(L, 2, Str("say"), Str("利用控制装置清理航线，将能源矩阵移动至指定区域。"));
lua_pop(L, 1);
}
void W863001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("根据指挥部的消息，这片海域受到塞壬浓雾的影响，导致远处的电力方阵断电。"));
replaceString(L, 2, Str("say"), Str("请指挥官携带三块能源矩阵，依次寻找到雾气中的三座灯塔控制台，点亮灯塔的同时重新构建电力输送通路。"));
lua_pop(L, 1);
}
void W863002(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("请先找到前置的灯塔！"));
lua_pop(L, 1);
}
void W863003(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("未被激活的灯塔..在正下方可以放置能源矩阵。"));
lua_pop(L, 1);
}
void W863004(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("被激活的灯塔，通过能源矩阵通路获得源源不断的电力。可以照亮附近的海域。"));
lua_pop(L, 1);
}
void W863005(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("被激活的灯塔，然而缺少了电力输送通路，仅能靠能源矩阵本身提供的能量发出微弱的光芒。"));
lua_pop(L, 1);
}
void W863006(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("电力方阵，通过底框的颜色可以判断是否被激活。"));
lua_pop(L, 1);
}
void W863007(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("第一块能源矩阵放置完毕，看来通路已经成功构建起来了，请尽快寻找到剩下两处灯塔吧。"));
lua_pop(L, 1);
}
void W863008(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("能源矩阵放置完毕，所有电力方阵都重新开始运转了！"));
replaceString(L, 2, Str("say"), Str("...."));
replaceString(L, 3, Str("say"), Str("！？"));
lua_pop(L, 1);
}
void W863009(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("受到不明影响，电路断开了。"));
lua_pop(L, 1);
}
void W863010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("......—— "));
lua_pop(L, 1);
}
void W863011(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("破局者偷走了能源矩阵，导致通路中断，灯塔照明效率也大大下降了。"));
replaceString(L, 2, Str("say"), Str("浓雾再次笼罩海域，请指挥官迅速找到破局者并击破，夺回能源矩阵！"));
replaceString(L, 3, Str("say"), Str("提示：破局者可能在浓雾中的任意位置出现，靠近破局者或是击破其附近的普通敌人后会收到进一步的提示。"));
lua_pop(L, 1);
}
void W863012(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("感受到了破局者的气息，应该就在附近了！"));
lua_pop(L, 1);
}
void W863013(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("破局者似乎不在附近..."));
lua_pop(L, 1);
}
void W863014(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("感受到了破局者的气息，应该已经非常接近了！！"));
lua_pop(L, 1);
}
void W863015(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("还原了被偷走的能源矩阵！"));
replaceString(L, 2, Str("say"), Str("打捞完海域中剩余的物资后，就从出口离开吧"));
lua_pop(L, 1);
}
void W866000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("激活实验场气候调节装置后可以消除一定范围内的浮冰。浮冰会在6次舰队行动后恢复原状。"));
replaceString(L, 2, Str("say"), Str("通过调整海域中的浮冰的状态，将能源矩阵移动至指定区域。"));
lua_pop(L, 1);
}
void W866010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("使用验场气候调节装置可以消除5x5区域内的所有浮冰，是否确认使用？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W866011(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("周围海域中的浮冰被消除了！"));
replaceString(L, 2, Str("say"), Str("浮冰会在6次舰队行动后恢复原状，届时可以使用实验场气候调节装置可以再次消除浮冰。"));
lua_pop(L, 1);
}
void W866012(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("实验场气候调节装置I周边浮冰完全恢复！控制塔可以再次使用了。"));
lua_pop(L, 1);
}
void W866013(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("实验场气候调节装置II周边浮冰完全恢复！控制塔可以再次使用了。"));
lua_pop(L, 1);
}
void W890110(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("完成实验场内的目标可以收获各类资源奖励，是否前往塞壬实验场？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W890120(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入塞壬实验场后，舰队正在运输的物件（比如能源矩阵）将会消失。"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("确认"));
lua_pop(L,2);
lua_pop(L, 1);
}
void W891000(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，塞壬的实验场防御舰队出现了。"));
lua_pop(L, 1);
}
void W900060(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("完成了物资打捞！"));
lua_pop(L, 1);
}
void W900200(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("结果确认中：指挥官，与塞壬海域守卫作战取得了阶段性胜利。"));
lua_pop(L, 1);
}
void W900201(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("结果确认中：指挥官，与塞壬海域守卫作战取得了阶段性胜利。"));
lua_pop(L, 1);
}
void W900202(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("结果确认中：指挥官，与塞壬海域守卫作战取得了阶段性胜利。"));
lua_pop(L, 1);
}
void W900203(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("结果确认中：指挥官，舰队成功击败了本处海域的塞壬深渊守卫。"));
lua_pop(L, 1);
}
void WANSHENGJIE1(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("\"魔女们\"的万圣夜\n\n<size=45>其一　魔女、永葆纯真</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("\"赠予仍葆纯真者\"？这是赠给吾的礼物？"));
replaceString(L, 3, Str("say"), Str("(悉悉索索)"));
replaceString(L, 4, Str("say"), Str("嘿嘿……吾果然是个美人胚子！"));
replaceString(L, 5, Str("say"), Str("不过，到底是谁送给吾的呢，包裹上也没有名字……"));
replaceString(L, 6, Str("say"), Str("南瓜粥……今天的午饭又是南瓜吗？昨天炖南瓜，前天南瓜饼——吾已经吃腻南瓜了！"));
replaceString(L, 7, Str("say"), Str("确实，营养均衡上……"));
replaceString(L, 8, Str("say"), Str("不是这个问题啦！对了，{namecode:6}，吾收到了一件奇怪的礼物"));
replaceString(L, 9, Str("say"), Str("礼物——？"));
replaceString(L, 10, Str("say"), Str("嘿嘿~好看吗？"));
replaceString(L, 11, Str("say"), Str("倒是很符合{namecode:87}的气质……被你的姐姐们夸赞了吗？"));
replaceString(L, 12, Str("say"), Str("最近姐姐们都不陪吾玩了……什么\"{namecode:87}也该交些同龄的朋友了\"，吾和姐姐们的年龄明明差不多！对了，下午我们一起去哪玩吧！"));
replaceString(L, 13, Str("say"), Str("……"));
replaceString(L, 14, Str("say"), Str("前些天看到{namecode:96}在采购食材，还以为能吃上一顿天妇罗，结果还是南瓜！"));
replaceString(L, 15, Str("say"), Str("{namecode:96}应该不会放过吃天妇罗的机会，除非……"));
replaceString(L, 16, Str("say"), Str("说起来，{namecode:96}最近看吾的眼神也有点怪。南瓜……{namecode:96}……嗯，吾们去调查调查吧！"));
replaceString(L, 17, Str("say"), Str("我也要去?"));
replaceString(L, 18, Str("say"), Str("当然！你不要总沉溺在战斗与训练中啦"));
replaceString(L, 19, Str("say"), Str("很遗憾，我不知道……你们请加油哟~"));
replaceString(L, 20, Str("say"), Str("南瓜是很好吃的喵~浪费粮食可是重罪喵~{namecode:87}要多吃一点喵~"));
replaceString(L, 21, Str("say"), Str("天妇罗？没、没有啦！我是在为过冬储购食材啦！"));
replaceString(L, 22, Str("say"), Str("总觉得……气氛有点紧张"));
replaceString(L, 23, Str("say"), Str("不过，重要的情报总会藏在意想不到的地方，{namecode:6}，跟上吾！"));
replaceString(L, 24, Str("say"), Str("凭什么我和姐姐参加不了万圣夜……对了！干脆到时候……"));
lua_pop(L, 1);
}
void WANSHENGJIE2(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("\"魔女们\"的万圣夜\n\n<size=45>其二　Gold、开始行动</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("那还用说！那个\"恶作剧之日\"快到了呀！"));
replaceString(L, 3, Str("say"), Str("哈哈，重樱的少女们啊，你们就好好期待那天吧！"));
replaceString(L, 4, Str("say"), Str("气氛好像更紧张了……{namecode:6}，你怎么看？"));
replaceString(L, 5, Str("say"), Str("总不会是和白鹰开战……"));
replaceString(L, 6, Str("say"), Str("哎哎哎——！"));
replaceString(L, 7, Str("say"), Str("没错！储蓄食物，准备\"捣乱\"，这是再明显不过的战争讯号！"));
replaceString(L, 8, Str("say"), Str("如果要开战，她们不会隐瞒我"));
replaceString(L, 9, Str("say"), Str("那、那是为了防止走漏风声……对了，去找\"她\"商量一下吧"));
replaceString(L, 10, Str("say"), Str("海~伦娜，吾来啦"));
replaceString(L, 11, Str("say"), Str("等、等等——！！你们就不懂得进门之前先敲门吗！"));
replaceString(L, 12, Str("say"), Str("吾们这次带来了大情报——要开战了！"));
replaceString(L, 13, Str("say"), Str("啊！？"));
replaceString(L, 14, Str("say"), Str("原来如此，恶作剧和南瓜灯都是万圣节的习俗吗……"));
replaceString(L, 15, Str("say"), Str("其他的还有糖果之类的，{namecode:96}应该会用天妇罗代替糖果吧，她喜欢吃天妇罗"));
replaceString(L, 16, Str("say"), Str("不过克利夫兰倒是更中意南瓜派"));
replaceString(L, 17, Str("say"), Str("海伦娜，你手中的\"那个\"是？"));
replaceString(L, 18, Str("say"), Str("……万圣节还有一项习俗是大家打扮成鬼怪的形象游玩。我想给克利夫兰一个惊喜，一直在偷偷缝制她的万圣节服装……这件事绝不要告诉她噢"));
replaceString(L, 19, Str("say"), Str("克利夫兰也能参加\"Trick or treat！\"？"));
replaceString(L, 20, Str("say"), Str("欸，当然可以啊"));
replaceString(L, 21, Str("say"), Str("……你只做了这一件衣服吗？"));
replaceString(L, 22, Str("say"), Str("抱歉，因为得瞒着克利夫兰，这件衣服恐怕都得当天才能完成，实在没有时间再为你们……"));
replaceString(L, 23, Str("say"), Str("实际上，吾前几天收到了一件类似的服装……"));
replaceString(L, 24, Str("say"), Str("喂，这次决斗如果我赢了，就帮我个忙！"));
lua_pop(L, 1);
}
void WANSHENGJIE3(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("\"魔女们\"的万圣夜\n\n<size=45>其三　深夜的恶作剧</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("学院的南瓜灯也全都完成了"));
replaceString(L, 3, Str("say"), Str("哇，越来越有万圣节的气氛啦！"));
replaceString(L, 4, Str("say"), Str("拜你们所赐，大家都开始期待万圣夜了~唉，我也想参加\"Trick or treat\"呀"));
replaceString(L, 5, Str("say"), Str("哼哼哼，很可惜，你已经是大人了！"));
replaceString(L, 6, Str("say"), Str("明明……对了，你们知道吗？听说最近港区深夜里有\"幽灵\"出没"));
replaceString(L, 7, Str("say"), Str("幽灵？"));
replaceString(L, 8, Str("say"), Str("嗯，闪烁着幽光的南瓜成群结队漂浮在空中上，就像是戴上了南瓜头的幽灵一样"));
replaceString(L, 9, Str("say"), Str("欸欸欸——这么好玩的事吾怎么没遇到！"));
replaceString(L, 10, Str("say"), Str("{namecode:87}，最近吾辈遇到了一件怪事"));
replaceString(L, 11, Str("say"), Str("怪事！？"));
replaceString(L, 12, Str("say"), Str("其实……吾辈昨天回到宿舍的时候，发现门前有一件包裹，里面是——这个"));
replaceString(L, 13, Str("say"), Str("这是——"));
replaceString(L, 14, Str("say"), Str("好漂亮~吾也好想要……"));
replaceString(L, 15, Str("say"), Str("很可爱吧~可是，包裹上没有署名，吾辈的妹妹只看见是一道白色的身影放下的包裹。吾辈想当面向她道谢。听说{namecode:87}也收到了类似的包裹，有什么线索吗？"));
replaceString(L, 16, Str("say"), Str("吾什么都没看到……"));
replaceString(L, 17, Str("say"), Str("白色的身影……"));
replaceString(L, 18, Str("say"), Str("终于快到万圣节之夜了！呼呼~吾的衣服好看吗？（转圈）"));
replaceString(L, 19, Str("say"), Str("其实——我也收到了\"礼物\""));
replaceString(L, 20, Str("say"), Str("欸，你也有吗？你有找到什么线索吗？"));
replaceString(L, 21, Str("say"), Str("嗯，我看见了——是幽灵送来的"));
replaceString(L, 22, Str("say"), Str("哈哈~{namecode:6}也会开玩笑了。奇怪，{namecode:19}怎么还没到？"));
replaceString(L, 23, Str("say"), Str("我们去她宿舍看看吧"));
replaceString(L, 24, Str("say"), Str("没想到缝制衣服会这么麻烦……"));
lua_pop(L, 1);
}
void WANSHENGJIE4(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("\"魔女们\"的万圣夜\n\n<size=45>其四　消失的南瓜派</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("抱歉，吾辈遇到了紧急事态——你们有看到吾辈的南瓜派吗？"));
replaceString(L, 3, Str("say"), Str("没有……怎么了？"));
replaceString(L, 4, Str("say"), Str("{namecode:19}姐烤的南瓜派消失了……"));
replaceString(L, 5, Str("say"), Str("可恶……为了让妹妹们吃到最好吃的派，吾辈努力了三个星期，结果刚刚出炉吾辈还没尝味就全都消失了！"));
replaceString(L, 6, Str("say"), Str("派出炉后{namecode:19}姐回屋换外出服，在她换好衣服前我一直在玄关前发呆——然后，派就不见了……"));
replaceString(L, 7, Str("say"), Str("吾辈换好衣服后，那些派就一个不剩地全都消失了——"));
replaceString(L, 8, Str("say"), Str("倒也不是\"一个不剩\"，我有尝一个，很好吃"));
replaceString(L, 9, Str("say"), Str("真的吗？你可不要骗姐姐！"));
replaceString(L, 10, Str("say"), Str("那时候这里只有你们两个人？"));
replaceString(L, 11, Str("say"), Str("嘿嘿，其实当时我也在"));
replaceString(L, 12, Str("say"), Str("克利夫兰！？"));
replaceString(L, 13, Str("say"), Str("这身衣服是海伦娜送给我的。我乃恶魔，收割灵魂。怎么样？嘿嘿~"));
replaceString(L, 14, Str("say"), Str("我当时正巧路过{namecode:19}的宿舍，那段时间内——没有人从玄关进出"));
replaceString(L, 15, Str("say"), Str("你\"路过\"了那么久吗"));
replaceString(L, 16, Str("say"), Str("时间虽然是金钱，但我偶尔也会挥霍一下啦"));
replaceString(L, 17, Str("say"), Str("——（盯）"));
replaceString(L, 18, Str("say"), Str("不会是克利夫兰，她身上藏不了那么多派"));
replaceString(L, 19, Str("say"), Str("还有什么问题吗？"));
replaceString(L, 20, Str("say"), Str("海上骑士的宝贵时间可不要总用在\"路过\"别人家上"));
replaceString(L, 21, Str("say"), Str("万圣节的准备很充分，少了姐姐这份也没有什么影响……"));
replaceString(L, 22, Str("say"), Str("笨蛋{namecode:20}，什么叫\"没什么影响\"！妹妹们期待吾辈的南瓜派很久了，可恶，现在再烤一炉……"));
replaceString(L, 23, Str("say"), Str("马上就要入夜了，时间已经来不及了。而且，大家至少都尝过试做的派……"));
replaceString(L, 24, Str("say"), Str("可这次才是最完美的！"));
replaceString(L, 25, Str("say"), Str("万圣夜可不是用来烤派的。姐姐，她们都在那边等你呢"));
replaceString(L, 26, Str("say"), Str("只能自认倒霉了吗……可恶，这番屈辱吾辈记住了！"));
replaceString(L, 27, Str("say"), Str("{namecode:87}、{namecode:6}、克利夫兰……笨蛋姐姐，今晚玩得开心……"));
replaceString(L, 28, Str("say"), Str("嘻嘻，你也，辛苦啦！"));
replaceString(L, 29, Str("say"), Str("克利夫兰，海伦娜为什么没有跟你一起来？"));
replaceString(L, 30, Str("say"), Str("弗莱彻们已经开始四处讨要糖果了——哪怕她们的主要目标不是我，我也拼尽全力才跑出来……"));
replaceString(L, 31, Str("say"), Str("所以才会在{namecode:19}宿舍附近休息了好一会儿吗？"));
replaceString(L, 32, Str("say"), Str("嘿嘿……"));
replaceString(L, 33, Str("say"), Str("很好，这样就准备万全了！嗯……应该没有遗漏什么吧"));
lua_pop(L, 1);
}
void WANSHENGJIE5(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("\"魔女们\"的万圣夜\n\n<size=45>其五　Trick or treat！</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("Trick or treat！"));
replaceString(L, 3, Str("say"), Str("Trick or treat！"));
replaceString(L, 4, Str("say"), Str("给~顺便尝尝我烤的南瓜派吧"));
replaceString(L, 5, Str("say"), Str("真美味，南瓜的香甜完全被诱发出来了！"));
replaceString(L, 6, Str("say"), Str("没想到早已吃腻的南瓜，还能变得这么美味！{namecode:95}无论哪方面都是吾学习的榜样呢"));
replaceString(L, 7, Str("say"), Str("哈哈~我可不是完美无缺的哟"));
replaceString(L, 8, Str("say"), Str("嗯……我还是更中意海伦娜的"));
replaceString(L, 9, Str("say"), Str("吾们走啦~"));
replaceString(L, 10, Str("say"), Str("一路走好"));
replaceString(L, 11, Str("say"), Str("呼……欸——！！"));
replaceString(L, 12, Str("say"), Str("呀——南瓜灯都飘起来了？是、是幽灵吗——！"));
replaceString(L, 13, Str("say"), Str("南瓜灯对着我们冲了过来——"));
replaceString(L, 14, Str("say"), Str("眼前什么都看不到，全是南瓜灯……你们没事吧，可恶，吾辈的连装炮呢！？"));
replaceString(L, 15, Str("say"), Str("等等——"));
replaceString(L, 16, Str("say"), Str("你是——呀呀呀呀！"));
replaceString(L, 17, Str("say"), Str("{namecode:95}——！！！"));
replaceString(L, 18, Str("say"), Str("南瓜灯都飞到天空中了……{namecode:96}也不见了！"));
replaceString(L, 19, Str("say"), Str("发、发生了什么！？"));
replaceString(L, 20, Str("say"), Str("翔——White姐，我本来也想像你那样缝几套衣服，可是动手后发现缝衣服好难……所以，先勉强用这个吧"));
replaceString(L, 21, Str("say"), Str("这个南瓜是不是忘记挖透气孔了，我怎么什么都看不到！？{namecode:96}、企业你们究竟要干什么？"));
replaceString(L, 22, Str("say"), Str("咳咳，我是gold，她是gray。总、总之，现在我们不是\"大人\"而是\"孩子\"，所以在万圣夜大闹一番也完全没问题！"));
replaceString(L, 23, Str("say"), Str("我是输给了瑞……gold，所以来帮她忙——"));
replaceString(L, 24, Str("say"), Str("喂，你难道一点不甘心都没有吗！"));
replaceString(L, 25, Str("say"), Str("好好好，那么长不大的孩子们就尽情恶作剧吧，我会用南瓜灯配合你们的"));
replaceString(L, 26, Str("say"), Str("哼哼，毕竟\"我\"可比你小不少，gray"));
lua_pop(L, 1);
}
void WANSHENGJIE6(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("\"魔女们\"的万圣夜\n\n<size=45>其六　显露身形的幽灵</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("声音是从上方传来的……"));
replaceString(L, 3, Str("say"), Str("它们在漂浮的南瓜灯上"));
replaceString(L, 4, Str("say"), Str("首先，要做什么恶作剧呢？"));
replaceString(L, 5, Str("say"), Str("那、那个，White姐，你一直说想在万圣夜玩乐，我以为肯定想好恶作剧了……"));
replaceString(L, 6, Str("say"), Str("我又不是Sis Sara"));
replaceString(L, 7, Str("say"), Str("这个声音——你果然是{namecode:95}！"));
replaceString(L, 8, Str("say"), Str("不，我是White！"));
replaceString(L, 9, Str("say"), Str("你是{namecode:95}……吧"));
replaceString(L, 10, Str("say"), Str("不，我是White！！！"));
replaceString(L, 11, Str("say"), Str("好吧，White，你们打算做什么？"));
replaceString(L, 12, Str("say"), Str("嗯……你们喜欢什么恶作剧？"));
replaceString(L, 13, Str("say"), Str("为什么要问被恶作剧的人喜欢什么恶作剧啊……"));
replaceString(L, 14, Str("say"), Str("南瓜灯是你们操纵的吗？用南瓜灯在夜空中摆出一张巨大的鬼脸一定很棒！吾偷偷试过几次但总弄不好……"));
replaceString(L, 15, Str("say"), Str("听起来不错~"));
replaceString(L, 16, Str("say"), Str("Gold，你来负责左侧"));
replaceString(L, 17, Str("say"), Str("明明是我赢了，为什么却是你在指挥！"));
replaceString(L, 18, Str("say"), Str("再磨磨蹭蹭，我这边要摆完了哦"));
replaceString(L, 19, Str("say"), Str("可恶——看我一口气摆好！"));
replaceString(L, 20, Str("say"), Str("呵呵~对了！大家都站到南瓜灯上吧~"));
lua_pop(L, 1);
}
void WANSHENGJIE7(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("\"魔女们\"的万圣夜\n\n<size=45>其七　南瓜舰队，出击！</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("快点，再快一点！呼~真舒服"));
replaceString(L, 3, Str("say"), Str("骑在南瓜灯上视野也变开阔了"));
replaceString(L, 4, Str("say"), Str("吾、吾不会掉下去吧"));
replaceString(L, 5, Str("say"), Str("没问题，我和企业试验了好久找到了最安稳的南瓜形状"));
replaceString(L, 6, Str("say"), Str("{namecode:95}，谢谢你的衣服"));
replaceString(L, 7, Str("say"), Str("等等，我也要道谢！"));
replaceString(L, 8, Str("say"), Str("哈哈~被猜到了呢，正因为有你们，万圣节才能这么有气氛~"));
replaceString(L, 9, Str("say"), Str("欸欸，衣服是{namecode:95}做的吗？"));
replaceString(L, 10, Str("say"), Str("嘿嘿，我的是海伦娜，回去后我也得好好向她道谢呢～"));
replaceString(L, 11, Str("say"), Str("我还准备了很多天妇罗，大家请随意吃~"));
replaceString(L, 12, Str("say"), Str("嗯~{namecode:96}你炸天妇罗确实很有一手"));
replaceString(L, 13, Str("say"), Str("哼哼，你终于认识到我无论哪方面都是最优秀的了吗！"));
replaceString(L, 14, Str("say"), Str("也包括缝制衣服？"));
replaceString(L, 15, Str("say"), Str("——可恶，等着吧，早晚有一天——"));
replaceString(L, 16, Str("say"), Str("好好好，我会一直在你前方等着的——等你心服口服的那天"));
replaceString(L, 17, Str("say"), Str("手下败将，你在说什么！？"));
replaceString(L, 18, Str("say"), Str("吾辈可以把吾辈的妹妹们也叫来吗？"));
replaceString(L, 19, Str("say"), Str("当然没问题，南瓜还有很多~"));
replaceString(L, 20, Str("say"), Str("可以把南瓜下降一点吗？那个独自吃南瓜派的人好像是{namecode:20}"));
replaceString(L, 21, Str("say"), Str("咦，那南瓜派好像是——{namecode:20}！！！"));
replaceString(L, 22, Str("say"), Str("姐、姐姐！？为什么你在飞！？"));
replaceString(L, 23, Str("say"), Str("笨蛋，不是吾辈在飞，是南瓜在飞！"));
replaceString(L, 24, Str("say"), Str("这是吾辈的南瓜派？"));
replaceString(L, 25, Str("say"), Str("……并不是"));
replaceString(L, 26, Str("say"), Str("不要对姐姐撒谎！真是的，都冷了吧——好咸！难道吾辈搞错了盐和糖！还、还好其他妹妹都没有吃到——你也不要吃了！"));
replaceString(L, 27, Str("say"), Str("其实只要是{namecode:19}姐做的食物，无论什么味道大家都会喜欢吃……"));
replaceString(L, 28, Str("say"), Str("正因如此，吾辈才不能让妹妹们吃到辜负了期待的食物！"));
replaceString(L, 29, Str("say"), Str("笨蛋姐姐……"));
replaceString(L, 30, Str("say"), Str("你才是笨蛋，明明直接和吾辈说就行——"));
replaceString(L, 31, Str("say"), Str("那样姐姐一定会放弃万圣夜的游玩，在家重新烤一炉吧"));
replaceString(L, 32, Str("say"), Str("笨蛋，只要你们能吃上最棒的南瓜派，吾辈才不在意是否有时间玩！"));
replaceString(L, 33, Str("say"), Str("所以我才……"));
replaceString(L, 34, Str("say"), Str("……你也不要蹲在墙角吃这种又咸又冷的派了！"));
replaceString(L, 35, Str("say"), Str("我只是觉得扔掉有些可惜罢了……姐姐烤派的时候，心中一定期待着这些派能被我们吃下去吧——"));
replaceString(L, 36, Str("say"), Str("……笨蛋——"));
replaceString(L, 37, Str("say"), Str("万圣夜还远没有结束呢，都坐上南瓜灯吧，叫上所有的\"孩子\"们，南瓜舰队要出击了！"));
lua_pop(L, 1);
}
void WANSHENGYEDEQIYU1(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("万圣夜的「奇遇」\n\n<size=45>一　猫耳的恶魔</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("唔……"));
replaceString(L, 3, Str("say"), Str("朦胧中，脸颊上似乎传来了柔软的触感。"));
replaceString(L, 4, Str("say"), Str("喵———"));
replaceString(L, 5, Str("say"), Str("在梦中，似乎触摸到了什么毛茸茸的\"物体\"……"));
replaceString(L, 6, Str("say"), Str("等到反应过来时，那个\"物体\"已经从手边溜走了，只留下一个拉长的\"喵——\""));
replaceString(L, 7, Str("say"), Str("…………不对。"));
replaceString(L, 8, Str("say"), Str("刚刚不是在做梦！"));
replaceString(L, 9, Str("say"), Str("睁开双眼，四周映射来无数炫目的灯光与狰狞的南瓜头——现在，港区的\"万圣节游园会\"正在热烈进行中。"));
replaceString(L, 10, Str("say"), Str("远处的浪潮冲刷着海岸，沙沙的波涛声中夹杂着大家的欢声笑语。"));
replaceString(L, 11, Str("say"), Str("而我似乎是因为劳累之后的突然放松，不知不觉在长椅上睡着了……"));
replaceString(L, 12, Str("say"), Str("这么说来，刚刚伸手碰到的是……"));
replaceString(L, 13, Str("say"), Str("对、对不起，幽灵先生！真的很对不起！"));
replaceString(L, 14, Str("say"), Str("雅努斯会好好听话当个好孩子的！不要抓走雅努斯！"));
replaceString(L, 15, Str("say"), Str("……幽灵先生？"));
replaceString(L, 16, Str("say"), Str("低头看了看自己的衣服才想起来，这次出门前选择的装扮是幽灵主题。"));
replaceString(L, 17, Str("say"), Str("为了能更贴合幽灵的气质，还带了幽灵头套……"));
replaceString(L, 18, Str("say"), Str("看来至少在着装契合度的方面，本次变装做得还是挺成功的。"));
getByList(L,18);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("摘下头套"));
lua_pop(L,2);
replaceString(L, 19, Str("say"), Str("很遗憾，不是幽灵先生，是指挥官哦。"));
replaceString(L, 20, Str("say"), Str("原、原来是指挥官……吓、吓死我了……"));
replaceString(L, 21, Str("say"), Str("雅、雅努斯也知道万圣节的幽灵大概都是骗人的，但、但是，还是会感到害怕……"));
replaceString(L, 22, Str("say"), Str("特别是在现在这样的夜晚……总感觉会从黑暗中窜出来可怕的幽灵来……是指挥官真是太好了。"));
replaceString(L, 23, Str("say"), Str("说起来，雅努斯这身装扮扮演的是怎样的角色呢？"));
replaceString(L, 24, Str("say"), Str("猫的耳朵加上蝙蝠的翅膀，感觉像是吸血鬼，又稍微有点不同……"));
replaceString(L, 25, Str("say"), Str("其实是……是猫耳的恶魔！雅努斯自己选的搭配……果然很奇怪么？"));
replaceString(L, 26, Str("say"), Str("贾维斯也说过穿这身衣服要小心不要被指挥官看到……"));
replaceString(L, 27, Str("say"), Str("不不不……衣服非常的可爱。"));
replaceString(L, 28, Str("say"), Str("太好了，谢谢指挥官……"));
replaceString(L, 29, Str("say"), Str("指挥官是太累了么……？直接睡在长椅上会着凉的，要不要雅努斯来送你回去？"));
replaceString(L, 30, Str("say"), Str("没关系，刚才只是顺应了一下乘虚而入的睡意罢了，并不是真的很疲劳哦。"));
replaceString(L, 31, Str("say"), Str("原、原来如此……指挥官真是厉害，在这么惊悚的万圣节乐园里也能酣然入睡。"));
replaceString(L, 32, Str("say"), Str("雅努斯接下来有什么计划？"));
replaceString(L, 33, Str("say"), Str("对了！我刚刚正在寻找一只戴帽子的黑猫，指挥官……在睡觉应该没见到吧。"));
replaceString(L, 34, Str("say"), Str("（这么说来，梦里触碰到的不是雅努斯，而是真正的黑猫么……）"));
replaceString(L, 35, Str("say"), Str("咦，原来指挥官留意到它跑开的方向了么？谢谢指挥官！"));
replaceString(L, 36, Str("say"), Str("相互道别之后，雅努斯消失在了万圣节的夜色之中。"));
replaceString(L, 37, Str("say"), Str("那么——精彩的万圣夜才刚刚开始，接下来要去哪里逛逛呢？"));
lua_pop(L, 1);
}
void WANSHENGYEDEQIYU2(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("万圣夜的「奇遇」\n\n<size=45>二　夜裔的长眠地</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("夜色之中，不远处那座巍峨的古堡显得格外瞩目。"));
replaceString(L, 3, Str("say"), Str("塔尖的十字架在夜空当中闪闪发亮……此处古堡之中究竟居住了怎样的人呢？"));
replaceString(L, 4, Str("say"), Str("一边这样想着，一边推开了古堡的大门——"));
replaceString(L, 5, Str("say"), Str("竟敢只身来到我的居所，来到夜裔的长眠之地——"));
replaceString(L, 6, Str("say"), Str("陌生人，你有打扰我清梦的理由吗？"));
replaceString(L, 7, Str("say"), Str("夜魔模样打扮的阿尔比恩此刻正端坐在血色的王座上，静静凝视着大门的方向。"));
replaceString(L, 8, Str("say"), Str("感觉和平时的阿尔比恩判若两人……既然如此，在这里就配合一下她吧——"));
getByList(L,8);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("服装的选择非常有品位，阿尔比恩。"));
replaceString(L, 2, Str("content"), Str("身为眷属，今晚我将效忠于您。"));
lua_pop(L,2);
replaceString(L, 9, Str("say"), Str("不、不是阿尔比恩！应该叫夜裔才对！"));
replaceString(L, 10, Str("say"), Str("唉，算了……果然一被叫到名字就没办法维持威严了，好羞耻……让您看到丢人的一面了。"));
replaceString(L, 11, Str("say"), Str("本来想要借着角色扮演趁机命令一下指挥官的，果然还是失败了……"));
replaceString(L, 12, Str("say"), Str("看来扮成夜裔对我来说还是有点太难了……所以，指挥官，能麻烦您过来稍微当一下阿尔比恩的仆从吗？"));
replaceString(L, 13, Str("say"), Str("就、就一小会就好……"));
replaceString(L, 14, Str("say"), Str("欸，指挥官，没必要那么认真啦……"));
replaceString(L, 15, Str("say"), Str("不过……咳咳，\"仆从，来与我一同共享这甘美的夜晚，如何？\""));
replaceString(L, 16, Str("say"), Str("这是我的荣幸。"));
replaceString(L, 17, Str("say"), Str("阿尔比恩递过来装满红色液体的酒杯，里面的液体在明月的映照之下剔透如红色的宝石。"));
replaceString(L, 18, Str("say"), Str("是红酒吗？"));
replaceString(L, 19, Str("say"), Str("不，不是，只是看起来像红酒的葡萄汁而已……"));
replaceString(L, 20, Str("say"), Str("甘美又清爽，很适合现在这样的夜晚呢。"));
replaceString(L, 21, Str("say"), Str("那个，指……仆从，既然要来共享这甘美的夜晚，那个……"));
replaceString(L, 22, Str("say"), Str("反正既然是演戏的话……还可以更进一步么？"));
replaceString(L, 23, Str("say"), Str("比、比如说让您过来在我的身边宣誓，然后……额，还、还是算了……"));
replaceString(L, 24, Str("say"), Str("什么都没有……请您忘掉这件事吧……！"));
lua_pop(L, 1);
}
void WANSHENGYEDEQIYU3(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("万圣夜的「奇遇」\n\n<size=45>三　魅魔之爱</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("离开了夜裔的城堡，继续探索着万圣节会场。"));
replaceString(L, 3, Str("say"), Str("欢迎来到\"魅魔之爱\"！这里也接待幽灵哟！"));
replaceString(L, 4, Str("say"), Str("啊，请把头套带上，指挥官如果不把头套带上的话，样子可就不像幽灵啦。"));
replaceString(L, 5, Str("say"), Str("其实……"));
replaceString(L, 6, Str("say"), Str("…之前因为装扮得太过写实而吓到了雅努斯？啊哈哈……万圣节会场上偶尔是会有这种情况啦。"));
replaceString(L, 7, Str("say"), Str("不过请放心，我是不会被这种程度吓住的~！"));
replaceString(L, 8, Str("say"), Str("像这样把门一锁，再把信号干扰器一开——很好，这样这里就绝对无人来打扰了。"));
replaceString(L, 9, Str("say"), Str("指挥官，欢迎来到曼彻斯特的私人医护室\"魅魔之爱\"，在这里一定能带给你带来超棒的休息体验哟~"));
replaceString(L, 10, Str("say"), Str("为了创造出无人打扰的环境，曼彻斯特还确实……做了不少准备。"));
replaceString(L, 11, Str("say"), Str("嗯……四周充斥着熏香的气味……让精神不自觉地放松下来了。"));
replaceString(L, 12, Str("say"), Str("指挥官怎么一脸没睡醒的样子，这可不好啊~"));
replaceString(L, 13, Str("say"), Str("……是熏香的效果导致的吧。"));
replaceString(L, 14, Str("say"), Str("才不是呢哦~"));
replaceString(L, 15, Str("say"), Str("事不宜迟，快让我这个白衣天使来给你治疗看看吧！"));
replaceString(L, 16, Str("say"), Str("……可是你这身明明是恶魔的翅膀。"));
replaceString(L, 17, Str("say"), Str("还有恶魔的尾巴呢哦~没有人规定恶魔不能成为白衣天使吧。"));
replaceString(L, 18, Str("say"), Str("快躺下快躺下~作为应对疲劳的对策，指挥官要不要先来点舒缓用的药片，然后享受一下身体的全套呵护呢？"));
replaceString(L, 19, Str("say"), Str("魅魔护士曼彻斯特会好好照你的哦~"));
replaceString(L, 20, Str("say"), Str("感觉今天的曼彻斯特别热情……难道也是受到角色扮演的影响么？"));
replaceString(L, 21, Str("say"), Str("指挥官、指挥官！在发什么呆呢？"));
replaceString(L, 22, Str("say"), Str("啊我知道了~肯定是想让曼彻斯特来喂你对吧？"));
replaceString(L, 23, Str("say"), Str("真拿你没办法，来，张嘴，啊————"));
replaceString(L, 24, Str("say"), Str("在没搞清楚状况的情况下吃下了曼彻斯特递来的药片——是草莓味的。"));
replaceString(L, 25, Str("say"), Str("嘿嘿，忘了跟你说了，药片只是各种口味的糖果而已，请不用担心~"));
replaceString(L, 26, Str("say"), Str("接下来，指挥官请躺好，我来给你做一下全身按摩吧~"));
replaceString(L, 27, Str("say"), Str("……真做么？"));
replaceString(L, 28, Str("say"), Str("当然了！我好歹也是皇家女仆队的成员，手艺可是货真价实的！"));
replaceString(L, 29, Str("say"), Str("指挥官还请放弃抵抗，在曼彻斯特的私人医护室里好好缓解一下疲劳吧——"));
lua_pop(L, 1);
}
void WANSHENGYEDEQIYU4(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("万圣夜的「奇遇」\n\n<size=45>四　万圣节的魔女</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("此刻，正站在魔女的占卜屋前——"));
replaceString(L, 3, Str("say"), Str("万圣节和魔女是绝佳的搭配，但是港区的\"魔女\"，究竟会是谁呢……？"));
replaceString(L, 4, Str("say"), Str("试着敲一敲门好了。"));
replaceString(L, 5, Str("say"), Str("请进，深夜的来访者。"));
replaceString(L, 6, Str("say"), Str("深夜来拜访此地，应该是迷失在万圣之夜的探索者吧？"));
replaceString(L, 7, Str("say"), Str("呵呵，很惊讶么？今天的孟菲斯可是\"万圣之夜的魔女\"哟。"));
replaceString(L, 8, Str("say"), Str("孟菲斯昏暗的帐篷里烟雾缭绕，唯一能看清的只有桌子上发着微光的水晶球，显得一切都朦胧又梦幻。"));
replaceString(L, 9, Str("say"), Str("是用来占卜的水晶球吗？没想到孟菲斯还有这样的技术……"));
replaceString(L, 10, Str("say"), Str("只是普通JK常有的爱好……不对，水晶球占卜可是女巫的必备技能哦。"));
replaceString(L, 11, Str("say"), Str("迷失在万圣之夜的指挥官，你是来寻求有关未来的指引，还是……来与我共享万圣之夜的呢？"));
replaceString(L, 12, Str("say"), Str("其实是……"));
replaceString(L, 13, Str("say"), Str("嘘，别急着回答。来坐好，把手放在水晶球上，让我看看你的未来。我的预言可是很准的哦？"));
replaceString(L, 14, Str("say"), Str("嗯…………原来如此。"));
replaceString(L, 15, Str("say"), Str("居然会是这样……没办法，既然是水晶球中预示的未来，那就只好接受了。"));
getByList(L,15);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("……你看到了什么？"));
replaceString(L, 2, Str("content"), Str("未来很糟糕么？"));
lua_pop(L,2);
replaceString(L, 16, Str("say"), Str("怎么说呢……占卜的结果是，指挥官会跟一位女性度过万圣夜的剩余时间。"));
replaceString(L, 17, Str("say"), Str("可以说糟糕也可以说是不糟糕……毕竟占卜的结果是，指挥官会跟一位女性度过万圣夜的剩余时间。"));
replaceString(L, 18, Str("say"), Str("然后，这位女性是指孟菲斯？"));
replaceString(L, 19, Str("say"), Str("是————虽然我很想这么说，不过很遗憾，那个人不是我。"));
replaceString(L, 20, Str("say"), Str("咦……？难道这个占卜，不只是做做样子而已么？"));
replaceString(L, 21, Str("say"), Str("信则有不信则无嘛。"));
replaceString(L, 22, Str("say"), Str("来，把这个给你戴上~"));
replaceString(L, 23, Str("say"), Str("孟菲斯突然摘下了自己宽大的魔女帽。"));
replaceString(L, 24, Str("say"), Str("还有扫把你要么，关键时刻可以用来防身哦？"));
replaceString(L, 25, Str("say"), Str("怎么突然变得这么正经……是占卜出了什么问题么？"));
replaceString(L, 26, Str("say"), Str("占卜的结果说，会跟指挥官度过万圣夜的人是一个陌生人。出于安全起见还是拿点防身的东西吧。"));
replaceString(L, 27, Str("say"), Str("等等…………你是指港区里混进来了陌生人？！"));
replaceString(L, 28, Str("say"), Str("嗯。不光是占卜的结果，我之前在街上闲逛的时候也实际看到那个陌生人了。"));
replaceString(L, 29, Str("say"), Str("这可是紧急情况，她究竟是怎么混过警卫系统的需要好好调查一下……不会是乘虚而入的塞壬吧？！"));
replaceString(L, 30, Str("say"), Str("是要调查一下，不过估计不紧急，也应该不危险。毕竟之前我看的时候，那个可爱的海盗女士看起来很享受我们的万圣夜呢。"));
replaceString(L, 31, Str("say"), Str("……可爱的海盗女士？"));
replaceString(L, 32, Str("say"), Str("没错——一个带着红色大帽子的海盗女士哦~我觉得这种事就交给指挥官好了，加油哦~"));
replaceString(L, 33, Str("say"), Str("……事不宜迟，与其漫无目的地踱步，不如去找这位悠闲的\"不速之客\"一探究竟吧。"));
lua_pop(L, 1);
}
void WANSHENGYEDEQIYU5(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("万圣夜的「奇遇」\n\n<size=45>五　不速之客</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("远离主题公园的海岸边，一个黑色的身影独自站在那里。"));
replaceString(L, 3, Str("say"), Str("请问……"));
replaceString(L, 4, Str("say"), Str("嘘——"));
replaceString(L, 5, Str("say"), Str("你听见了么，来自大海的悲鸣。"));
replaceString(L, 6, Str("say"), Str("你是指海浪的声音……？"));
replaceString(L, 7, Str("say"), Str("是大海的悲鸣啊，悲鸣！"));
replaceString(L, 8, Str("say"), Str("海盗打扮的少女走进灯光下，有些不满地盯着我看。"));
replaceString(L, 9, Str("say"), Str("话说，你哪位啊？"));
getByList(L,9);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("我是这里的指挥官，你是哪位？"));
lua_pop(L,2);
replaceString(L, 10, Str("say"), Str("哦~你就是这里的姑娘们都在谈论的指挥官啊。"));
replaceString(L, 11, Str("say"), Str("初次见面，我就是乘风破浪而来，为了寻找世间所有美好之物而游历四方的，充满谜团的，可爱又迷人的——"));
replaceString(L, 12, Str("say"), Str("大海盗————皇家财富号！"));
getByList(L,12);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("所以……其实你是偷偷混进来的吧？"));
lua_pop(L,2);
replaceString(L, 13, Str("say"), Str("是混进来的，不过是光明正大混进来的！我进来的时候也没人拦我啊~"));
replaceString(L, 14, Str("say"), Str("……没人拦截的原因，恐怕是你这身海盗的衣服恰好隐藏在了万圣节的鬼怪之中了吧。"));
replaceString(L, 15, Str("say"), Str("也许吧~今晚的鬼怪夜会确实有趣，不过我这身可不是伪装，而是货真价实的哦。"));
replaceString(L, 16, Str("say"), Str("其实……我正在寻找隐藏在会场中的财宝呢！要不要来陪我转转？"));
replaceString(L, 17, Str("say"), Str("在这之前，首先应该解释一下你的身份问题吧？"));
replaceString(L, 18, Str("say"), Str("嗯？我不是说了么，大海盗，皇家财富号！"));
replaceString(L, 19, Str("say"), Str("我懂我懂~这里是你的场子，放心吧我不会捣乱的。"));
replaceString(L, 20, Str("say"), Str("如果实在是不放心的话，就更应该跟我一起转转了吧？"));
replaceString(L, 21, Str("say"), Str("就当是监督一下我这位不安分的海盗小姐好咯？"));
replaceString(L, 22, Str("say"), Str("……看来也没有更好的办法了。如果只是想玩的话，欢迎你，海盗小姐。"));
replaceString(L, 23, Str("say"), Str("不过隐藏在会场中的宝藏……这里恐怕没有这样的东西吧。"));
replaceString(L, 24, Str("say"), Str("有的~有的~你看着这里的宣传传单，上面写的不就是吗？"));
replaceString(L, 25, Str("say"), Str("接过传单，上面写着「最先找到会场内宝藏之人，将会获得一周的甜品免费畅饮券喵~」"));
replaceString(L, 26, Str("say"), Str("走吧走吧~身为大海盗，我怎么能对眼前的财宝坐视不理呢！"));
replaceString(L, 27, Str("say"), Str("不过……啊，首先先得填饱肚子才行。循着香味飘来的方向，冲啊冲啊！"));
replaceString(L, 28, Str("say"), Str("皇家财富突然抽出腰间的佩刀，高举过头顶，一边喊着口号一边跑远了。"));
replaceString(L, 29, Str("say"), Str("…………绝对不能放着她不管，还是赶紧跟上去吧。"));
lua_pop(L, 1);
}
void WANSHENGYEDEQIYU6(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("万圣夜的「奇遇」\n\n<size=45>六　风暴来临之夜</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("美食街上——"));
replaceString(L, 3, Str("say"), Str("哇哦，这些都是什么啊？！！你这港区每天的伙食都是这样的么，也太夸张了吧？！"));
replaceString(L, 4, Str("say"), Str("美食街是每个大型活动中必备的一环，本日的万圣节晚会也不例外。"));
replaceString(L, 5, Str("say"), Str("在美食街上，每个阵营都组织了一些摊位。不过受制于时间和场地，大多都只是简易的小吃车。"));
replaceString(L, 6, Str("say"), Str("肉肠、肉排、烤肉、肉丸子……………这些可都是肉，你管这些叫小吃？"));
replaceString(L, 7, Str("say"), Str("那你们平时的正餐得豪华到什么程度啊？不可想象不可想象……"));
replaceString(L, 8, Str("say"), Str("啊，给我来一份这个，这个，这个还有这个！"));
replaceString(L, 9, Str("say"), Str("没问题，这位女士请收好~还有这一份是额外赠送给指挥官的，也请你慢用~"));
replaceString(L, 10, Str("say"), Str("不过指挥官，这位陌生的女士究竟是……"));
replaceString(L, 11, Str("say"), Str("……给克利夫兰使了一个\"这里情况有些复杂\"的眼神。"));
replaceString(L, 12, Str("say"), Str("原来如此，原来如此……那我就不打扰了，两位请尽情享受万圣夜哦~"));
replaceString(L, 13, Str("say"), Str("等等！虽然不知道这些东西的价格，不过这些你看够不够？"));
replaceString(L, 14, Str("say"), Str("皇家财富突然从腰间拿出几枚金币，潇洒地拍在了桌子上。"));
replaceString(L, 15, Str("say"), Str("用手掂量了一下，沉甸甸的……好像是真正的黄金……？"));
replaceString(L, 16, Str("say"), Str("当然啦，虽然说我是海盗，不过诚信有时候也是很重要的哦！"));
replaceString(L, 17, Str("say"), Str("到此为止了——————"));
replaceString(L, 18, Str("say"), Str("海盗！快放开指挥官！"));
replaceString(L, 19, Str("say"), Str("哈？！你在说什么怪话，你自己不也是海盗么？"));
replaceString(L, 20, Str("say"), Str("啊这个……额，我这身只是万圣节的角色服装而已。不对，重点不是这个，快放开指挥官！"));
replaceString(L, 21, Str("say"), Str("为什么啊？我看上的东西就是我的，这可是我作为大海盗的行事准则！"));
replaceString(L, 22, Str("say"), Str("再说了，你谁啊，我干嘛要听你的？"));
replaceString(L, 23, Str("say"), Str("这个问题应该是我问你才对，你是谁，基于什么目的混入港区接近指挥官的？！"));
replaceString(L, 24, Str("say"), Str("不好，好像皇家财富被俄克拉荷马误会成了危险的闯入者了——"));
getByList(L,24);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("出面解释"));
replaceString(L, 2, Str("content"), Str("静观其变"));
lua_pop(L,2);
replaceString(L, 25, Str("say"), Str("其实——————"));
replaceString(L, 26, Str("say"), Str("原来如此……不是危险的闯入者，只是……身份不明的闯入者？"));
replaceString(L, 27, Str("say"), Str("虽然不是很明白二者之间的区别有多大……不过既然指挥官认定没问题的话，那我也没问题。"));
replaceString(L, 28, Str("say"), Str("不好意思，皇家财富小姐，刚才是我冲动了。"));
replaceString(L, 29, Str("say"), Str("没事没事~你这人倒是忠心耿耿的，我很满意。当船长，手下没有这样的人可不行啊~"));
replaceString(L, 30, Str("say"), Str("多谢夸奖……作为赔礼……来尝尝我做的南瓜派如何？是我最近在学着烤的，很甜的哟。"));
replaceString(L, 31, Str("say"), Str("好哦！不过我要双份！"));
replaceString(L, 32, Str("say"), Str("与两位海盗小姐一同坐在明月之下的港区长椅上，分享着万圣节南瓜派。"));
replaceString(L, 33, Str("say"), Str("呼啊……感觉精神完全放松下来了……"));
replaceString(L, 34, Str("say"), Str("如何，我的手艺还不赖吧？"));
replaceString(L, 35, Str("say"), Str("很棒！决定了，就由你来做我的大副吧！"));
replaceString(L, 36, Str("say"), Str("啊哈哈，那可不行，我一辈子都跟定指挥官了。"));
replaceString(L, 37, Str("say"), Str("那可真遗憾。啊，都已经这个点了啊……"));
replaceString(L, 38, Str("say"), Str("虽然宝藏还没找到，不过我该走了。"));
replaceString(L, 39, Str("say"), Str("呜……好、好恐怖的战斗力！不行，我需要紧急撤离了！"));
replaceString(L, 40, Str("say"), Str("……啊？我还没开炮啊？"));
replaceString(L, 41, Str("say"), Str("就是现在，有破绽！嘿嘿，那指挥官我就带走了哦~！"));
replaceString(L, 42, Str("say"), Str("等等、给我等等！快把指挥官放下来！"));
replaceString(L, 43, Str("say"), Str("一阵狂奔后，与皇家财富来到了会场边缘的某个僻静角落。"));
replaceString(L, 44, Str("say"), Str("嘿嘿，指挥官，这下就又只有我们两个人独处咯。"));
replaceString(L, 45, Str("say"), Str("……你这人，得立刻跟俄克拉荷马解释清楚才行，不然马上就有一整支舰队来抓捕你了！"));
replaceString(L, 46, Str("say"), Str("哇啊……那还真是可怕。"));
replaceString(L, 47, Str("say"), Str("不过你放心，时间到了，我马上就要走了。"));
replaceString(L, 48, Str("say"), Str("你不寻宝了么？"));
replaceString(L, 49, Str("say"), Str("来不及了，虽然宝藏还没找到，不过位置我已经记在藏宝图上了哦。"));
replaceString(L, 50, Str("say"), Str("……这么着急么？"));
replaceString(L, 51, Str("say"), Str("嗯，有些规定必须被遵守，这件事上我也没什么办法。"));
replaceString(L, 52, Str("say"), Str("真是短暂的相遇啊，我们以后还有见面的机会么？"));
replaceString(L, 53, Str("say"), Str("谁知道呢？不过既然大家都驰骋在大海之上，彼此相遇只是时间和概率的问题吧？"));
replaceString(L, 54, Str("say"), Str("说不定是很久之后，也说不定就是明天哟？"));
replaceString(L, 55, Str("say"), Str("我作为使者，乘风而来又随风而去。带走想要带走的，留下想要留下的。"));
replaceString(L, 56, Str("say"), Str("————等我们再次相遇之时，我会带着一大支海盗舰队过来也说不定哟？做好准备吧，指挥官~"));
replaceString(L, 57, Str("say"), Str("嗯……如果真有这一天的话，那可要大幅度加强一下海防力量了啊。"));
replaceString(L, 58, Str("say"), Str("哎别别别啊，准备点好吃的招待一下就行了！"));
replaceString(L, 59, Str("say"), Str("你看看你手底下的舰队规模，我可不敢带人来砸你的场子！"));
replaceString(L, 60, Str("say"), Str("既然如此，随时恭候。"));
replaceString(L, 61, Str("say"), Str("嘿嘿，不错，爽快，我喜欢。我们真是合得来啊~"));
replaceString(L, 62, Str("say"), Str("那我就先走咯，有机会再见吧~"));
replaceString(L, 63, Str("say"), Str("自称皇家财富的少女轻巧地踏上海面，消失在夜色与雾气之中。"));
replaceString(L, 64, Str("say"), Str("来去无踪，真是符合海盗身份的退场方式。"));
replaceString(L, 65, Str("say"), Str("真没想到在万圣节会发生这样不可思议的事，希望再次见面时她能解释清楚就好了。"));
replaceString(L, 66, Str("say"), Str("在那之前，就把今晚的奇遇当成一段宝贵的回忆封存吧——"));
lua_pop(L, 1);
}
void WEICENGHUNHE1(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这里是NY司令部，定时联络的时间到了。"));
replaceString(L, 2, Str("say"), Str("这里是巴尔的摩，舰队正按照预定航线行驶，没有发现任何异常情况~"));
replaceString(L, 3, Str("say"), Str("NY司令部收到。祝各位一轮顺风，随时保持联络。"));
replaceString(L, 4, Str("say"), Str("这里是NY司令部，定时联络的时间到了。"));
replaceString(L, 5, Str("say"), Str("这里是孟菲斯，今天也是和平的一天，没有遭遇任何异常情况"));
replaceString(L, 6, Str("say"), Str("NY司令部收到。气象部门发现你们前方的海域正在生成海雾，请小心行驶。"));
replaceString(L, 7, Str("say"), Str("孟菲斯收到。感谢气象部门的情报，我们会小心应对的。"));
replaceString(L, 8, Str("say"), Str("这里是NY司令部，定时联络的时间到了。"));
replaceString(L, 9, Str("say"), Str("……………"));
replaceString(L, 10, Str("say"), Str("这里是NY司令部，定时联络的时间到了，收到请回复。"));
replaceString(L, 11, Str("say"), Str("这里是NY司令部，呼叫巴拿马要塞支援舰队，收到请回复。"));
replaceString(L, 12, Str("say"), Str("这里是NY司令部，巴尔的摩，海伦娜，孟菲斯，收到请回复。"));
replaceString(L, 13, Str("say"), Str("这里是NY司令部……"));
replaceString(L, 14, Str("say"), Str("………【杂音】……"));
replaceString(L, 15, Str("say"), Str("…【杂音】…遭遇塞壬…要塞…【杂音】…正在遭受进攻…【杂音】…准备等待…【杂音】…支援…"));
replaceString(L, 16, Str("say"), Str("…等待…【杂音】…支援…"));
getByList(L,17);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("<size=51>它们坚定地向前行驶着</size>"));
lua_settable(L, -3);
lua_pop(L,3);
getByList(L,17);
lua_getfield(L, -1, Str("sequence"));
getByList(L,2);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("<size=51>从一侧前往另一侧，从一端前往另一端</size>"));
lua_settable(L, -3);
lua_pop(L,3);
getByList(L,17);
lua_getfield(L, -1, Str("sequence"));
getByList(L,3);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("<size=51>身后是既定的未来，前方是未知的往昔</size>"));
lua_settable(L, -3);
lua_pop(L,3);
getByList(L,17);
lua_getfield(L, -1, Str("sequence"));
getByList(L,4);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("<size=51>它们既不追求毁灭，也不逃避毁灭</size> "));
lua_settable(L, -3);
lua_pop(L,3);
getByList(L,17);
lua_getfield(L, -1, Str("sequence"));
getByList(L,5);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("<size=51>纵使海雾愈发浓厚，波涛愈发汹涌</size>"));
lua_settable(L, -3);
lua_pop(L,3);
getByList(L,17);
lua_getfield(L, -1, Str("sequence"));
getByList(L,6);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("<size=51>它们只是向前行驶着</size>"));
lua_settable(L, -3);
lua_pop(L,3);
getByList(L,17);
lua_getfield(L, -1, Str("sequence"));
getByList(L,7);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("<size=51>缓慢而坚定地向前行驶着</size>"));
lua_settable(L, -3);
lua_pop(L,3);
lua_pop(L, 1);
}
void WEICENGHUNHE10(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞西侧·外海"));
replaceString(L, 2, Str("say"), Str("一边微笑着，一边把敌人全都轰飞了…"));
replaceString(L, 3, Str("say"), Str("哎？我的实战经验不是很丰富啦，刚刚有哪里做得不对么…？"));
replaceString(L, 4, Str("say"), Str("不，做得很出色。近距离看下来，巴尔的摩级的性能果然很优秀。用性能弥补了实战经验的不足么？"));
replaceString(L, 5, Str("say"), Str("哼哼，性能上来说我可是很自信的哦~而且，我可是进行过超多超严格的演习磨练的！"));
replaceString(L, 6, Str("say"), Str("本来想着终于有机会和巴尔的摩并肩作战了呢…"));
replaceString(L, 7, Str("say"), Str("…很担心她么？"));
replaceString(L, 8, Str("say"), Str("当然，怎么可能不担心呢……"));
replaceString(L, 9, Str("say"), Str("布莱默顿面色凝重了一下，不过随即又露出了灿烂的笑容."));
replaceString(L, 10, Str("say"), Str("不过巴尔的摩比我还要强哦，现在肯定已经在塞壬家里闹得天翻地覆了吧！"));
replaceString(L, 11, Str("say"), Str("我也相信她们一定会没事的。"));
replaceString(L, 12, Str("say"), Str("嗯？海雾…？"));
replaceString(L, 13, Str("say"), Str("……【杂音】…听得到么…【杂音】…"));
replaceString(L, 14, Str("say"), Str("…【杂音】…塞壬随着海雾…【杂音】…新一轮进攻"));
replaceString(L, 15, Str("say"), Str("…远离海雾…【杂音】…返回近海…"));
replaceString(L, 16, Str("say"), Str("……………………"));
replaceString(L, 17, Str("say"), Str("通讯中断了。被刚刚出现的海雾干扰了…？"));
replaceString(L, 18, Str("say"), Str("真是步步紧逼，一刻也不得闲啊…大家都在各处战斗，相互担心也解决不了问题。"));
replaceString(L, 19, Str("say"), Str("我们现在能做的就是，保护好巴拿马要塞，挫败塞壬的袭击计划。然后——相信同伴吧。"));
replaceString(L, 20, Str("say"), Str("说得好！虽然战场历练得少，到底还是白鹰优秀的战士。很荣幸与你并肩战斗，巴尔的摩级的布莱默顿。"));
replaceString(L, 21, Str("say"), Str("彼此彼此~很荣幸能同你并肩战斗，埃塞克斯级的邦克山小姐~"));
replaceString(L, 22, Str("say"), Str("（巴尔的摩…一定要平安无事啊）"));
lua_pop(L, 1);
}
void WEICENGHUNHE11(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞东侧？·迷雾中"));
replaceString(L, 2, Str("say"), Str("无畏，情况如何。侦察机有什么发现么？"));
replaceString(L, 3, Str("say"), Str("到处都被浓雾覆盖着，连大海和陆地的区别都分不出来。"));
replaceString(L, 4, Str("say"), Str("通讯、雷达、甚至导航系统都被干扰了，再加上直接影响视觉的浓雾…"));
replaceString(L, 5, Str("say"), Str("就算在镜面海域里也没遇到过这么离谱的事啊。"));
replaceString(L, 6, Str("say"), Str("不会吧，难道说我们居然在要塞附近迷航了么……"));
replaceString(L, 7, Str("say"), Str("也可以这么说吧…？从现在的情况判断，基本可以认定这片浓雾和塞壬脱不开干系。"));
replaceString(L, 8, Str("say"), Str("而企业前辈和巴尔的摩舰队失踪的原因，也极有可能也与这片浓雾有关。"));
replaceString(L, 9, Str("say"), Str("反过来想的话，既然现在我们也在浓雾里，也许在浓雾里就能找到行踪不明的各位了？"));
replaceString(L, 10, Str("say"), Str("前提是塞壬的浓雾内部是相互连通的…不过眼下我们还是要继续执行防御任务才行。"));
replaceString(L, 11, Str("say"), Str("优先寻找要塞的方位和返回路线，至于企业前辈她们的话…一定不会有问题的！"));
replaceString(L, 12, Str("say"), Str("嘿嘿，感觉是我大显身手的时候到了！侦察机没办法在浓雾中侦查，海面的巡查就交给我吧~"));
replaceString(L, 13, Str("say"), Str("探照灯，启动~！前方的威胁，就由我库珀来排除~！"));
replaceString(L, 14, Str("say"), Str("哎？！直接把探照灯打开，小心被当成靶子啊！"));
replaceString(L, 15, Str("say"), Str("如果对方主动暴露火力，不就正好节约了侦查时间嘛~"));
replaceString(L, 16, Str("say"), Str("（…该说她是乐观呢，还是莽撞呢！）"));
replaceString(L, 17, Str("say"), Str("让我的战斗机中队跟着你，如果有任何发现派它们回来联络就好。浓雾之中隐藏了很多敌人，注意安全。"));
replaceString(L, 18, Str("say"), Str("了解~放心放心，论驱逐舰的性能，我可是很有自信的哦~"));
replaceString(L, 19, Str("say"), Str("库珀号，全速------出航------！"));
lua_pop(L, 1);
}
void WEICENGHUNHE12(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("？？？·？？？"));
replaceString(L, 2, Str("say"), Str("企业顺着轮机声传来的方向在迷雾中行驶着。"));
replaceString(L, 3, Str("say"), Str("不知道时间过去了多久，终于，一个身影从浓雾中显现在企业的视野内。"));
replaceString(L, 4, Str("say"), Str("皇……皇家方舟？！"));
replaceString(L, 5, Str("say"), Str("喂，那边的是皇家方舟么！你也被迷雾困在这里了？"));
replaceString(L, 6, Str("say"), Str("仿佛是对企业的喊话做出了反应，皇家方舟停止前进转过身来。"));
replaceString(L, 7, Str("say"), Str("企业？你终于到了，我在这等你好久了。"));
replaceString(L, 8, Str("say"), Str("能顺利脱身的人应该都到齐了，不过，比预期中的要少不少…"));
replaceString(L, 9, Str("say"), Str("顺利脱身的人…你在说些什么？皇家方舟，现在我们在什么地方。"));
replaceString(L, 10, Str("say"), Str("如果继续等下去的话，也许还会有人赶到…总之现在先和我去和大家汇合吧。"));
replaceString(L, 11, Str("say"), Str("喂！皇家方舟，能听到我说话么！喂！"));
replaceString(L, 12, Str("say"), Str("皇家方舟没有理会企业的询问，转过身径直向海雾的深处驶去了。"));
replaceString(L, 13, Str("say"), Str("到底怎么回事，皇…！"));
replaceString(L, 14, Str("say"), Str("企业加速上前试图抓住皇家方舟的肩膀，但是，手却如同触碰到雾气一般划了个空。"));
replaceString(L, 15, Str("say"), Str("这个皇家方舟是，幻影…?"));
replaceString(L, 16, Str("say"), Str("这片海域究竟是什么情况……看来只能跟上去看看了。"));
lua_pop(L, 1);
}
void WEICENGHUNHE13(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞东侧？·迷雾中"));
replaceString(L, 2, Str("say"), Str("埃塞克斯等人在迷雾中一边与若隐若现的敌人交火，一边寻找着返回要塞的航路。"));
replaceString(L, 3, Str("say"), Str("啊啊啊…真是的，到处都是不知道从哪儿冒出来的敌人。"));
replaceString(L, 4, Str("say"), Str("都走了这么久了…总感觉我们是在原地打转嘛，这样下去就没完没了啊！"));
replaceString(L, 5, Str("say"), Str("…大喊大叫只会浪费更多力气哦，马布尔黑德…"));
replaceString(L, 6, Str("say"), Str("你没有资格说我吧…！刚才隔着老远就听到你在喊什么\"雷霆切断\"\"旋风一击\"那都些是什么啊！"));
replaceString(L, 7, Str("say"), Str("嘿嘿嘿，那些都是库珀自创的必杀技名，很帅吧！"));
replaceString(L, 8, Str("say"), Str("从吸引敌人火力的角度来说，确实还蛮有效果啦…"));
replaceString(L, 9, Str("say"), Str("呜啊……我也好累啊………！"));
replaceString(L, 10, Str("say"), Str("（完全找不到返回要塞的路，虽然再打下去也没什么问题，不过也不能一直拖下去…）"));
replaceString(L, 11, Str("say"), Str("（唔…迄今为止对抗塞壬的经验来判断…）"));
replaceString(L, 12, Str("say"), Str("（咦？埃塞克斯又在发呆…从企业前辈消失之后，已经发呆了几次了呀…）"));
replaceString(L, 13, Str("say"), Str("（八成又在想\"…如果企业前辈在这种局面会做些什么…\"吧）"));
replaceString(L, 14, Str("say"), Str("（…如果企业前辈在这种局面下会做些什么呢…）"));
replaceString(L, 15, Str("say"), Str("（果然…唉，她都那么努力了，再多自信一些也没关系嘛）"));
replaceString(L, 16, Str("say"), Str("埃塞克斯，你没事吧？"));
replaceString(L, 17, Str("say"), Str("（…如果企业前辈的话…）"));
replaceString(L, 18, Str("say"), Str("埃塞克斯！！"));
replaceString(L, 19, Str("say"), Str("哇啊啊啊！企业前辈？！"));
replaceString(L, 20, Str("say"), Str("……真败给你了，这种时候发什么呆呢，又有一波敌人靠过来了哦。"));
replaceString(L, 21, Str("say"), Str("不是不是不是，你误会了！我是在想如果这种局面下企业前辈会怎么做啦！"));
replaceString(L, 22, Str("say"), Str("企业前辈的话，八成会向着敌人最密集的地方冲过去，然后潇洒的把敌人全部消灭吧。"));
replaceString(L, 23, Str("say"), Str("有些时候企业前辈的战术根本构不成参考，埃塞克斯你应该更----"));
replaceString(L, 24, Str("say"), Str("………………对！就是这样！和镜面空间一样，塞壬维持这么大规模的海雾一定在某处存在有控制装置！"));
replaceString(L, 25, Str("say"), Str("而控制装置一定会被塞壬重兵保护！只要找到塞壬最密集的地方解决了控制装置，我们就能突破困境了吧！"));
replaceString(L, 26, Str("say"), Str("无畏，帮大忙了！"));
replaceString(L, 27, Str("say"), Str("哎哎？！！不用客气……"));
lua_pop(L, 1);
}
void WEICENGHUNHE14(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("\"这里是执行侦察任务中的库珀，前方出现的塞壬浑身散发着紫色光芒，看起来好帅，也许是新型号\""));
replaceString(L, 2, Str("say"), Str("\"不但火力变强了，而且装甲也变厚了，我的龙卷…\"，咳……！"));
replaceString(L, 3, Str("say"), Str("\"我的‘龙卷风爆裂射击’造成的损伤也明显变小了，请求迅速增援\""));
replaceString(L, 4, Str("say"), Str("库珀刚刚用侦察机传来了这样的消息哎…"));
replaceString(L, 5, Str("say"), Str("战斗力更强的新型塞壬…理论上来说应该会守卫着重要目标吧。"));
replaceString(L, 6, Str("say"), Str("Bingo~！看来我们判断的没错，中大奖了。"));
replaceString(L, 7, Str("say"), Str("大家准备支援库珀。向新型塞壬出现的方向进攻，迷雾生成的秘密肯定就在那里！"));
replaceString(L, 8, Str("say"), Str("收到~无畏、Getting on!"));
lua_pop(L, 1);
}
void WEICENGHUNHE15(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("哼，新型塞壬也不过如此，就这样一鼓作气突破过去！"));
replaceString(L, 2, Str("say"), Str("无畏小心---！"));
replaceString(L, 3, Str("say"), Str("轰------！"));
replaceString(L, 4, Str("say"), Str("什么？居然是来自水下的攻击--？！"));
replaceString(L, 5, Str("say"), Str("护航任务我可是超擅长的，以为这点小把戏能逃过我的眼睛么~"));
replaceString(L, 6, Str("say"), Str("躲在水下偷窥可是变态的行为，全都·给我·出来·吧！"));
replaceString(L, 7, Str("say"), Str("轰------！"));
replaceString(L, 8, Str("say"), Str("马布尔黑德一边用可爱的语气说着可怕的话，一边向四周抛下了大量的深水炸弹。"));
replaceString(L, 9, Str("say"), Str("哇啊啊啊！居然藏了这么多？！"));
replaceString(L, 10, Str("say"), Str("呜啊…我也被吓了一跳，其实我也只看到了一两艘而已…没想到还藏着这么多…"));
replaceString(L, 11, Str("say"), Str("塞壬的潜艇，到底还是潜艇么…如果被护卫舰锁定的话就只有选择上浮或者等死。"));
replaceString(L, 12, Str("say"), Str("虽然上浮和等死也没什么区别，反正它们也不会投降就是了…"));
replaceString(L, 13, Str("say"), Str("根据记录，塞壬潜艇就算在水面上依然有不错的战斗力，大家不要因为潜艇上浮了而掉以轻心！"));
lua_pop(L, 1);
}
void WEICENGHUNHE16(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这次是真的全部解决了~！用飞机打潜艇也意外的有趣呢。"));
replaceString(L, 2, Str("say"), Str("要不然以后认真考虑一下做做反潜任务好了…"));
replaceString(L, 3, Str("say"), Str("总感觉比上次见你的时候更厉害了，背地里看来没少努力啊。"));
replaceString(L, 4, Str("say"), Str("嘿嘿，我在维修期间的时候也没闲着，姑且各方面的理论知识都储备了不少哦。"));
replaceString(L, 5, Str("say"), Str("可惜一直没什么好的实践机会…要是我没有总是那么倒霉就好了（小声）"));
replaceString(L, 6, Str("say"), Str("不要灰心嘛~运气只是实力的一部分！运气缺失掉的部分，用更强的实力弥补就好啦！"));
replaceString(L, 7, Str("say"), Str("你看这次作战，到目前为止不还是很顺利么。"));
replaceString(L, 8, Str("say"), Str("确实呢…歼灭敌人的战斗很顺利，前进途中也很顺利，只要能这么继续顺利下去-------"));
replaceString(L, 9, Str("say"), Str("从远方突然传来的巨大拍击声，打断了无畏刚刚有些自信的话语。"));
replaceString(L, 10, Str("say"), Str("然后几乎顷刻之间，滔天巨浪一排排的向着众人袭来，整个海面仿佛遭受风暴袭击一般，剧烈的上下抖动起来。"));
replaceString(L, 11, Str("say"), Str("风暴？哎不对，是海面擅自变的波涛汹涌了？！大家小心规避，千万别被巨浪卷下水了！"));
replaceString(L, 12, Str("say"), Str("提醒得……有些晚了…埃塞克斯………咕噜咕噜……咕噜……"));
replaceString(L, 13, Str("say"), Str("一个在近处生成的巨浪，将躲闪不及的无畏一口卷入了水面之下。"));
replaceString(L, 14, Str("say"), Str("……咕噜，咕噜咕噜……咕噜咕噜…！（……好强大的冲击力！身体被拍到水下了……怎么还会有这种事…！）"));
replaceString(L, 15, Str("say"), Str("无畏挣扎着尝试向水面方向游动，然而身体却事与愿违的下坠着。"));
replaceString(L, 16, Str("say"), Str("（…航母的舰装无法在水下自由行动，没用的知识增加了…）"));
replaceString(L, 17, Str("say"), Str("（…真是的，明明到刚才为止还那么顺利…）"));
replaceString(L, 18, Str("say"), Str("（……还想着这次终于能帅气的大显身手了呢）"));
replaceString(L, 19, Str("say"), Str("（为什么，我总是这么倒霉啊………）"));
replaceString(L, 20, Str("say"), Str("哎？！喂~~~喂~~~~！？前方正在游泳的是无畏么？！"));
replaceString(L, 21, Str("say"), Str("（……？！出去侦察的蓝鳃鱼居然在这个时候赶回来了么，千钧一发啊！）"));
replaceString(L, 22, Str("say"), Str("快点…咕噜咕噜…救我上去…！"));
replaceString(L, 23, Str("say"), Str("无畏…你你你变成潜艇了么？！（震惊）"));
replaceString(L, 24, Str("say"), Str("……咕噜咕噜，咕……咕噜咕噜咕噜…！（…怎么可能啊笨蛋！我明显是遇难了啊！）"));
replaceString(L, 25, Str("say"), Str("哇啊啊？！！坚、坚持住无畏，我马上就救你上去！！！"));
lua_pop(L, 1);
}
void WEICENGHUNHE17(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("啊---累--死--我--了----"));
replaceString(L, 2, Str("say"), Str("居然回来了。"));
replaceString(L, 3, Str("say"), Str("不是有那句话么，只要不想赢，就不会输咯~"));
replaceString(L, 4, Str("say"), Str("哦。"));
replaceString(L, 5, Str("say"), Str("话说为什么这里也被迷雾遮起来了啊，完全没必要吧……"));
replaceString(L, 6, Str("say"), Str("神秘感。"));
replaceString(L, 7, Str("say"), Str("………"));
replaceString(L, 8, Str("say"), Str("…"));
replaceString(L, 9, Str("say"), Str("我说……！现在难得有一次像这样的多系统联合行动，不要这么冷淡好不好啊！"));
replaceString(L, 10, Str("say"), Str("我不是很喜欢出来活动。"));
replaceString(L, 11, Str("say"), Str("而且…通讯BLOCK，导航BLOCK，雷达BLOCK，雾气浓度30%增大，混合率50%提高…"));
replaceString(L, 12, Str("say"), Str("现在工作中。"));
replaceString(L, 13, Str("say"), Str("那么闲的话，再出去拖延一阵怎么样？"));
replaceString(L, 14, Str("say"), Str("哎？我可不要~这次任务我已经圆满完成了，该去下一个有意思的地方咯~"));
replaceString(L, 15, Str("say"), Str("那就快走，别干扰我工作。"));
replaceString(L, 16, Str("say"), Str("是是是~！！"));
replaceString(L, 17, Str("say"), Str("………"));
replaceString(L, 18, Str("say"), Str("接下来，就用这一段吧……"));
lua_pop(L, 1);
}
void WEICENGHUNHE18(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("？？？·？？？"));
replaceString(L, 2, Str("say"), Str("企业紧跟着皇家方舟的幻影，来到了一片全新的区域。"));
replaceString(L, 3, Str("say"), Str("白鹰、皇家、重樱、铁血…居然有这么多人在这里？"));
replaceString(L, 4, Str("say"), Str("简直像记录里的碧蓝航线成立大会一样。大家上一次这么聚在一起，是多久之前了呢……"));
replaceString(L, 5, Str("say"), Str("噢？！重樱的各位也来了……只有你们到了么？"));
replaceString(L, 6, Str("say"), Str("目前为止，是的…{namecode:91}她们在路上发生了点意外，等解决之后应该就会赶来和我们汇合了。"));
replaceString(L, 7, Str("say"), Str("你们皇家的伊丽莎白也没来么…唉，看来现在各家情况都很惨啊。"));
replaceString(L, 8, Str("say"), Str("………伊丽莎白陛下那边暂时无法脱身，我们还在努力中…"));
replaceString(L, 9, Str("say"), Str("哎，大家打起精神来，现在不是还有企业在这儿嘛！今后的事肯定都会好起来啦~"));
replaceString(L, 10, Str("say"), Str("希望如此吧…该谈正事了。企业，组织的名字你想好了么？"));
replaceString(L, 11, Str("say"), Str("……名字？"));
replaceString(L, 12, Str("say"), Str("\"火炬\"啊…黑暗中的一丝光明，照亮前进的道路。不错，我喜欢。"));
replaceString(L, 13, Str("say"), Str("我们真的要和那群家伙合作么…？\"它们\"原本是作为我们的替代品被制造出来的吧。"));
replaceString(L, 14, Str("say"), Str("？！！\"它们\"难道是！"));
replaceString(L, 15, Str("say"), Str("原来是这样……如果是这个理由的话…就看看它们的表现吧。"));
replaceString(L, 16, Str("say"), Str("喂！到底是怎么回事，你们打算做什么？！"));
replaceString(L, 17, Str("say"), Str("当然，企业的提问没有得到任何幻影的回应。"));
lua_pop(L, 1);
}
void WEICENGHUNHE19(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞西侧·外海 稍早前"));
replaceString(L, 2, Str("say"), Str("伴随着迷雾的出现，越来越密集的塞壬舰队向要塞发动了进攻。"));
replaceString(L, 3, Str("say"), Str("不过……"));
replaceString(L, 4, Str("say"), Str("很好，就和计划中的一样，由驻防舰队吸引火力，配合要塞防御消灭敌人。"));
replaceString(L, 5, Str("say"), Str("物资保障检查…没问题！就算再打上几个月也能坚持的住。"));
replaceString(L, 6, Str("say"), Str("哼，放马过来吧塞壬。今天巴拿马要塞就是你们的葬身之处…"));
replaceString(L, 7, Str("say"), Str("卡萨布兰卡，Nice作战计划~塞壬舰队这么浩大的攻势就被这么轻松化解了啊。"));
replaceString(L, 8, Str("say"), Str("只是在负责后勤没有什么前线作战经验的我…作战计划被大家采用是我的荣幸！"));
replaceString(L, 9, Str("say"), Str("正确的意见就应该采用，与职位和资历无关。"));
replaceString(L, 10, Str("say"), Str("没有人型指挥带领的塞壬舰队虽然火力强大但是作战方式单一，这件事虽然我也知道…"));
replaceString(L, 11, Str("say"), Str("没想到会单一到这种程度啊…"));
replaceString(L, 12, Str("say"), Str("希望东侧的防御也能顺利进行就好了，那边面临的问题应该比我们还严重。"));
replaceString(L, 13, Str("say"), Str("放心。就算暂时失去了企业，那边还有埃塞克斯进行指挥，肯定没问题的。"));
replaceString(L, 14, Str("say"), Str("轰-----！"));
replaceString(L, 15, Str("say"), Str("？！！发生什么事了？！"));
replaceString(L, 16, Str("say"), Str("一处要塞炮台被摧毁了…果然没这么顺利么。里诺、布莱默顿，报告前线情况。"));
replaceString(L, 17, Str("say"), Str("塞壬舰队突然开始无视前线舰队的阻拦，径直向要塞方向开火了！"));
replaceString(L, 18, Str("say"), Str("我们的企图被发现了？！能重新吸引它们的注意么？"));
replaceString(L, 19, Str("say"), Str("不行，阻止不了。塞壬完全无视了我们的任何攻击，就算会被摧毁也毫不反击的径直向要塞方向突击！"));
replaceString(L, 20, Str("say"), Str("就算是没有自我意识的量产型，居然能对自己的舰队下达这样的命令…"));
replaceString(L, 21, Str("say"), Str("……为了达成战斗目标不惜牺牲参战全员么？！这种战斗方式我绝对不能认同…！"));
replaceString(L, 22, Str("say"), Str("只要局势需要就算是净化者之类的人型指挥也可以当成弃子，更何况单纯被当成兵器的量产型…"));
replaceString(L, 23, Str("say"), Str("也是…塞壬，就是这样一种存在。"));
replaceString(L, 24, Str("say"), Str("继续被动防御下去，要塞很快就撑不住了哦！怎么样，要改变战术么？"));
replaceString(L, 25, Str("say"), Str("看来塞壬的指挥系统终于上线…没办法继续投机取巧了。"));
replaceString(L, 26, Str("say"), Str("如果塞壬的命令是不惜一切代价摧毁巴拿马要塞的话，我们要做的事就很简单了…"));
replaceString(L, 27, Str("say"), Str("不惜一切代价，保护巴拿马要塞的安全。由我们主动出击，在塞壬接近要塞前消灭它们！"));
lua_pop(L, 1);
}
void WEICENGHUNHE2(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("数日前，前往巴拿马要塞的支援舰队在发出了一封增援请求的电文后便失去了联络."));
replaceString(L, 2, Str("say"), Str("NY司令部紧急组织了调查舰队前往要塞驻扎，同时寻找失联舰队的踪迹."));
replaceString(L, 3, Str("say"), Str("巴拿马要塞东侧·外海"));
replaceString(L, 4, Str("say"), Str("哇哦，这就是传说中的巴拿马要塞？！实际到这里来还是第一次…看上去真壮观啊！"));
replaceString(L, 5, Str("say"), Str("布莱默顿一直在大西洋内活跃，没有路过这里的经历吧。"));
replaceString(L, 6, Str("say"), Str("巴拿马要塞是对抗塞壬的重要据点，其守护的运河更是极其重要的战略通道。"));
replaceString(L, 7, Str("say"), Str("尤其是对于后勤运输系统来说，简直可以称作枢纽通道哦。"));
replaceString(L, 8, Str("say"), Str("源源不断的商船和运输舰通过运河连接着两片大洋。对于现在长期的拉锯战来说，这种通道就像生命血管一样重要。"));
replaceString(L, 9, Str("say"), Str("哎？原来只知道这里很重要，没想到这么厉害啊！开始期待起来在这里的驻防生活了~"));
replaceString(L, 10, Str("say"), Str("唔…都快到要塞了，一路上别说塞壬了连点战斗的痕迹都没有发现。"));
replaceString(L, 11, Str("say"), Str("风平浪静的，巴尔的摩她们完全是毫无征兆的失踪了…这下麻烦了啊。"));
replaceString(L, 12, Str("say"), Str("埃塞克斯，她们会不会是被卷入镜面海域迷航了？"));
replaceString(L, 13, Str("say"), Str("要是是被卷入镜面海域的话，我们肯定会在某一刻突然失去她们的通讯才对，不太可能会收到求援通讯…"));
replaceString(L, 14, Str("say"), Str("根据记录，在失踪当日附近航线上的运输舰队也没有汇报任何有关塞壬袭击造成损失或者运输舰失联的情况。"));
replaceString(L, 15, Str("say"), Str("不过气象部门倒是说当时那片区域出现了大面积的海雾，有没有可能和这个有关？"));
replaceString(L, 16, Str("say"), Str("遭遇海雾，然后通讯系统和导航系统全都发生故障，最后误入塞壬聚集的海域…不会有这么倒霉的迷航理由吧，啊哈哈。"));
replaceString(L, 17, Str("say"), Str("企业前辈有什么发现么？"));
replaceString(L, 18, Str("say"), Str("没，目前为止什么发现都没有，反而总感觉平静的有点反常。"));
replaceString(L, 19, Str("say"), Str("就算现在看起来一切正常也不能掉以轻心，巴尔的摩她们是不会无缘无故发来警告的。"));
replaceString(L, 20, Str("say"), Str("我们的任务除了寻找失踪舰队还有加强要塞防御本身…"));
lua_pop(L, 1);
}
void WEICENGHUNHE20(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞东侧？ 稍早前"));
replaceString(L, 2, Str("say"), Str("水面之下，蓝鳃鱼正向着要塞的方向狂奔着。"));
replaceString(L, 3, Str("say"), Str("终……终于甩掉了么，太好了！得赶紧告大家塞壬在水下的行动-----"));
replaceString(L, 4, Str("say"), Str("嗖—-嗖——-！"));
replaceString(L, 5, Str("say"), Str("这些声音是…什么？！"));
replaceString(L, 6, Str("say"), Str("深渊之中，无数的塞壬潜艇正结成长队正向要塞的方向移动着。"));
replaceString(L, 7, Str("say"), Str("仿佛迁徙中的深海鱼群一样无穷无尽，稍微盯着看一会，就会由心底感到毛骨悚然。"));
replaceString(L, 8, Str("say"), Str("什么时候绕到前面来的？！……完了……这怎么办啊。"));
replaceString(L, 9, Str("say"), Str("这里距离要塞应该不远了，可是，由无数塞壬潜艇组成的屏障无论如何不可能突破过去的…"));
replaceString(L, 10, Str("say"), Str("怎么办，就算在这里和塞壬同归于尽也帮不上要塞的大家多少忙啊，呜呜呜…"));
replaceString(L, 11, Str("say"), Str("不对不对，这群塞壬好像还没有发现我的行踪，难道说…其实我现在的位置才是最安全的？"));
replaceString(L, 12, Str("say"), Str("哎嘿嘿，这样的话……"));
replaceString(L, 13, Str("say"), Str("蓝鳃鱼躲在礁石的阴影中凝视着塞壬的潜艇群，终于，她发现了一个异常的目标。"));
replaceString(L, 14, Str("say"), Str("好大…！这个就是指挥系统吧。"));
replaceString(L, 15, Str("say"), Str("如果我在这里把塞壬的指挥官解决掉，进攻要塞的塞壬变得群龙无首，我们不就赢定了嘛！"));
replaceString(L, 16, Str("say"), Str("以后这场战斗都会被大家称为\"蓝鳃鱼式的胜利\"了，哎嘿嘿嘿----"));
replaceString(L, 17, Str("say"), Str("咦？起雾了…？不可能不可能，海水里怎么会起雾啊！"));
replaceString(L, 18, Str("say"), Str("这究竟是------"));
replaceString(L, 19, Str("say"), Str("哇啊啊啊啊啊啊----------------------"));
replaceString(L, 20, Str("say"), Str("在发动攻击之前，蓝鳃鱼的视野被突然出现的白色覆盖，然后身体就像被扔进了滚桶中一样，天旋地转起来。"));
replaceString(L, 21, Str("say"), Str("等再次回过神来的时候…"));
replaceString(L, 22, Str("say"), Str("疼疼疼…塞壬舰队怎么不见了…这是在哪儿啊…"));
lua_pop(L, 1);
}
void WEICENGHUNHE21(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞西侧？ 迷雾中"));
replaceString(L, 2, Str("say"), Str("吃我一炮，再见了哟！"));
replaceString(L, 3, Str("say"), Str("轰----！"));
replaceString(L, 4, Str("say"), Str("疑似目标排除，塞壬指挥系统…未发现异常。"));
replaceString(L, 5, Str("say"), Str("又错了么…这是排除的第多少个疑似目标了？"));
replaceString(L, 6, Str("say"), Str("二十一个…"));
replaceString(L, 7, Str("say"), Str("没想到会在这里碰上塞壬的新型号啊…每一艘看上去都好可疑！"));
replaceString(L, 8, Str("say"), Str("大家加油，加油~打起精神来！只要坚持下去，总会找到我们的目标哦！"));
replaceString(L, 9, Str("say"), Str("里诺还是一贯的有活力…很有成为拉拉队员的素质啊。"));
replaceString(L, 10, Str("say"), Str("在乐观这一点上，我还是很有自信的~这种时候就让我为大家加油打气吧，Fight~！"));
replaceString(L, 11, Str("say"), Str("也是…如果分不清指挥舰的话，就这么沿路全部干掉就是了~"));
replaceString(L, 12, Str("say"), Str("用巴尔的摩的话来讲就是---英雄可不能临阵退缩啊！"));
replaceString(L, 13, Str("say"), Str("哦？！就是这种感觉，布莱默顿小姐，Cool~!"));
replaceString(L, 14, Str("say"), Str("嘿嘿，又来了一个目标，感觉这个也很像指挥舰，要上了哦！"));
lua_pop(L, 1);
}
void WEICENGHUNHE22(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("嗡---------"));
replaceString(L, 2, Str("say"), Str("塞壬轰炸机，从什么时候绕过来的？！"));
replaceString(L, 3, Str("say"), Str("休想得逞，看招！"));
replaceString(L, 4, Str("say"), Str("数架利用迷雾掩护的轰炸机试图对邦克山发动最后的偷袭，然后在里诺及时而凶猛对空火力下变为了一团团燃烧的残渣。"));
replaceString(L, 5, Str("say"), Str("多谢，在战斗结束的时候因为偷袭挂彩可划不来。"));
replaceString(L, 6, Str("say"), Str("我这也搞定了！刚刚那招很帅哦，里诺！"));
replaceString(L, 7, Str("say"), Str("我可是专防空特化的亚特兰大级，英雄们的后背放心交给我来守护吧。"));
replaceString(L, 8, Str("say"), Str("周围没有发现更多塞壬靠近的迹象了，战斗暂时结束。要先回要塞补给一下么？"));
replaceString(L, 9, Str("say"), Str("迷雾还没消散，恐怕没这么简单…听----"));
replaceString(L, 10, Str("say"), Str("唔，这个声音…是Last Boss登场的声音么？"));
replaceString(L, 11, Str("say"), Str("不对，声音越来越大了。这个声音是…波涛的咆哮声！大家稳住，巨浪要来了--！"));
replaceString(L, 12, Str("say"), Str("哎哎？！怎么平白无故海面上会出现滔天巨浪啊！"));
replaceString(L, 13, Str("say"), Str("总感觉是冲着我们来的，大家注意规避，千万别被卷到海底进去哦！"));
replaceString(L, 14, Str("say"), Str("滔天的巨浪与浓密的海雾，仿佛整片大海都成为了敌人。众人就像落入了捕食者的巨口中一样，全力避免着被吞噬的命运…"));
lua_pop(L, 1);
}
void WEICENGHUNHE23(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("企业，它们来了。"));
replaceString(L, 2, Str("say"), Str("不知何时，一位\"不速之客\"加入了这场对话中。"));
replaceString(L, 3, Str("say"), Str("塞壬……？！！"));
replaceString(L, 4, Str("say"), Str("突然出现的塞壬让企业条件反射般放出了舰载机，然后子弹穿过幻影消逝在远方的迷雾中。"));
replaceString(L, 5, Str("say"), Str("「关键点G」，向你致以审判者大人的问候。"));
replaceString(L, 6, Str("say"), Str("「关键点G」…审判者…"));
replaceString(L, 7, Str("say"), Str("\"拉普拉斯妖\"应该为全体人类服务，而不是作为战争的工具，造物主大人应该也是如此认为的。"));
replaceString(L, 8, Str("say"), Str("所以，我们会提供活动基地。而你们，需要保证这里的研究不会落入不应得到之人手中。"));
replaceString(L, 9, Str("say"), Str("我们也有我们的立场，有些时候无法随意行动。"));
replaceString(L, 10, Str("say"), Str("不要说出名字来。用代号称呼更有神秘感，审判者大人是这么认为的。"));
replaceString(L, 11, Str("say"), Str("请放心，按照协议，我们会参与营救计划。"));
replaceString(L, 12, Str("say"), Str("因为这是造物主大人与审判者大人共同的期望。"));
replaceString(L, 13, Str("say"), Str("至此，谈妥了。执行者舰队的配属坐标将在稍后向你们同步，记得在行动中避开。"));
replaceString(L, 14, Str("say"), Str("在与塞壬协商合作…？这些…到底是什么……"));
replaceString(L, 15, Str("say"), Str("当然，面对企业的提问面前的幻影们依然没有做出任何-------"));
replaceString(L, 16, Str("say"), Str("这些都是，往昔的碎片哦。"));
lua_pop(L, 1);
}
void WEICENGHUNHE24(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞东侧？·迷雾中"));
replaceString(L, 2, Str("say"), Str("千钧一发之际出现的蓝鳃鱼，将被巨浪拍入水中的无畏救了上来。"));
replaceString(L, 3, Str("say"), Str("然后不知何时，巨浪也如同出现时那么突然，迅速的平息了。"));
replaceString(L, 4, Str("say"), Str("咳…咳咳……得救了。"));
replaceString(L, 5, Str("say"), Str("无畏，没事吧！！"));
replaceString(L, 6, Str("say"), Str("没事没事，就是稍微呛了点水…咳咳…"));
replaceString(L, 7, Str("say"), Str("蓝鳃鱼，Nice，回来的时机很完美！"));
replaceString(L, 8, Str("say"), Str("哼哼，执行侦察任务的蓝鳃鱼，现在完成任务归队！"));
replaceString(L, 9, Str("say"), Str("在侦查途中遭到塞壬舰队的拦截，回来迟了…本来想报告敌情的，看来大家已经和塞壬交战了啊！"));
replaceString(L, 10, Str("say"), Str("平安回来就好，现在每一份力量都很宝贵。很遗憾现在没有休息的时间，立刻归队和我们一起迎击塞壬吧。"));
replaceString(L, 11, Str("say"), Str("等等，有轮机声正在靠近…"));
replaceString(L, 12, Str("say"), Str("又有塞壬包抄过来了么，接招~！"));
replaceString(L, 13, Str("say"), Str("轰---！"));
replaceString(L, 14, Str("say"), Str("喂~~大家都还好么~听到请回话~~~呀啊！！！"));
replaceString(L, 15, Str("say"), Str("里、里诺？！！你怎么会在这里啊！"));
replaceString(L, 16, Str("say"), Str("是马布尔黑德！？！"));
replaceString(L, 17, Str("say"), Str("我说！刚才的一连串炮击是怎么回事呀…！要不是空包弹的话我就开火还击了哎！"));
replaceString(L, 18, Str("say"), Str("呼呼，毕竟要排除一下塞壬的棋子趁乱靠近的可能性嘛，诶嘿~☆"));
replaceString(L, 19, Str("say"), Str("……里诺你不是在要塞西侧驻防么，怎么跑到这里来了？"));
replaceString(L, 20, Str("say"), Str("哎？！不是你们跑来西侧了么！"));
replaceString(L, 21, Str("say"), Str("虽说刚刚我们在浓雾中遭遇了一股巨浪，但就算浪再大也不至于把我们都冲到要塞西边来吧…"));
replaceString(L, 22, Str("say"), Str("啊~布莱默顿、卡萨布兰卡、邦克山这边这边~！看我发现谁了。"));
replaceString(L, 23, Str("say"), Str("西侧驻防舰队全员都到这里了？！"));
replaceString(L, 24, Str("say"), Str("哟，一会不见，大家都…挂了点彩呢，嘿嘿。"));
replaceString(L, 25, Str("say"), Str("突然出现又突然消失的巨浪结束后，原本位于运河两侧的舰队汇合了…绝对不是自然现象呢。"));
replaceString(L, 26, Str("say"), Str("难道果然…迷雾内部是连通的？"));
replaceString(L, 27, Str("say"), Str("虽然难以置信，不过迷雾若是塞壬设下的机关，倒也不是完全不可能。"));
replaceString(L, 28, Str("say"), Str("那我们现在到底在哪里？要塞的东侧还是西侧…？"));
replaceString(L, 29, Str("say"), Str("不清楚，如果迷雾真能联通要塞东西两侧的话，哪边也就不重要了……你们还是没找到企业么？"));
replaceString(L, 30, Str("say"), Str("没有…想必企业前辈现在也在迷雾中的某处战斗吧。"));
replaceString(L, 31, Str("say"), Str("巴尔的摩她们也有可能被困在场迷雾之中…只要我们破坏了生成迷雾的装置，大家应该就能回来了！"));
replaceString(L, 32, Str("say"), Str("事不宜迟，赶紧出发吧~前进的方向呢，对，就向着敌人最密集的方向前进吧！"));
lua_pop(L, 1);
}
void WEICENGHUNHE25(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("对了，大家听我说！刚刚我在来的路上，在水下看到这次塞壬的总指挥了！"));
replaceString(L, 2, Str("say"), Str("是一艘好大好大好大的……唔…潜艇？！"));
replaceString(L, 3, Str("say"), Str("我正准备朝它发射鱼雷，结果周围突然出现了像白雾一样的东西把我甩了出去！"));
replaceString(L, 4, Str("say"), Str("等我回过神来看清楚周围，就看到落水的无畏了。"));
replaceString(L, 5, Str("say"), Str("嚯，原来如此。时间轴上来看……"));
replaceString(L, 6, Str("say"), Str("…我们遭受巨浪袭击的秘密解开了呢……"));
replaceString(L, 7, Str("say"), Str("盯……"));
replaceString(L, 8, Str("say"), Str("哎哎哎？！为什么都看着我呀！"));
replaceString(L, 9, Str("say"), Str("这么看来，突然袭来的巨浪很有可能是塞壬指挥舰在受到威胁时的紧急防卫手段。"));
replaceString(L, 10, Str("say"), Str("也就是说我们把它逼到绝境了？"));
replaceString(L, 11, Str("say"), Str("把我们直接聚集在一起，一鼓作气消灭我们的可能性更高吧…"));
replaceString(L, 12, Str("say"), Str("刚才开始周围都出现的都是没见过的新型塞壬，不论如何，我们都应该距离敌人的指挥舰越来越近了。"));
replaceString(L, 13, Str("say"), Str("多亏蓝鳃鱼的情报，我们对于敌人的偷袭企图可以有所防备了~"));
replaceString(L, 14, Str("say"), Str("大家组成反潜队形吧，重点注意来自水下的攻击！"));
replaceString(L, 15, Str("say"), Str("嘿嘿，我也会在水下保护大家的，蓝鳃鱼，全速下潜！"));
lua_pop(L, 1);
}
void WEICENGHUNHE26(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("历尽千难万险，分散在各处的英雄们重新联合起来吹响反攻的号角…"));
replaceString(L, 2, Str("say"), Str("简直就像超级英雄剧一样的展开，令人热血沸腾啊！"));
replaceString(L, 3, Str("say"), Str("我懂这种感觉！！正义的英雄大团结！"));
replaceString(L, 4, Str("say"), Str("哦？你们都很喜欢超级英雄呀~"));
replaceString(L, 5, Str("say"), Str("超喜欢~！超级英雄拯救世界的英姿…守护同伴的身影…真是太帅了！"));
replaceString(L, 6, Str("say"), Str("没错没错~库珀也要像英雄们一样，为了伙伴们和世界的明天而战斗~"));
replaceString(L, 7, Str("say"), Str("哼哼~大家看我的手甲，如果按下这个按钮的话…"));
replaceString(L, 8, Str("say"), Str("发、发出了强光？！"));
replaceString(L, 9, Str("say"), Str("不止如此哦，如果再摁下这个按钮的话---"));
replaceString(L, 10, Str("say"), Str("变形了？！太厉害了~！"));
replaceString(L, 11, Str("say"), Str("嘿嘿，超级英雄的装备只有你们想不到，没有我没有的~！"));
replaceString(L, 12, Str("say"), Str("震惊！！里诺你真的很喜欢英雄呢！"));
replaceString(L, 13, Str("say"), Str("呼呼呼~虽然这次没有见到传说中的指挥官，有点遗憾。"));
replaceString(L, 14, Str("say"), Str("不过面对不利局面依然奋战在第一线的各位，对我来说已经就像英雄一样了哦。"));
replaceString(L, 15, Str("say"), Str("能这么近距离支援大家的战斗，我也感到十分开心！"));
replaceString(L, 16, Str("say"), Str("哎？里诺，你没有想过成为英雄的一员么？"));
replaceString(L, 17, Str("say"), Str("我不是能做英雄的类型啦。能作为英雄的粉丝在这么近距离的为英雄加油打气就已经很满足了~"));
replaceString(L, 18, Str("say"), Str("唔…里诺一路上出色的护航，让我们的战斗压力少了很多！我觉得里诺已经是出色的英雄了哦！"));
replaceString(L, 19, Str("say"), Str("只是成为超级英雄团队里的一员，不代表能成为超级英雄，我是这么认为的…"));
replaceString(L, 20, Str("say"), Str("有句话说得好，\"他们成为英雄不是因为他们有特殊能力，而是因为他们选择用这些能力来做什么\""));
replaceString(L, 21, Str("say"), Str("…哎？！布莱默顿也听说过这句话么！"));
replaceString(L, 22, Str("say"), Str("我偶尔也会跟着巴尔的摩一起看看关于英雄的作品啦。"));
replaceString(L, 23, Str("say"), Str("如果你一直紧随英雄的脚步，你终究会变为英雄的一份子，巴尔的摩是这么认为的。"));
replaceString(L, 24, Str("say"), Str("我也觉得现在的里诺完全符合英雄的定义哦！"));
replaceString(L, 25, Str("say"), Str("没错没错，库珀也赞同~感觉之后会和巴尔的摩很很合得来呢！"));
replaceString(L, 26, Str("say"), Str("好像…确实是这样哎！"));
replaceString(L, 27, Str("say"), Str("那接下来的战斗护航也都拜托你了哦，英雄里诺~"));
replaceString(L, 28, Str("say"), Str("呼呼，不论是天上飞的还是水里游的，都放心包在我身上吧，英雄库珀~！"));
lua_pop(L, 1);
}
void WEICENGHUNHE27(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞西侧？东侧？·迷雾中"));
replaceString(L, 2, Str("say"), Str("就是这样…一旦被反潜机咬住，潜艇就无路可逃了。"));
replaceString(L, 3, Str("say"), Str("事先带了反潜机真是太好了，有备无患。没想到塞壬居然会出动这么多潜艇。"));
replaceString(L, 4, Str("say"), Str("真好啊~既能对空也能反潜，还能做侦查，要是我也能带舰载机就好了~"));
replaceString(L, 5, Str("say"), Str("最好能让舰载机冲开迷雾，将失踪的同伴们都找回来…"));
replaceString(L, 6, Str("say"), Str("如果是水上飞机还好说。如果是航空母舰用的舰载机的话，还是考虑改装成航空巡洋舰比较好哦…"));
replaceString(L, 7, Str("say"), Str("说的也是呢…"));
replaceString(L, 8, Str("say"), Str("………"));
replaceString(L, 9, Str("say"), Str("你的姐妹舰孟菲斯也在失踪的舰队里…很担心她么？"));
replaceString(L, 10, Str("say"), Str("孟菲斯每天都泡在公文里难得出来一次，本来约好了这次顺便带她在巴拿马放松一下呢。"));
replaceString(L, 11, Str("say"), Str("欣赏一下雨林风光，或者去感受一下热带的阳光与沙滩…"));
replaceString(L, 12, Str("say"), Str("我们奥马哈级的性能并不是很出色，她现在会不会已经出事了呢，我总忍不住会想到一些糟糕的结局…"));
replaceString(L, 13, Str("say"), Str("若是论性能，我与企业或者埃塞克斯她们完全无法相比。但我仍在尽我所能的战斗，然后平安的存在于这里。"));
replaceString(L, 14, Str("say"), Str("虽然不能向你证明，不过既然同为奥马哈级的你还在拼命战斗着，我想孟菲斯自己也一定不会轻易放弃吧。"));
replaceString(L, 15, Str("say"), Str("还是笑容更适合你哦，马布尔黑德。"));
replaceString(L, 16, Str("say"), Str("哎，直球冲击？！噗……谢谢，卡萨布兰卡，我感觉好多了。"));
replaceString(L, 17, Str("say"), Str("（Yes！这么电影感的台词，早就想说一次看看了！）"));
replaceString(L, 18, Str("say"), Str("说的也是，现在应该打起精神来，全力fight才行~"));
lua_pop(L, 1);
}
void WEICENGHUNHE28(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("？？？·？？？"));
replaceString(L, 2, Str("say"), Str("谁躲在那里，快出来！"));
replaceString(L, 3, Str("say"), Str("就当我是背景的旁白吧。"));
replaceString(L, 4, Str("say"), Str("看到什么钟意的内容了么？"));
replaceString(L, 5, Str("say"), Str("这些幻影，究竟是什么东西…？"));
replaceString(L, 6, Str("say"), Str("记录。"));
replaceString(L, 7, Str("say"), Str("什么地方，什么时候的记录？"));
replaceString(L, 8, Str("say"), Str("存在于彼方，又存在于此处。既是过去的刻印，又是未来的预兆。"));
replaceString(L, 9, Str("say"), Str("现在，也存在于你的心里了。"));
replaceString(L, 10, Str("say"), Str("……我没时间和你打哑谜，为什么要给我看这些虚假的闹剧？"));
replaceString(L, 11, Str("say"), Str("记录是不会说谎的。"));
replaceString(L, 12, Str("say"), Str("看，她来了。"));
replaceString(L, 13, Str("say"), Str("企业身边的幻影突然全部消失，然后一个新的身影从迷雾中浮现出来。"));
replaceString(L, 14, Str("say"), Str("一位头顶蓝色水母顶盖，手拿玩偶乘坐在巨大舰装上的少女。"));
replaceString(L, 15, Str("say"), Str("这个是…？！"));
replaceString(L, 16, Str("say"), Str("轰----------------！！！！"));
replaceString(L, 17, Str("say"), Str("伴随着一声巨响，海水和空气突然发生了巨大震动，仿佛空间本身被撕裂开了个大口子一样。"));
replaceString(L, 18, Str("say"), Str("啧。"));
replaceString(L, 19, Str("say"), Str("未知的声音留下一声不甘心的叹息，随即停止了呢喃。"));
replaceString(L, 20, Str("say"), Str("海雾也开始逐渐散去，露出了在四周潜伏多时的塞壬舰队。"));
replaceString(L, 21, Str("say"), Str("…说了这么多，果然对付塞壬还是需要通过用战斗收场么。"));
replaceString(L, 22, Str("say"), Str("轰----！"));
replaceString(L, 23, Str("say"), Str("又是一声巨响从近处传来，这个声音是…"));
replaceString(L, 24, Str("say"), Str("哟，这不是企业么！没想到在这里遇到你了，需要帮助么~"));
replaceString(L, 25, Str("say"), Str("巴尔的摩？！还有……"));
replaceString(L, 26, Str("say"), Str("啊，我知道你有很多疑问，实际上我们自己也没搞清楚状况，不过---"));
replaceString(L, 27, Str("say"), Str("我们平安脱困了，企业。"));
replaceString(L, 28, Str("say"), Str("失去联络数日的调防舰队居然突然在这里出现了！"));
replaceString(L, 29, Str("say"), Str("嗯？背后刚刚好像还有个身影一闪而过…那个是？！"));
replaceString(L, 30, Str("say"), Str("…………"));
replaceString(L, 31, Str("say"), Str("不在这里么…"));
lua_pop(L, 1);
}
void WEICENGHUNHE29(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞西侧？东侧？·迷雾中"));
replaceString(L, 2, Str("say"), Str("联合舰队依然在迷雾中战斗着。"));
replaceString(L, 3, Str("say"), Str("已经持续了多久了呢…迷雾中的敌人仿佛无穷无尽一般，前赴后继的涌来。"));
replaceString(L, 4, Str("say"), Str("真是夸张的数量，塞壬已经看穿我们的企图了么？"));
replaceString(L, 5, Str("say"), Str("很有可能…从空中海面水下发动的全方位立体式攻击，再加上这些碍事迷雾的掩护…"));
replaceString(L, 6, Str("say"), Str("根本寻找不到塞壬的主攻方向…！"));
replaceString(L, 7, Str("say"), Str("如果继续这样下去的话，大家就都危险了！都怪我的作战计划太鲁莽了…"));
replaceString(L, 8, Str("say"), Str("你在说什么呢，无畏。塞壬能投入这种程度的部队拼命抵抗，恰好说明你判断的方向是正确的。"));
replaceString(L, 9, Str("say"), Str("开战的时候你不是还想劝我要自信点么，现在先对自己失去信心了？"));
replaceString(L, 10, Str("say"), Str("被你发现了么……"));
replaceString(L, 11, Str("say"), Str("那是当然~拿出自信来，企业前辈现在不在，只能依靠我们自己了。"));
replaceString(L, 12, Str("say"), Str("现在如同黎明之前的最后一刻黑夜，只要突破困境，胜利的曙光就在眼前。"));
replaceString(L, 13, Str("say"), Str("无畏，这是你的作战计划，决定我们接下来的方向吧。"));
replaceString(L, 14, Str("say"), Str("你们也知道我的运气…现在情况危急，要是在这时候选错方向……"));
replaceString(L, 15, Str("say"), Str("无妨。选错了方向，我们再杀几个来回就是了。"));
replaceString(L, 16, Str("say"), Str("哈啊……有时候我真的觉得，我这么倒霉是不是因为我在作为埃塞克斯级诞生的时候就用光了全部的运气！"));
replaceString(L, 17, Str("say"), Str("我知道了！让我想一想………………"));
replaceString(L, 18, Str("say"), Str("唔…你们发现了么，从刚才开始，雾气有点点变淡了。"));
replaceString(L, 19, Str("say"), Str("没错。拜此所赐舰载机的战斗效率也提升了。"));
replaceString(L, 20, Str("say"), Str("邦克山，你能用舰载机侦查一下周围雾气的密度变化么？不需要特别精确，只要有变化趋势就可以！"));
replaceString(L, 21, Str("say"), Str("没问题，不过你打算做什么…？"));
replaceString(L, 22, Str("say"), Str("如果海雾是从同一处地方产生的话，消散的时候浓度的变化也不会是均匀的！"));
replaceString(L, 23, Str("say"), Str("没错，可以通过这一特性定位到真正的发生源！"));
replaceString(L, 24, Str("say"), Str("太棒了！只要等待侦查结果回来，进攻方向就决定了呢~"));
replaceString(L, 25, Str("say"), Str("接下来就是决定进攻战术…"));
replaceString(L, 26, Str("say"), Str("没时间迂回了，从正面突破吧！\n从正面强攻！"));
replaceString(L, 27, Str("say"), Str("噗…大家都说没有两艘完全一样的埃塞克斯级。"));
replaceString(L, 28, Str("say"), Str("不过在面对的敌人时候，我们的选择完全一致呢！"));
replaceString(L, 29, Str("say"), Str("大家都做好挂更多彩的准备~机会难得，就用这些新型塞壬展示一下埃塞克斯级编队的力量吧！"));
lua_pop(L, 1);
}
void WEICENGHUNHE3(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞东侧·外海"));
replaceString(L, 2, Str("say"), Str("我是现在负责指挥要塞驻防舰队指挥的，埃塞克斯级邦克山。"));
replaceString(L, 3, Str("say"), Str("…接下来该怎么说才好…对了（小声）"));
replaceString(L, 4, Str("say"), Str("诸位远道而来辛苦了…！"));
replaceString(L, 5, Str("say"), Str("噗哈哈…邦克山，接待讲话这种工作果然还是不适合你啊！"));
replaceString(L, 6, Str("say"), Str("这里都是自己人，不用这么拘束~埃塞克斯也来了哦。"));
replaceString(L, 7, Str("say"), Str("好久不见，邦克山。"));
replaceString(L, 8, Str("say"), Str("嗯…好久不见。咳，埃塞克斯、还有企业…前辈？，现在向你们汇报要塞驻防情况。"));
replaceString(L, 9, Str("say"), Str("大家都是并肩作战的伙伴，直接叫我企业就好。"));
replaceString(L, 10, Str("say"), Str("是，企业。驻防舰队的成员，除了执行侦察任务还未归队的蓝鳃鱼以外，库珀、里诺、马布尔黑德，都在这里了。"));
replaceString(L, 11, Str("say"), Str("哎嘿，我是艾伦·萨姆纳级的库珀哦，大家长途奔波一路辛苦了！哎，指挥官没来么？"));
replaceString(L, 12, Str("say"), Str("指挥官现在和萨拉托加她们一起在白令海方向与北方联合进行联合作战。"));
replaceString(L, 13, Str("say"), Str("这次事发突然，也不能因为调查任务就把指挥官从前线叫回来。"));
replaceString(L, 14, Str("say"), Str("哎~真是遗憾。还以为能趁此机会和指挥官搞好关系呢。"));
replaceString(L, 15, Str("say"), Str("看不到Hero指挥官虽然有点遗憾，不过正所谓能力越大责任越大，指挥官也有必须去完成的工作啊。"));
replaceString(L, 16, Str("say"), Str("也就是说这次只能靠我们自己了么，呼呼，感觉大显身手的机会就要到了~！"));
replaceString(L, 17, Str("say"), Str("说到白令海啊…我记得盐湖城说过那地方冷得连锅炉都能冻熄火，也不知道是不是真的。"));
replaceString(L, 18, Str("say"), Str("诶~~~居然有·那么冷么？北方联合那边的环境中还真辛苦。还好我驻防的地方是有阳光鲜花和沙滩的巴拿马要塞。"));
replaceString(L, 19, Str("say"), Str("额…白令海的温度理论上应该没有低到会使锅炉熄火才对，八成是…"));
replaceString(L, 20, Str("say"), Str("因为意外故障或者中弹导致的熄火对吧，这个我懂………"));
replaceString(L, 21, Str("say"), Str("啊，是我粗心了。大家都站在外面谈话也不方便，快进要塞里休息吧，"));
replaceString(L, 22, Str("say"), Str("我今天专门准备了鲜榨的热带果汁哦，大家边喝边谈吧~"));
replaceString(L, 23, Str("say"), Str("正好感觉口渴了，太好了！"));
replaceString(L, 24, Str("say"), Str("那大家就先去要塞里好好休息一下，之后谈正事吧…企业前辈？"));
replaceString(L, 25, Str("say"), Str("唔……刚刚路上有一处我有点在意的地方，我想再去调查一下。"));
replaceString(L, 26, Str("say"), Str("咦？企业发现什么线索了么，要不要我们陪你去？"));
replaceString(L, 27, Str("say"), Str("不用不用，只是有一点违和感而已。而且就在要塞东侧海域附近，去看一下很快就回来。"));
lua_pop(L, 1);
}
void WEICENGHUNHE30(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("轰----！"));
replaceString(L, 2, Str("say"), Str("伴随着一声巨响，海水和空气突然发生了巨大震动，仿佛空间本身被撕裂开了个大口子一样。"));
replaceString(L, 3, Str("say"), Str("哇啊啊啊啊！！这次又出什么事了！？"));
replaceString(L, 4, Str("say"), Str("海雾开始消散了……大家快看前方，有什么东西浮上来了哦？！"));
replaceString(L, 5, Str("say"), Str("一艘塞壬\"潜艇\"正伴随着极具威压感的庞大身躯缓缓浮出水面。"));
replaceString(L, 6, Str("say"), Str("海雾似乎就是以它为中心逐步向四周消散的。"));
replaceString(L, 7, Str("say"), Str("作为指挥舰的同时，又搭载着迷雾生成装置么…又是记录中都没见过的全新型号。"));
replaceString(L, 8, Str("say"), Str("啧。"));
replaceString(L, 9, Str("say"), Str("喂，你就是这次塞壬舰队进攻的指挥？迷雾和失踪舰队都是你搞出来的把戏吧！"));
replaceString(L, 10, Str("say"), Str("企业前辈她们在哪儿？！"));
replaceString(L, 11, Str("say"), Str("真麻烦……"));
replaceString(L, 12, Str("say"), Str("舰…舰载机群？！不好大家不要被潜艇的外表骗了！敌人是毫无疑问的塞壬人型指挥单位！"));
replaceString(L, 13, Str("say"), Str("水面战斗模式，ON。"));
replaceString(L, 14, Str("say"), Str("沉默寡言的类型么，也好。既然是敌人，放马过来就是，何须言语交谈！"));
replaceString(L, 15, Str("say"), Str("输出功率70%，ON。"));
replaceString(L, 16, Str("say"), Str("目标发动进攻了！大家注意，敌人似乎可以同时进行雷击战炮击战和航空战，准备迎敌！"));
lua_pop(L, 1);
}
void WEICENGHUNHE31(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("轰----！"));
replaceString(L, 2, Str("say"), Str("这个战斗能力和防护力，果然不能单纯当成潜艇来对待…！"));
replaceString(L, 3, Str("say"), Str("把这种拥有舰载机群、大口主炮和无数鱼雷管，还有超强护盾存在的东西，硬分类成潜艇我也无法接受啊…"));
replaceString(L, 4, Str("say"), Str("毫无疑问，是强敌…！"));
replaceString(L, 5, Str("say"), Str("大家再加把劲，我感觉差一点点就能击穿它的护盾了！"));
replaceString(L, 6, Str("say"), Str("警告，护盾即将过载。模式切换。潜航模式，ON。"));
replaceString(L, 7, Str("say"), Str("舰装正在……变形？不好，敌人想下潜到水面之下！"));
replaceString(L, 8, Str("say"), Str("果然它的护盾快撑不住了！休想得逞，起飞准备完成——舰载机队，去吧！Roll out！"));
replaceString(L, 9, Str("say"), Str("里诺和马布尔黑德掩护无畏前进，蓝鳃鱼，去水下尽可能阻拦敌人下潜！"));
replaceString(L, 10, Str("say"), Str("收到~包在我身上。"));
replaceString(L, 11, Str("say"), Str("白鹰的巴拿马要塞可不是塞壬想来就来想走就能走的地方。今天一定要让你为进攻行为付出代价！"));
lua_pop(L, 1);
}
void WEICENGHUNHE32(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("密集的火力向着下潜中的塞壬指挥舰倾泻着，似乎终于起到了效果。"));
replaceString(L, 2, Str("say"), Str("没错，大家集中火力攻击变形的关节处，这样就能减缓变形的速度了~"));
replaceString(L, 3, Str("say"), Str("对于变形系装甲的弱点，我可是再清楚不过了！"));
replaceString(L, 4, Str("say"), Str("哎？里诺小姐，你对机械学还有研究么！"));
replaceString(L, 5, Str("say"), Str("哎嘿嘿，算是吧~"));
replaceString(L, 6, Str("say"), Str("……真是麻烦。"));
replaceString(L, 7, Str("say"), Str("轰隆隆------"));
replaceString(L, 8, Str("say"), Str("埃塞克斯，布莱默顿，水面上的任何人，能听到么！！"));
replaceString(L, 9, Str("say"), Str("超超超超超恐怖的东西从水下出现了，正在向水面方向快速移动中，大家注意水下，小心规避！！！！"));
replaceString(L, 10, Str("say"), Str("唔哇！这、这些……这些是什么啊！！！！！"));
replaceString(L, 11, Str("say"), Str("…机械触手？！这种东西怎么会从水面下出来啊…！简直和恐怖电影的桥段一样！"));
replaceString(L, 12, Str("say"), Str("这个触手水压什么的摩擦系数什么的这个都完全说不通吧！"));
replaceString(L, 13, Str("say"), Str("大家优先注意规避，千万别被这些东西卷进去了！"));
replaceString(L, 14, Str("say"), Str("明明就差一步，还是让它趁乱逃跑了…"));
replaceString(L, 15, Str("say"), Str("这个敌人和测试者净化者给人的感觉都不一样，我完全没有从它那里感受到斗志的存在。"));
replaceString(L, 16, Str("say"), Str("就这么结束了…？刚刚的那些究竟是什么东西啊…"));
replaceString(L, 17, Str("say"), Str("雷达通讯导航恢复正常了，迷雾正在消散，塞壬舰队也开始撤退了，应该是结束了。"));
replaceString(L, 18, Str("say"), Str("不管怎么说，本次塞壬袭击被成功挫败，巴拿马要塞安全了。"));
replaceString(L, 19, Str("say"), Str("接下来，该继续寻找失踪的企业前辈和调防舰队了……哎？！"));
replaceString(L, 20, Str("say"), Str("企业前辈？！！"));
replaceString(L, 21, Str("say"), Str("失踪的巴尔的摩她们也在？！从什么地方出现的……"));
replaceString(L, 22, Str("say"), Str("哟，不好意思啊，路上花了点时间。看来你们这儿也经历了场大战啊…"));
replaceString(L, 23, Str("say"), Str("究竟发生了什么事----"));
replaceString(L, 24, Str("say"), Str("那就说来话长了，从哪儿开始呢…"));
replaceString(L, 25, Str("say"), Str("总而言之，大家都平安无事真是可喜可贺！之后的事，我们回去慢慢聊吧…"));
replaceString(L, 26, Str("say"), Str("走吧，企业。"));
replaceString(L, 27, Str("say"), Str("……嗯，走吧。大家都没事真是太好了…"));
lua_pop(L, 1);
}
void WEICENGHUNHE33(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("要塞东侧外海？·海雾中"));
replaceString(L, 2, Str("say"), Str("巴尔的摩带领的调防舰队正在迷雾中与净化者激烈战斗着----"));
replaceString(L, 3, Str("say"), Str("才怪呢~！"));
replaceString(L, 4, Str("say"), Str("喂，不要躲躲闪闪的，来和我正面战斗啊！"));
replaceString(L, 5, Str("say"), Str("才不要~这次可不是为了收集数据，我才不想浪费无谓的力气呢。"));
replaceString(L, 6, Str("say"), Str("明明是这么明目张胆的拖延战术…可是我们却一点办法都没有……！"));
replaceString(L, 7, Str("say"), Str("轰-----！"));
replaceString(L, 8, Str("say"), Str("这片海域里，还有人在战斗！"));
replaceString(L, 9, Str("say"), Str("（诱饵舰队被摧毁了，终于上钩了么）"));
replaceString(L, 10, Str("say"), Str("啊--这-可-不-太-妙---要-撤-退-了----（棒读）"));
replaceString(L, 11, Str("say"), Str("等-----！"));
replaceString(L, 12, Str("say"), Str("几乎在净化者驶出视野的同时，一个\"熟悉\"的身影伴随着爆炸的余音从迷雾中出现了。"));
replaceString(L, 13, Str("say"), Str("………"));
replaceString(L, 14, Str("say"), Str("…余、余烬--？！！"));
replaceString(L, 15, Str("say"), Str("这次你们的指挥官没跟着一起来么。"));
replaceString(L, 16, Str("say"), Str("……无可奉告"));
replaceString(L, 17, Str("say"), Str("这样啊………（转身）"));
replaceString(L, 18, Str("say"), Str("请…请等一下！谢谢你出来帮助我们！"));
replaceString(L, 19, Str("say"), Str("……"));
replaceString(L, 20, Str("say"), Str("请问！你知道这些海雾究竟是什么东西么…"));
replaceString(L, 21, Str("say"), Str("…塞壬用来掩护行军和围困敌人的把戏。"));
replaceString(L, 22, Str("say"), Str("居然在迷雾中偏航了这么远，明明就算通过海水的变化也应该早就能察觉到的…"));
replaceString(L, 23, Str("say"), Str("「微层化混合物」，这片海雾的正式名字。整天被那些家伙耍，什么时候才能成长些啊…"));
replaceString(L, 24, Str("say"), Str("果然是这片海雾干的好事啊…糟糕了。"));
replaceString(L, 25, Str("say"), Str("那…请问我们能回去了么？我们还有很紧急的任务要做…"));
replaceString(L, 26, Str("say"), Str("当然，如果要选择打一场的话，我们也奉陪哦！"));
replaceString(L, 27, Str("say"), Str("……真麻烦。"));
replaceString(L, 28, Str("say"), Str("唉…之前看到的侦察机飞来的方向，我记得是…………"));
lua_pop(L, 1);
}
void WEICENGHUNHE34(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("又是硝烟和死亡的味道……这里是战场。"));
replaceString(L, 2, Str("say"), Str("海面上漂浮着无数残骸，远方闪耀着无数火光。"));
replaceString(L, 3, Str("say"), Str("这里是…哪里？"));
replaceString(L, 4, Str("say"), Str("四面八方都在战斗着，有熟悉的身影，也有陌生的身影。"));
replaceString(L, 5, Str("say"), Str("白鹰、皇家、重樱、铁血…来了不少人啊。"));
replaceString(L, 6, Str("say"), Str("然而，她们战斗的对象，却不是塞壬。"));
replaceString(L, 7, Str("say"), Str("对面的敌人是…北方联合…？！"));
replaceString(L, 8, Str("say"), Str("不对…虽然风格有点接近，但是不是。那些不是北方联合的舰队。"));
replaceString(L, 9, Str("say"), Str("娇小的身影一个接一个的倒了下去，有些挣扎着爬了起来，有些则慢慢沉入了水下。"));
replaceString(L, 10, Str("say"), Str("…得赶快去帮忙才行！"));
replaceString(L, 11, Str("say"), Str("可是身体却完全动不了，仿佛从来就不属于自己一样。"));
replaceString(L, 12, Str("say"), Str("天上飞的是什么，流星群？"));
replaceString(L, 13, Str("say"), Str("好美啊…………"));
replaceString(L, 14, Str("say"), Str("…………"));
replaceString(L, 15, Str("say"), Str("？！！！"));
replaceString(L, 16, Str("say"), Str("刚刚的是…梦？"));
lua_pop(L, 1);
}
void WEICENGHUNHE35(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("就算把海雾和镜面海域叠加在一起，也只坚持了不到一秒就崩溃了。"));
replaceString(L, 2, Str("say"), Str("你的计划失败了，观察者。"));
replaceString(L, 3, Str("say"), Str("果然…依靠我们的力量，连拖延「关键点G」行动的脚步都做不到么…"));
replaceString(L, 4, Str("say"), Str("辛苦了，构建者。"));
replaceString(L, 5, Str("say"), Str("我的白令海实验场还在遭受攻击，先走一步。"));
replaceString(L, 6, Str("say"), Str("呵呵呵…海雾的计划，很成功哦。"));
replaceString(L, 7, Str("say"), Str("「关键点G」的坚定意志来自于拒绝一切外部干涉的冷漠。"));
replaceString(L, 8, Str("say"), Str("可是现在，混合成功了……"));
replaceString(L, 9, Str("say"), Str("…………不对，我能计算到的事，其他实验场的\"我\"也能计算到。"));
replaceString(L, 10, Str("say"), Str("为什么迄今为止的所有努力都失败了呢…"));
replaceString(L, 11, Str("say"), Str("果然还是因为这里有\"指挥官\"这一变量存在…"));
replaceString(L, 12, Str("say"), Str("零，你究竟还隐瞒了多少东西…"));
replaceString(L, 13, Str("say"), Str("呵呵呵呵………"));
lua_pop(L, 1);
}
void WEICENGHUNHE4(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞东侧·外海"));
replaceString(L, 2, Str("say"), Str("企业一个人向着外海驶去，四周如同来的时候那样风平浪静，柔和的阳光洒在略带温热的水面上。"));
replaceString(L, 3, Str("say"), Str("………失踪舰队和求救通讯。"));
replaceString(L, 4, Str("say"), Str("明明收到求援通讯，却没有发现任何战斗痕迹…"));
replaceString(L, 5, Str("say"), Str("如果塞壬想要切断通讯的话，怎么可能偏偏漏过最重要的救援通讯。"));
replaceString(L, 6, Str("say"), Str("是为了把我们调离NY司令部么？"));
replaceString(L, 7, Str("say"), Str("不对…NY司令部在遭受袭击后现在的防守已经堪称密不透风了。更何况现在也没什么袭击价值…"));
replaceString(L, 8, Str("say"), Str("总觉得，有哪一环很奇怪……"));
replaceString(L, 9, Str("say"), Str("海雾……嗯？海雾……？"));
replaceString(L, 10, Str("say"), Str("舰队在失踪之前，好像遇到了大面积的海雾。"));
replaceString(L, 11, Str("say"), Str("如果在海雾中遭遇敌人的话，确实可能会发出求援通讯。然后紧接着，通讯就被干扰了……"));
replaceString(L, 12, Str("say"), Str("看来所谓海雾不单纯就是\"海雾\"而已呢。"));
replaceString(L, 13, Str("say"), Str("就在企业沉思时，企业连同身边的海面在内，被不知不觉中出现的海雾包围了。"));
replaceString(L, 14, Str("say"), Str("？！这些海雾是什么时候出现的？！"));
replaceString(L, 15, Str("say"), Str("糟了，果然是塞壬的--------"));
replaceString(L, 16, Str("say"), Str("……………………"));
replaceString(L, 17, Str("say"), Str("………………………………"));
lua_pop(L, 1);
}
void WEICENGHUNHE5(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞·会议室"));
replaceString(L, 2, Str("say"), Str("呵啊唔……等得好无聊啊。结果企业到最后也没有来呢……"));
replaceString(L, 3, Str("say"), Str("也许是看着巴拿马的风景入迷了，或者太累了在途中多休息了一会儿吧。"));
replaceString(L, 4, Str("say"), Str("企业一直都那么紧绷着神经，如果能在这里稍微放松一下也不错嘛。"));
replaceString(L, 5, Str("say"), Str("没错~就算是超级英雄也需要偶尔休息一下的！"));
replaceString(L, 6, Str("say"), Str("那么会议现在结束，驻防分配就这么决定了。"));
replaceString(L, 7, Str("say"), Str("要塞西侧的舰队由布莱默顿和我负责指挥，东侧的舰队由企业和埃塞克斯负责指挥。"));
replaceString(L, 8, Str("say"), Str("大家按照驻防分配前往岗位吧，不能让防御空出来太久给予敌人可乘之机。"));
replaceString(L, 9, Str("say"), Str("前往西侧的舰队请随我来，东侧的话，库珀会向你们介绍防御设施的。"));
replaceString(L, 10, Str("say"), Str("嘿嘿，包在我身上~不光是防御设施，风景介绍也包在我身上咯~"));
replaceString(L, 11, Str("say"), Str("唔，我果然还是不太放心企业前辈，我去稍微找找看！"));
replaceString(L, 12, Str("say"), Str("（埃塞克斯还是老样子，每次遇到和企业前辈有关的事，就会变得沉不住气啊）"));
replaceString(L, 13, Str("say"), Str("交给我吧，埃塞克斯。你现在刚刚接手西侧的指挥，还是先去熟悉一下要塞比较好哦。"));
replaceString(L, 14, Str("say"), Str("企业前辈~企业前辈~你在哪儿呢。"));
replaceString(L, 15, Str("say"), Str("我带来了马布尔黑德推荐的巴拿马特制的咖啡很提神哦，来一杯吧。"));
replaceString(L, 16, Str("say"), Str("……咦？"));
replaceString(L, 17, Str("say"), Str("这里是无畏，企业前辈，收到请回话。"));
replaceString(L, 18, Str("say"), Str("……………"));
replaceString(L, 19, Str("say"), Str("这个时候通讯器突然坏了…？应该不会这么倒霉吧。"));
replaceString(L, 20, Str("say"), Str("果然没坏……也就是说！"));
replaceString(L, 21, Str("say"), Str("全体人员注意，要塞周边海域发现塞壬袭击迹象。"));
replaceString(L, 22, Str("say"), Str("敌方舰队正在从两侧远海同时向要塞方向接近。请各战斗人员迅速归位，准备战斗。"));
replaceString(L, 23, Str("say"), Str("在这个时候发动袭击！？…刚才来的时候连个影子都没有，从哪儿冒出来这么多啊！！"));
lua_pop(L, 1);
}
void WEICENGHUNHE6(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞东侧·外海"));
replaceString(L, 2, Str("say"), Str("啊，无畏，你在这里啊。来的正好，我们发现塞壬准备展开袭击正在部署呢。"));
replaceString(L, 3, Str("say"), Str("在要塞附近战斗的话难免会对要塞本身有所损伤。进攻是最好的防守，我在想是不是由我们主动进攻消灭敌人比较好。"));
replaceString(L, 4, Str("say"), Str("…哎？企业前辈呢，你不是去找她了么？"));
replaceString(L, 5, Str("say"), Str("抱歉，企业前辈现在行踪不明……"));
replaceString(L, 6, Str("say"), Str("…………什么？"));
replaceString(L, 7, Str("say"), Str("企业也失踪了？！而且在距离要塞这么近的地方？！"));
replaceString(L, 8, Str("say"), Str("…会不会和现在塞壬的袭击有关？企业在调查途中与塞壬交火，然后进入镜面海域导致通讯中断？"));
replaceString(L, 9, Str("say"), Str("希望只是这样吧…看来司令部的判断不错，塞壬确实在打巴拿马要塞的主意。"));
replaceString(L, 10, Str("say"), Str("只不过没想到巴尔的摩舰队甚至企业前辈都在战斗前失去了联系…"));
replaceString(L, 11, Str("say"), Str("这次作战就开局来说也太不走运了啊~"));
replaceString(L, 12, Str("say"), Str("绝对不是我的霉运传染给作战了之类的哦…！"));
replaceString(L, 13, Str("say"), Str("噗，无畏还真是可爱啊~大家也别愁眉苦脸了企业那么强，绝对不会有事的~"));
replaceString(L, 14, Str("say"), Str("……嗯，大敌当前，没有犹豫的时间了。"));
replaceString(L, 15, Str("say"), Str("如果企业前辈真的被塞壬困入在镜面海域的话，那我们要担心的就是别在我们到达之前塞壬就被她消灭干净了~"));
replaceString(L, 16, Str("say"), Str("西侧舰队现在由我指挥。全员注意，由我们这边主动发起进攻，准备战斗！"));
lua_pop(L, 1);
}
void WEICENGHUNHE7(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("不值一提，不值一提~塞壬舰队全部消灭干净咯~"));
replaceString(L, 2, Str("say"), Str("嗯…无畏收到，企业前辈行踪也麻烦你们留意一下。"));
replaceString(L, 3, Str("say"), Str("埃塞克斯，布莱默顿发来消息，西侧来袭的敌人也被清理干净了。"));
replaceString(L, 4, Str("say"), Str("奇怪…敌人都消灭干净了也没看到企业前辈呢…"));
replaceString(L, 5, Str("say"), Str("已经让布莱默顿她们留意企业前辈的动向了，不过要塞方面汇报这段时间并没有前辈通过运河的迹象…"));
replaceString(L, 6, Str("say"), Str("巴拿马附近海域我很熟的，不论是企业还是巴尔的摩她们，搜查就放心交给我库珀吧~"));
replaceString(L, 7, Str("say"), Str("哎、哎？奇怪，以今天的天气来说，现在不该出现这么浓厚的海雾啊。"));
replaceString(L, 8, Str("say"), Str("不知不觉中，原本晴朗的海面被厚重的海雾覆盖了。"));
replaceString(L, 9, Str("say"), Str("海雾出现的速度太快了…这不符合常理啊！"));
replaceString(L, 10, Str("say"), Str("巴尔的摩舰队失踪之前也曾经遭遇了大面积的海雾…难道说？！"));
lua_pop(L, 1);
}
void WEICENGHUNHE8(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("？？？·？？？"));
replaceString(L, 2, Str("say"), Str("唔，究竟发生了什么事…？"));
replaceString(L, 3, Str("say"), Str("随着海雾的逐渐消散，企业发现身处的环境发生了变化。"));
replaceString(L, 4, Str("say"), Str("周围的景色有些熟悉，但又有些陌生……仿佛在看一张毫无印象的个人照。"));
replaceString(L, 5, Str("say"), Str("看起来是巴拿马要塞附近……应该没错。可是空气中的味道和感觉…"));
replaceString(L, 6, Str("say"), Str("硝烟、鲜血与死亡的气息随着空气进入鼻腔，这里恐怕在不久前刚经历过一场惨烈的战斗。"));
replaceString(L, 7, Str("say"), Str("这里恐怕已经……不是我所熟悉的巴拿马要塞近海了。"));
replaceString(L, 8, Str("say"), Str("又起雾了…刚刚的景色是故意展示给我看？"));
replaceString(L, 9, Str("say"), Str("仿佛是回应了企业的自言自语一样，寂静的海雾中传出了缥缈但刺耳的轮机声。"));
replaceString(L, 10, Str("say"), Str("还有谁也被困在这里了么？！没办法，去看一看吧。"));
lua_pop(L, 1);
}
void WEICENGHUNHE9(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("巴拿马要塞西侧·外海 稍早之前"));
replaceString(L, 2, Str("say"), Str("真了不起！不愧是被誉为世界上的工程学奇迹之一的巴拿马运河！"));
replaceString(L, 3, Str("say"), Str("实际体验了航道之后，除了\"壮丽\"之外，没有其它更合适的词能用来形容这个\"大洋之间的桥梁\"了。"));
replaceString(L, 4, Str("say"), Str("除了壮丽之外，更重要的是\"重要\"哦。"));
replaceString(L, 5, Str("say"), Str("运河在通航之后，大大缩减了两个大洋之间的运输距离。在那次大战中也发挥了重要作用。"));
replaceString(L, 6, Str("say"), Str("然后在之后数年间进行了不间断的拓宽、改进、加强防御。最终才变成了如今你所见到的巴拿马要塞。"));
replaceString(L, 7, Str("say"), Str("现在保护这座重要要塞的职责，一段时间内要落在我们身上了啊~感觉今晚要失眠了！"));
replaceString(L, 8, Str("say"), Str("有干劲是好事，不过其实…巴拿马要塞已经很久都没遭到塞壬进攻了哦。"));
replaceString(L, 9, Str("say"), Str("也许是塞壬终于快兵力不足了吧，呼呼呼~"));
replaceString(L, 10, Str("say"), Str("全体人员注意，要塞周边海域发现塞壬袭击迹象。"));
replaceString(L, 11, Str("say"), Str("敌方舰队正在从两侧远海同时向要塞方向接近。请各战斗人员迅速归位，准备战斗。"));
replaceString(L, 12, Str("say"), Str("……………"));
replaceString(L, 13, Str("say"), Str("额…？事情在变好前，总会变得更糟，看来说的就是这种情况么…"));
replaceString(L, 14, Str("say"), Str("运河航道一旦受到损坏，东西两侧大洋的交通线将会受到严重影响甚至暂时中断。"));
replaceString(L, 15, Str("say"), Str("卡萨布兰卡，你去引导商船避难，里诺留在防空阵地附近，一架飞机都不能放过去。"));
replaceString(L, 16, Str("say"), Str("了解~\n收到"));
replaceString(L, 17, Str("say"), Str("布莱默顿和我一起去前线主动出击，大闹一场吧。"));
replaceString(L, 18, Str("say"), Str("……唔，不要那样盯着我看啊，我只是有点不擅长表达很少参与话题而已…"));
replaceString(L, 19, Str("say"), Str("呼呼呼，抱歉抱歉~这样稍微有些反差的性格也很可爱哦~★"));
replaceString(L, 20, Str("say"), Str("塞壬舰队啊……来得正好，这几天我心里一直憋了一口气呢。"));
replaceString(L, 21, Str("say"), Str("虽然解决不了什么问题，不过就用你们的身体来稍微平息一下我怒火吧！"));
lua_pop(L, 1);
}
void WEIDAHAO1(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("外出！寻得珍宝吧！\n\n<size=45>一　出门什么的好麻烦哦！</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("港区·指挥室外"));
replaceString(L, 3, Str("say"), Str("簌——簌簌——"));
replaceString(L, 4, Str("say"), Str("走廊一侧传来了用吸管喝饮料的声音，循声走去，看见了瘫坐在地板上的维达。"));
replaceString(L, 5, Str("say"), Str("维达，你怎么不在房间里？"));
replaceString(L, 6, Str("say"), Str("是指挥官啊……"));
replaceString(L, 7, Str("say"), Str("我的房间设置了定时清洁功能，现在正在打扫中……我只能先换个地方待着。"));
replaceString(L, 8, Str("say"), Str("果然定时清洁这种功能也很麻烦……好想回去打游戏……"));
replaceString(L, 9, Str("say"), Str("……怎么不把定时清洁功能关了？"));
replaceString(L, 10, Str("say"), Str("关闭功能也很麻烦啊……又要申请，还要设置……"));
replaceString(L, 11, Str("say"), Str("先不说我了……指挥官是要去做什么？"));
replaceString(L, 12, Str("say"), Str("难得没什么工作，就想出去走走。"));
replaceString(L, 13, Str("say"), Str("哈啊~那一路走好哦。"));
replaceString(L, 14, Str("say"), Str("哦……要不要带上薯片或者饮料？一边晒太阳一边吃零食也很舒服吧。"));
replaceString(L, 15, Str("say"), Str("（记得维达好像还挺喜欢晒太阳的……）"));
replaceString(L, 16, Str("say"), Str("（比起回不去房间，瘫坐在走廊上，果然还是问问她要不要出去比较好吧。）"));
getByList(L,16);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("要不要出去约会？"));
replaceString(L, 2, Str("content"), Str("要不要出去晒太阳？"));
lua_pop(L,2);
replaceString(L, 17, Str("say"), Str("约、约会……？原来指挥官也喜欢这种肉麻又麻烦的事情吗……"));
replaceString(L, 18, Str("say"), Str("欸……也不是不行……不过出门什么的也太麻烦了吧……"));
replaceString(L, 19, Str("say"), Str("可是是跟指挥官一起出门……想想好像也不错……"));
replaceString(L, 20, Str("say"), Str("但果然还是不想动啊……"));
replaceString(L, 21, Str("say"), Str("如果有代步工具什么的就好了……难得指挥官有时间欸……"));
replaceString(L, 22, Str("say"), Str("不行，已经开始觉得累了……"));
replaceString(L, 23, Str("say"), Str("走不走？"));
replaceString(L, 24, Str("say"), Str("……唔……走！"));
lua_pop(L, 1);
}
void WEIDAHAO2(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("外出！寻得珍宝吧！\n\n<size=45>二　幽灵船与沉睡的宝藏</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("与维达一边聊天一边漫无目的地闲逛着，不知不觉便来到了商业街。"));
replaceString(L, 3, Str("say"), Str("啊……指挥官，你看那家店。"));
replaceString(L, 4, Str("say"), Str("顺着维达指尖的方向望去，那是一家主打逼真场景体验的密室主题店。"));
replaceString(L, 5, Str("say"), Str("……似乎是{namecode:98:明石}又研究出了什么好玩的东西。"));
replaceString(L, 6, Str("say"), Str("唔……她还真是勤快……连宣传海报都做得那么精致……"));
replaceString(L, 7, Str("say"), Str("近期的主题是\"海盗与幽灵船与沉睡的宝藏\"欸……"));
replaceString(L, 8, Str("say"), Str("正好是你擅长的部分啊，要试试看么？"));
replaceString(L, 9, Str("say"), Str("唔……比起当海盗打打杀杀，我还是更擅长也更喜欢躺着啦……"));
replaceString(L, 10, Str("say"), Str("软软的床，玩不完的游戏，没有风雨，多舒服哦……"));
replaceString(L, 11, Str("say"), Str("不过说实话，我比较感兴趣的是这里罗列的通关奖励……"));
replaceString(L, 12, Str("say"), Str("超级薯片限量大礼包，\"玩了就会相亲相爱\"的海盗厨房典藏版……"));
replaceString(L, 13, Str("say"), Str("还有\"枕上去就能立刻睡着\"的人体&船体工程学枕头……"));
replaceString(L, 14, Str("say"), Str("很多都是已经绝版的限量商品……"));
replaceString(L, 15, Str("say"), Str("不过怎么只能选一种啊……有些都不是一个价值的东西吧！"));
replaceString(L, 16, Str("say"), Str("这样子让人怎么选啊？"));
replaceString(L, 17, Str("say"), Str("这个问题等通关之后再思考吧。"));
replaceString(L, 18, Str("say"), Str("欸？指挥官的意思是要参加吗？"));
replaceString(L, 19, Str("say"), Str("虽然伟大的维达号肯定能轻松通关，但是好麻烦……"));
getByList(L,19);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("你不想要超级薯片限量大礼包吗？"));
replaceString(L, 2, Str("content"), Str("你不想要海盗厨房典藏版吗？"));
replaceString(L, 3, Str("content"), Str("你不想要人体&船体工程学枕头吗？"));
lua_pop(L,2);
replaceString(L, 20, Str("say"), Str("……唔……这些东西如果通过别的方式入手的话，好像会更麻烦……"));
replaceString(L, 21, Str("say"), Str("这么看的话，参加这个密室逃脱，已经是最轻松的方式了……"));
replaceString(L, 22, Str("say"), Str("维达抬头看了我一眼，往我身边凑近了一些。"));
replaceString(L, 23, Str("say"), Str("那待会我如果不想动了，指挥官要负责带着我通关哦。"));
replaceString(L, 24, Str("say"), Str("没问题，交给我吧。"));
replaceString(L, 25, Str("say"), Str("购买了两张票后，与维达拿好道具，进入了密室主题店。"));
lua_pop(L, 1);
}
void WEIDAHAO3(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("外出！寻得珍宝吧！\n\n<size=45>三　辛苦的寻宝之旅</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("走过漫长而黑暗的通道，我们终于进入了主题场景——\"幽灵船\"。"));
replaceString(L, 3, Str("say"), Str("欸……细节什么的都很讲究……这艘海盗船做得很用心呢……"));
replaceString(L, 4, Str("say"), Str("毕竟一涉及到赚钱的事，{namecode:98:明石}就会完全进入认真模式。"));
replaceString(L, 5, Str("say"), Str("哈啊……真是一只活力满满的绿头猫咪。"));
replaceString(L, 6, Str("say"), Str("不过……呼呼，确实有了一种熟悉的感觉呢。"));
replaceString(L, 7, Str("say"), Str("指挥官，快去探索一番吧——"));
replaceString(L, 8, Str("say"), Str("嘎吱——"));
replaceString(L, 9, Str("say"), Str("突然\"豪气万丈\"的维达在老旧的木板上随便踏出了一步。"));
replaceString(L, 10, Str("say"), Str("砰——！"));
replaceString(L, 11, Str("say"), Str("随即，巨大的海怪触手从四面八方破开水面包围了海盗船。"));
replaceString(L, 12, Str("say"), Str("……居然还有战斗环节。"));
replaceString(L, 13, Str("say"), Str("看来，想要获得奖励果然没那么轻松呢……"));
replaceString(L, 14, Str("say"), Str("指挥官，挥动手中的刀，将触手全部打倒吧！"));
getByList(L,14);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("好！"));
replaceString(L, 2, Str("content"), Str("那你呢？"));
lua_pop(L,2);
replaceString(L, 15, Str("say"), Str("唔……我来掩护你的后背！"));
replaceString(L, 16, Str("say"), Str("在维达堪称\"不动如山\"的\"完美\"掩护下，战斗顺利结束了。"));
replaceString(L, 17, Str("say"), Str("指挥官，辛苦了。"));
getByList(L,17);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("你也辛苦了！"));
replaceString(L, 2, Str("content"), Str("最终战绩是12:0"));
lua_pop(L,2);
replaceString(L, 18, Str("say"), Str("不辛苦，不辛苦……"));
replaceString(L, 19, Str("say"), Str("喔——指挥官真厉害啊……"));
replaceString(L, 20, Str("say"), Str("………………"));
replaceString(L, 21, Str("say"), Str("欸……有什么关系嘛，指挥官不是也完美地获得胜利了嘛。"));
replaceString(L, 22, Str("say"), Str("再说了为什么海盗就一定要打打杀杀啊……也太麻烦了……明明有其他方式可以轻松获得宝藏。"));
replaceString(L, 23, Str("say"), Str("呼哈~不说这个了……指挥官，你看这里、还有那个、那个和那个……"));
replaceString(L, 24, Str("say"), Str("这四个机关是打完触手之后才出现的。"));
replaceString(L, 25, Str("say"), Str("如果按照游戏的套路的话，把它们全部启动，就会出现离开这里的出口了吧。"));
replaceString(L, 26, Str("say"), Str("这边这个就交给我了，其他的就交给指挥官了。"));
replaceString(L, 27, Str("say"), Str("与维达一起启动了三个机关后，还剩下最后一个机关。"));
replaceString(L, 28, Str("say"), Str("机关悬挂在天花板上方，那并不是正常身高能够到的高度，周围也没有可以攀爬的工具。"));
replaceString(L, 29, Str("say"), Str("指挥官，怎么办？"));
replaceString(L, 30, Str("say"), Str("这么麻烦的话，要不放弃好了……"));
getByList(L,30);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("思考其他方法"));
replaceString(L, 2, Str("content"), Str("举起维达"));
lua_pop(L,2);
replaceString(L, 31, Str("say"), Str("……"));
replaceString(L, 32, Str("say"), Str("指挥官的表情……是还不想放弃吗？"));
replaceString(L, 33, Str("say"), Str("唔……那要不要试着把我举起来？那样的高度应该就能按到机关了。"));
replaceString(L, 34, Str("say"), Str("维达低下头，巨大的帽子笼罩住她小小的脸，但脸颊那抹红晕却未被完全遮挡。"));
replaceString(L, 35, Str("say"), Str("可以试试。"));
replaceString(L, 36, Str("say"), Str("（进入密室游玩的人数最少限制为两个人……）"));
replaceString(L, 37, Str("say"), Str("（既然这里没有协助通关的道具，那么通关的方式应该就是依靠双人的合作……）"));
replaceString(L, 38, Str("say"), Str("维达，我把你举起来，就能按到机关了吧？"));
replaceString(L, 39, Str("say"), Str("唔……也不是不行啦……"));
replaceString(L, 40, Str("say"), Str("维达低下头，巨大的帽子笼罩住她小小的脸，但脸颊那抹红晕却未被完全遮挡。"));
replaceString(L, 41, Str("say"), Str("不过指挥官要小心哦。"));
replaceString(L, 42, Str("say"), Str("……我倒不怕被摔到地上啦，主要是你不要受伤了哦。"));
replaceString(L, 43, Str("say"), Str("绕到维达身后，扶住了她的腰。"));
replaceString(L, 44, Str("say"), Str("唔///……"));
replaceString(L, 45, Str("say"), Str("弄疼你了？"));
replaceString(L, 46, Str("say"), Str("不是……指挥官快点啦！赶紧通关，我想回去躺着了。"));
replaceString(L, 47, Str("say"), Str("好。"));
replaceString(L, 48, Str("say"), Str("将维达朝着悬挂的机关处高高举起。"));
replaceString(L, 49, Str("say"), Str("或许是因为不习惯被人举起来，维达的手紧紧攥着我的衣袖，而双腿本能地晃动着。"));
replaceString(L, 50, Str("say"), Str("松垮的裙摆与袖子随着她的动作轻轻摇晃着，在掠过脸颊时带来一丝丝好闻的香气。"));
replaceString(L, 51, Str("say"), Str("嗯……这样就好了吧？"));
replaceString(L, 52, Str("say"), Str("维达伸手摁下了最后的机关，紧锁的船舱门缓缓打开了。"));
replaceString(L, 53, Str("say"), Str("太好了，这样就能继续前进了。"));
replaceString(L, 54, Str("say"), Str("……咳。"));
replaceString(L, 55, Str("say"), Str("指挥官……把我放下来吧。"));
getByList(L,55);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("好的，辛苦了。"));
replaceString(L, 2, Str("content"), Str("感觉还是这样过关效率高！"));
lua_pop(L,2);
replaceString(L, 56, Str("say"), Str("收回手，将维达稳稳当当地放到了地上。"));
replaceString(L, 57, Str("say"), Str("不辛苦啦……"));
replaceString(L, 58, Str("say"), Str("分……分头行动效率才高啦……指挥官，快……放我下来。"));
replaceString(L, 59, Str("say"), Str("少女双腿晃动的频率略微加快了。"));
replaceString(L, 60, Str("say"), Str("好吧——"));
replaceString(L, 61, Str("say"), Str("收回手，将维达稳稳当当地放到了地上。"));
replaceString(L, 62, Str("say"), Str("娇小的少女用脚尖点了点地，将即将掉落的宽松拖鞋重新穿好。"));
replaceString(L, 63, Str("say"), Str("指挥官，把手给我吧。"));
replaceString(L, 64, Str("say"), Str("怎么了？"));
replaceString(L, 65, Str("say"), Str("接下来……我们应该提高效率才是。"));
replaceString(L, 66, Str("say"), Str("这些古老的陷阱难不倒我……"));
replaceString(L, 67, Str("say"), Str("指挥官，你只需要看着就好，我来解决剩下的部分……"));
replaceString(L, 68, Str("say"), Str("维达牵起了我的手，拉着我一起走向了房间的深处。"));
lua_pop(L, 1);
}
void WEIDAHAO4(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("外出！寻得珍宝吧！\n\n<size=45>四　恐怖的暴风雨</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("啊……应该就是这样吧，把这个道具嵌进去……嗯，听见机关响动的声音了。"));
replaceString(L, 3, Str("say"), Str("这些关卡都太简单了，完全没有游戏好玩啊……"));
replaceString(L, 4, Str("say"), Str("下次还是一起在家打游戏吧，指挥官。"));
replaceString(L, 5, Str("say"), Str("轰隆隆——"));
replaceString(L, 6, Str("say"), Str("房间最前方的大门打开了。可是大门通向的是一个暴风雨中的甲板，而不是温馨的离场通道。"));
replaceString(L, 7, Str("say"), Str("明明刚刚都解完谜了……解谜错误的可能性很低……难道还有隐藏谜题吗？"));
replaceString(L, 8, Str("say"), Str("走上甲板，雷声震耳欲聋，密集的雨滴砸在身上，黏腻潮湿。"));
replaceString(L, 9, Str("say"), Str("呃啊……好大的风雨……好讨厌……"));
replaceString(L, 10, Str("say"), Str("那个绿头猫咪……认真过头了吧……"));
replaceString(L, 11, Str("say"), Str("（维达有些慌张……是因为不喜欢暴风雨吧……）"));
replaceString(L, 12, Str("say"), Str("往四周看了看，角落里有一处地方，顶部有可以遮挡住风雨的木板。"));
replaceString(L, 13, Str("say"), Str("维达，你去那边等我。"));
replaceString(L, 14, Str("say"), Str("我去找找过关线索。"));
replaceString(L, 15, Str("say"), Str("好……那你要注意安全哦。"));
replaceString(L, 16, Str("say"), Str("在甲板区域内仔细检查了一遍后，没有发现任何有用的线索。"));
replaceString(L, 17, Str("say"), Str("随着时间推移，暴风雨愈发猛烈了。海盗船的甲板上下颠簸，就像被卷入洪水中的树叶。"));
replaceString(L, 18, Str("say"), Str("没想到密室逃脱也这么危险……好想回家……吃薯片……打游戏……"));
replaceString(L, 19, Str("say"), Str("维达的声音比平时更加无精打采。"));
replaceString(L, 20, Str("say"), Str("维达，不要怕，这里的景象都是假的。"));
replaceString(L, 21, Str("say"), Str("嗯……我知道都是假的……"));
replaceString(L, 22, Str("say"), Str("不过，果然还是很讨厌呢……这种危险的场景……"));
replaceString(L, 23, Str("say"), Str("即使嘴上说着没事，少女却又努力地缩了缩，让自己躲进宽大的外套里。"));
getByList(L,23);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("拥抱安慰"));
replaceString(L, 2, Str("content"), Str("放弃通关"));
lua_pop(L,2);
replaceString(L, 24, Str("say"), Str("走到维达身边，将纤瘦娇小的少女拥入怀中，她有些惊讶地在我怀中僵住。"));
replaceString(L, 25, Str("say"), Str("不用害怕，我在这里。"));
replaceString(L, 26, Str("say"), Str("很快，维达回过神来，伸手回抱，轻轻抓住了我背后的衣服。"));
replaceString(L, 27, Str("say"), Str("……指挥官的怀抱让人很安心……"));
replaceString(L, 28, Str("say"), Str("（本来就是为了放松心情而来的，继续和这暴风雨僵持的话，维达会很难受。）"));
replaceString(L, 29, Str("say"), Str("要不我们弃权吧，先离开这里。"));
replaceString(L, 30, Str("say"), Str("维达抬起头，直勾勾地看了我一会儿。"));
replaceString(L, 31, Str("say"), Str("接着她站起来，朝我走来，埋入我的怀中。"));
replaceString(L, 32, Str("say"), Str("都到这里了，累死了，现在弃权也太不值当了……"));
replaceString(L, 33, Str("say"), Str("这样就好了，指挥官的怀抱让人很安心……"));
replaceString(L, 34, Str("say"), Str("少女因为害怕而僵硬的身体逐渐在我的怀中放松下来。"));
replaceString(L, 35, Str("say"), Str("小小的脸蛋在我的肩头蹭了蹭。"));
replaceString(L, 36, Str("say"), Str("谢谢你，指挥官。"));
replaceString(L, 37, Str("say"), Str("分享着彼此的温度，直至暴风雨渐歇。"));
replaceString(L, 38, Str("say"), Str("嗯……？风暴消散了……？"));
replaceString(L, 39, Str("say"), Str("艳阳高照，晴空万里。平静的海面之上已经没有了那场猛烈风暴的痕迹。"));
replaceString(L, 40, Str("say"), Str("而甲板之上，凭空出现了一扇门。"));
replaceString(L, 41, Str("say"), Str("……这样就算，过关了？"));
replaceString(L, 42, Str("say"), Str("大概……"));
replaceString(L, 43, Str("say"), Str("唔……虽说暴风雨有点恐怖，不过……"));
replaceString(L, 44, Str("say"), Str("这么一动不动就能过关的形式……"));
replaceString(L, 45, Str("say"), Str("倒是不错……"));
replaceString(L, 46, Str("say"), Str("指挥官……我们继续前进吧。"));
lua_pop(L, 1);
}
void WEIDAHAO5(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("外出！寻得珍宝吧！\n\n<size=45>五　终点就在前方</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("穿过大门后，我们进入了一个宝物库中。放眼望去，视线中尽是琳琅满目的\"宝藏\"。"));
replaceString(L, 3, Str("say"), Str("哇……怎么什么东西都有啊……"));
replaceString(L, 4, Str("say"), Str("啊……这个花瓶……哦，不是真的，真的那个在我的仓库里……"));
replaceString(L, 5, Str("say"), Str("这个游戏，已经绝版了……我一直蛮想要的。"));
replaceString(L, 6, Str("say"), Str("这个口味的薯片好少见哦……"));
replaceString(L, 7, Str("say"), Str("维达在\"宝藏\"堆里游走着，而我注意到了房间墙壁上的文字提醒。"));
replaceString(L, 8, Str("say"), Str("维达，看那边。"));
replaceString(L, 9, Str("say"), Str("欸……指挥官直接念给我听不就好了……"));
replaceString(L, 10, Str("say"), Str("\"带着最珍贵的宝藏离开‘幽灵船’，就能取得最后的胜利。\""));
replaceString(L, 11, Str("say"), Str("最珍贵的宝藏吗？"));
replaceString(L, 12, Str("say"), Str("嗯……指挥官觉得什么才是最珍贵的宝藏？"));
replaceString(L, 13, Str("say"), Str("（在宝藏方面并没有特别的想法，交给经验更丰富的维达来选择会更好。）"));
replaceString(L, 14, Str("say"), Str("维达来选就好。"));
replaceString(L, 15, Str("say"), Str("……做选择也是件麻烦的事情呢……"));
replaceString(L, 16, Str("say"), Str("那要不还是看看绝版游戏吧……"));
replaceString(L, 17, Str("say"), Str("虽然抱怨着，可是维达还是在宝藏堆里挑挑拣拣起来。"));
replaceString(L, 18, Str("say"), Str("游戏算是最珍贵吗……论价值的话，肯定不是……"));
replaceString(L, 19, Str("say"), Str("如果是单纯从意义层面出发的话……唔……最珍贵……"));
replaceString(L, 20, Str("say"), Str("维达抬头看向了我。"));
replaceString(L, 21, Str("say"), Str("怎么了？"));
replaceString(L, 22, Str("say"), Str("没什么……只是我知道要选什么啦。"));
replaceString(L, 23, Str("say"), Str("维达放下了手中的绝版游戏，走到我面前，握住了我的手。"));
replaceString(L, 24, Str("say"), Str("嗯？维达什么都不拿么？"));
replaceString(L, 25, Str("say"), Str("我已经选好啦。"));
replaceString(L, 26, Str("say"), Str("——走吧，指挥官。"));
replaceString(L, 27, Str("say"), Str("维达再次牵起了我的手，拉着我从另一个门离开了宝物库。"));
lua_pop(L, 1);
}
void WEIDAHAO6(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("外出！寻得珍宝吧！\n\n<size=45>六　最珍贵的宝藏</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("离开宝物库，经过一段狭长的走廊后，我们进入了一个具有现代化装修的房间中。"));
replaceString(L, 3, Str("say"), Str("房间的中央摆着一小块台子，周围用蓝色的绳子围了起来，标识着\"宝藏展示区\"。"));
replaceString(L, 4, Str("say"), Str("请将最珍贵的宝藏提交至指定地点。"));
replaceString(L, 5, Str("say"), Str("唔……看来是要把宝藏放到这个台子上才行呢……"));
replaceString(L, 6, Str("say"), Str("指挥官，你站到\"宝藏展示区\"那个台子上去吧。"));
replaceString(L, 7, Str("say"), Str("（原来维达选择的最珍贵的宝藏是……）"));
replaceString(L, 8, Str("say"), Str("结合眼下的情况，我很快明白了维达的意思，走过去站到了台子上。"));
replaceString(L, 9, Str("say"), Str("然而——什么都没有发生。"));
replaceString(L, 10, Str("say"), Str("请将最珍贵的宝藏提交至指定地点。"));
replaceString(L, 11, Str("say"), Str("……我已经提交了最珍贵的宝物了。"));
replaceString(L, 12, Str("say"), Str("指挥官就是最珍贵的宝藏……"));
replaceString(L, 13, Str("say"), Str("请将最珍贵的宝藏提交至指定地点。"));
replaceString(L, 14, Str("say"), Str("绿头猫咪做的笨蛋系统……连指挥官是我最珍贵的宝藏都听不懂……"));
replaceString(L, 15, Str("say"), Str("维达轻轻叹了口气，然后抬起红扑扑的脸，看了过来。"));
replaceString(L, 16, Str("say"), Str("能来到港区，能在这样风平浪静的地方生活，都是因为指挥官……"));
replaceString(L, 17, Str("say"), Str("能与指挥官相遇，能够留在指挥官的身边，我真的很开心……"));
replaceString(L, 18, Str("say"), Str("所以指挥官是我最珍贵的宝藏……"));
replaceString(L, 19, Str("say"), Str("笨蛋系统，这样子听懂了吗？"));
replaceString(L, 20, Str("say"), Str("如果不能提交\"指挥官\"的话，那么我要哭要闹……要差评要退票了哦……"));
getByList(L,20);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("摸摸维达的头"));
lua_pop(L,2);
replaceString(L, 21, Str("say"), Str("能与维达相遇，我也很开心。"));
replaceString(L, 22, Str("say"), Str("唔……会长不高的，指挥官！"));
replaceString(L, 23, Str("say"), Str("算了，抗议也很麻烦，想摸就摸吧……"));
replaceString(L, 24, Str("say"), Str("……喵？！"));
replaceString(L, 25, Str("say"), Str("咳……正在重新评定通关条件。"));
replaceString(L, 26, Str("say"), Str("恭喜喵~指挥官是最珍贵的宝藏，恭喜通关喵！"));
replaceString(L, 27, Str("say"), Str("砰砰——砰——"));
replaceString(L, 28, Str("say"), Str("伴随着广播中的通关宣言，彩带礼花随即从四处爆开。"));
replaceString(L, 29, Str("say"), Str("呼呼呼……这样总算顺利通关了。"));
replaceString(L, 30, Str("say"), Str("伟大的维达号与指挥官的大胜利~"));
lua_pop(L, 1);
}
void WEIDAHAO7(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("外出！寻得珍宝吧！\n\n<size=45>七　是结束也是开始</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("一段时间后，奖品领取处——"));
replaceString(L, 3, Str("say"), Str("勇敢的海盗大人，请选择您的通关奖品。"));
replaceString(L, 4, Str("say"), Str("呼啊……终于可以领奖品了。"));
replaceString(L, 5, Str("say"), Str("维达罕见的精神了一些，\"噔噔噔\"地走向了礼品区。"));
replaceString(L, 6, Str("say"), Str("超级薯片限量大礼包，海盗厨房典藏版，人体工学枕头，还有……"));
replaceString(L, 7, Str("say"), Str("感觉哪个都想要，好难选出来……"));
replaceString(L, 8, Str("say"), Str("唔……指挥官，解谜过程你也很辛苦，要不你来决定吧。"));
replaceString(L, 9, Str("say"), Str("维达懒洋洋地靠了回来。"));
replaceString(L, 10, Str("say"), Str("嗯……"));
getByList(L,10);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("超级薯片限量大礼包？"));
replaceString(L, 2, Str("content"), Str("海盗厨房典藏版"));
replaceString(L, 3, Str("content"), Str("人体&船体工程学枕头"));
lua_pop(L,2);
replaceString(L, 11, Str("say"), Str("唔……也好。这个薯片限定礼包口味极佳，而且不是靠钱就能轻松买到的……"));
replaceString(L, 12, Str("say"), Str("维达轻轻拿起了超级薯片限量大礼包，但目光仍有些不舍地看着其他奖品。"));
replaceString(L, 13, Str("say"), Str("唔……也好。海盗厨房是款评分很高的双人游戏，典藏版还附带一种不论如何都能让客人满足的食谱……"));
replaceString(L, 14, Str("say"), Str("维达轻轻拿起了海盗厨房典藏版，但目光仍有些不舍地看着其他奖品。"));
replaceString(L, 15, Str("say"), Str("唔……也好。要是很舒服的话，也可以借给指挥官用哦……"));
replaceString(L, 16, Str("say"), Str("维达轻轻抱起人体&船体工程学枕头，但目光仍有些不舍地看着其他奖品。"));
replaceString(L, 17, Str("say"), Str("嗯……"));
replaceString(L, 18, Str("say"), Str("看来，这三个奖品都十分优秀，令人难以取舍啊——"));
replaceString(L, 19, Str("say"), Str("是啊……好难抉择……"));
replaceString(L, 20, Str("say"), Str("选择这些奖品作为密室逃脱奖励的{namecode:98:明石}，真的很有品味呢——"));
replaceString(L, 21, Str("say"), Str("是啊……不得不说，她在这方面确实很有品味……"));
replaceString(L, 22, Str("say"), Str("整个密室逃脱流程也设计得相当好呢——"));
replaceString(L, 23, Str("say"), Str("嗯……？喔——"));
replaceString(L, 24, Str("say"), Str("是啊——不但有战斗，有解密……还有让人在暴风雨中瑟瑟发抖几个小时的设计。"));
replaceString(L, 25, Str("say"), Str("真是一次逼真又美好的体验呢——"));
replaceString(L, 26, Str("say"), Str("可惜……要拿走另外两份奖励，我和指挥官只能再通关两遍全流程……"));
replaceString(L, 27, Str("say"), Str("指挥官也只好再在暴风雨中瑟瑟发抖好多个小时了——"));
replaceString(L, 28, Str("say"), Str("……喵？！！"));
replaceString(L, 29, Str("say"), Str("咳咳……恭、恭喜两位勇敢的海盗大人。"));
replaceString(L, 30, Str("say"), Str("因为二位在冒险中的出色表现，已经达成了密室逃脱的白金成就。"));
replaceString(L, 31, Str("say"), Str("因……因此，两位可以直接带走全部三份奖品……喵！"));
replaceString(L, 32, Str("say"), Str("……真的么？{namecode:98:明石}，你人真好。"));
replaceString(L, 33, Str("say"), Str("那是喵，那是喵……"));
replaceString(L, 34, Str("say"), Str("喵哈哈……哈哈……哈……"));
replaceString(L, 35, Str("say"), Str("呼啊……回去之后就可以躺在软软的枕头上，一边吃薯片，一边打游戏……"));
replaceString(L, 36, Str("say"), Str("指挥官……谢谢你啦。"));
replaceString(L, 37, Str("say"), Str("还要感谢一下某绿头猫咪的慷慨。"));
replaceString(L, 38, Str("say"), Str("噗……"));
replaceString(L, 39, Str("say"), Str("随着夜幕落下，灯火逐渐亮起。"));
replaceString(L, 40, Str("say"), Str("维达满足地抱着奖品，倚靠在我的身边，眼中盛着光，对我露出了笑容。"));
replaceString(L, 41, Str("say"), Str("虽然我真的好累……"));
replaceString(L, 42, Str("say"), Str("不过，偶尔这样子跟指挥官一起出来玩，感觉也很不错。"));
getByList(L,42);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("我也是，跟维达玩得很开心。"));
replaceString(L, 2, Str("content"), Str("我也是，和维达在一起很开心。"));
lua_pop(L,2);
replaceString(L, 43, Str("say"), Str("嘿嘿……总之我就是很喜欢指挥官啦，以后也一直在一起吧……"));
replaceString(L, 44, Str("say"), Str("说起来，那个密室主题店，我刚刚看到下次主题更新好像是在十天后……"));
replaceString(L, 45, Str("say"), Str("到时候一起去么？"));
replaceString(L, 46, Str("say"), Str("……你竟然会想主动出门了？"));
replaceString(L, 47, Str("say"), Str("和你在一起，偶尔的话……还是很有趣的……"));
replaceString(L, 48, Str("say"), Str("况且，或许还会遇到那种坐着不动几个小时就能通关的关卡……"));
replaceString(L, 49, Str("say"), Str("这个可能，不会有了吧。"));
replaceString(L, 50, Str("say"), Str("噗……嘿嘿嘿。"));
replaceString(L, 51, Str("say"), Str("那就到时候看到奖品之后再说~"));
replaceString(L, 52, Str("say"), Str("现在的话——"));
replaceString(L, 53, Str("say"), Str("维达紧紧牵住了我的手。"));
replaceString(L, 54, Str("say"), Str("我们还是赶紧回去玩海盗厨房吧！"));
lua_pop(L, 1);
}
void WEIJIAO01(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("虽然有点想和刚刚抵达的姐姐叙叙旧，不过还是留到路上再说吧。"));
replaceString(L, 2, Str("say"), Str("刚才接到了商船沉没前发出的无线电报，报告了两个月来胡作非为的{namecode:431}的位置，要开始追踪了哦"));
replaceString(L, 3, Str("say"), Str("啊哈哈，阿贾克斯还是老样子嘛，那么…我们要去哪里？"));
replaceString(L, 4, Str("say"), Str("姐姐也是呢，呵呵，要是在那边被欺负了尽管跟我说哟，最近正好有些无聊呢~"));
replaceString(L, 5, Str("say"), Str("目标，拉普拉塔河口，方位南纬32度，西经47度，匀速航行，保持警戒，路上可能会有些小虫子呢。"));
replaceString(L, 6, Str("say"), Str("等等，虽然长官的命令是绝对的，这几个月的搜索任务中的捉弄我也忍了…"));
replaceString(L, 7, Str("say"), Str("但是我必须搞清楚你不是在胡乱地下达指令！"));
replaceString(L, 8, Str("say"), Str("啊哈哈，阿贾克斯，埃克塞特怎么说也是前辈，平时不要太欺负她呀。"));
replaceString(L, 9, Str("say"), Str("因为搜索任务太无聊嘛，总得找点事情~"));
replaceString(L, 10, Str("say"), Str("你！"));
replaceString(L, 11, Str("say"), Str("哎呀，埃克塞特姐姐，我家妹妹平时就是这样没大没小的，让你生气了我替她向你道歉。"));
replaceString(L, 12, Str("say"), Str("不过请相信，我们姐妹里最聪明的一个，阿贾克斯从来不会说没有根据的话的，对吧？"));
replaceString(L, 13, Str("say"), Str("呵呵呵，电报的位置在南大西洋，而拉普拉塔河口作为那一带航线最为拥堵的地方，如果你是{namecode:431}，会不会想去那个能给敌人造成最大损伤的地方？"));
replaceString(L, 14, Str("say"), Str("我……会去。"));
replaceString(L, 15, Str("say"), Str("那就出发吧，如果我的想法没有错，半路上我们就会遇到敌人了，呵呵呵，可千万不要让我失望啊，{namecode:431}……"));
replaceString(L, 16, Str("say"), Str("……还有坎伯兰怎么办？"));
replaceString(L, 17, Str("say"), Str("时间不等人，让她后面赶上吧。"));
replaceString(L, 18, Str("say"), Str("…………我知道了，但愿你的判断没有出错，还有——"));
replaceString(L, 19, Str("say"), Str("回去后我会把你的一言一行都上报给军部的！"));
replaceString(L, 20, Str("say"), Str("呵呵，请便~"));
replaceString(L, 21, Str("say"), Str("啊哈哈，你们关系不错嘛~"));
replaceString(L, 22, Str("say"), Str("哪里看出来关系不错了啊！"));
lua_pop(L, 1);
}
void WEIJIAO02(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("这条航线上竟然真的有拦路的铁血舰队……虽然不想承认，看起来你也许是对的。快把这个家伙也解决掉去拉普拉塔河吧。"));
replaceString(L, 2, Str("say"), Str("想通过这里可没有那么简单！"));
replaceString(L, 3, Str("say"), Str("呵呵，你是……Z驱吧？"));
replaceString(L, 4, Str("say"), Str("没错，Z驱的大姐就是我{namecode:400}——莱伯勒希特·马斯！"));
replaceString(L, 5, Str("say"), Str("妹妹很多一定很辛苦吧？"));
replaceString(L, 6, Str("say"), Str("欸，啊？也没有啦，妹妹们都是可爱的家伙，我这个当大姐的开心还来不及呢。"));
replaceString(L, 7, Str("say"), Str("和我家大姐一样是个好姐姐呢。"));
replaceString(L, 8, Str("say"), Str("哪里哪里。"));
replaceString(L, 9, Str("say"), Str("{namecode:431}快到拉普拉塔河口了吧？"));
replaceString(L, 10, Str("say"), Str("是……啊，嘁，当我是傻瓜吗！"));
replaceString(L, 11, Str("say"), Str("总之我是,不会让你们过去的！"));
replaceString(L, 12, Str("say"), Str("呵呵呵，，越是这样的对手越有捉弄的价值呢…埃克塞特，上了！"));
replaceString(L, 13, Str("say"), Str("好吧，突然有点同情起对手了… "));
lua_pop(L, 1);
}
void WEIJIAO03(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("根据情报，{namecode:431}虽然击沉了数只商船，但是救助了落水的船员，看在这一点的份上，放你一马。"));
replaceString(L, 2, Str("say"), Str("呵……你这人，虽然阴险，人还不错……嘛……"));
replaceString(L, 3, Str("say"), Str("昏过去了……真的把她丢在这里就好吗？"));
replaceString(L, 4, Str("say"), Str("虽然我不介意多个玩具，不过我们现在可没有带着个俘虏面对{namecode:431}的空间哦？"));
replaceString(L, 5, Str("say"), Str("还是说，出于高贵的骑士精神，你想要自告奋勇拖着她走？"));
replaceString(L, 6, Str("say"), Str("你这人……我知道了，继续前进吧。"));
lua_pop(L, 1);
}
void WEIJIAO04(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("现在我来讲一下战术。"));
replaceString(L, 2, Str("say"), Str("噢~"));
replaceString(L, 3, Str("say"), Str("战术……？"));
replaceString(L, 4, Str("say"), Str("面对这种等级的对手，难道你认为…光靠我们三个的火力就足以压制住她吗？不行哦埃克塞特前辈，要多动脑筋呢~"));
replaceString(L, 5, Str("say"), Str("吸……呼，平常心，平常心……那就请你讲解一下战术吧。"));
replaceString(L, 6, Str("say"), Str("呵呵，其实很简单，如果在白天遭遇了{namecode:431}，就麻烦埃克塞特前辈你脱离队列从另一侧进行包抄，如果是晚上，就没有必要了，不过我们还是要保持一定的距离。"));
replaceString(L, 7, Str("say"), Str("以我们其中一方为诱饵，让另一方有攻击的空间吗……但是这样的话火力不会不够吗？"));
replaceString(L, 8, Str("say"), Str("不要忘了，我们的目标可不是解决{namecode:431}哦？"));
replaceString(L, 9, Str("say"), Str("……我明白了，你说得对，我会照做的。"));
replaceString(L, 10, Str("say"), Str("啊哈哈，既然决定了，让我们解决拦路的舰队然后展开搜索吧。"));
lua_pop(L, 1);
}
void WEIJIAO05(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("……失算了，居然是狩猎部队，不是商队……"));
replaceString(L, 2, Str("say"), Str("哎呀，我说为什么明明射程上是你有利却比我们还要急着近身，原来是看错了吗，堂堂{namecode:431}，也不过如此嘛~"));
replaceString(L, 3, Str("say"), Str("……就算这样，你们也不是我的对手。"));
replaceString(L, 4, Str("say"), Str("这可就说不准了！"));
replaceString(L, 5, Str("say"), Str("夹击吗……小聪明！"));
replaceString(L, 6, Str("say"), Str("是不是小聪明，可要打过才知道了呢……姐姐，上了。"));
replaceString(L, 7, Str("say"), Str("没问题~"));
lua_pop(L, 1);
}
void WEIJIAO06(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("嘁…有点不妙…"));
replaceString(L, 2, Str("say"), Str("别、别想跑——咕哈……！！"));
replaceString(L, 3, Str("say"), Str("埃克塞特，你没事吧！"));
replaceString(L, 4, Str("say"), Str("……可能……咳咳，不太好……"));
replaceString(L, 5, Str("say"), Str("咦，这个方向是……？"));
replaceString(L, 6, Str("say"), Str("唔……那就请前辈先回去接受修理吧，我和姐姐会继续追击{namecode:431}。"));
replaceString(L, 7, Str("say"), Str("等等，她虽然撤退了，但是光凭你们两个能做什么……我，咳咳，我还……"));
replaceString(L, 8, Str("say"), Str("现在的前辈只是个累赘呢…还是认清现实吧~而且……"));
replaceString(L, 9, Str("say"), Str("我可不想轻易把击沉{namecode:431}的功劳拱手让人呢~"));
replaceString(L, 10, Str("say"), Str("但是……！"));
replaceString(L, 11, Str("say"), Str("呵呵，前辈，在担心我之前，还是先担心你自己吧~"));
replaceString(L, 12, Str("say"), Str("……我知道了，祝你们好运。"));
lua_pop(L, 1);
}
void WEIJIAO07(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("不过……就剩我们两个…真的还要追下去吗，阿贾克斯？"));
replaceString(L, 2, Str("say"), Str("当然了，姐姐。不要忘了，我们背后可是有着无数伙伴的"));
replaceString(L, 3, Str("say"), Str("哪怕战术上牺牲我们整个G舰队，只要能够确实地让{namecode:431}重伤，甚至不需要让她沉没，只要她不得不返航修理，那她就一定会在我们皇家的封锁线上被捕获"));
replaceString(L, 4, Str("say"), Str("这样战略上就是皇家的胜利。我们已经花费了太多时间在{namecode:431}身上了，能够就靠我们解决她的话，自然不需要劳烦其他姐妹们。"));
replaceString(L, 5, Str("say"), Str("你…从一开始就打着这样的主意吗…那你放过{namecode:400}也是因为她无法突破封锁线？"));
replaceString(L, 6, Str("say"), Str("不，如果封锁线那么可靠，我们就不用这么辛苦了吧……"));
replaceString(L, 7, Str("say"), Str("不过小鱼而已，放过又如何呢？那个程度的伤足够她在船坞里躺一阵子了"));
replaceString(L, 8, Str("say"), Str("而且，我们的目标是{namecode:431}哦？"));
replaceString(L, 9, Str("say"), Str("所以是真的放她一马啊……啊哈哈，你要是把这些说给埃克塞特听，她就不会那么讨厌你了吧？"));
replaceString(L, 10, Str("say"), Str("那样多没意思，埃克塞特前辈那样的人就是要玩弄起来才有趣哦~"));
replaceString(L, 11, Str("say"), Str("是是是~那么我这个姐姐就奉陪一下可爱妹妹难得展现的为同伴着想的心好了~"));
replaceString(L, 12, Str("say"), Str("不过嘛，如果真的是送死的事，我就编个理由让姐姐你也回去了，但是现在从{namecode:431}逃跑的方向还有性格来看，说不定我们能非常轻松地解决她呢……"));
replaceString(L, 13, Str("say"), Str("欸，是这样啊？"));
replaceString(L, 14, Str("say"), Str("呵呵呵，当然，接下来我们要做一些引导，还要让军部做一些准备，不让她有机会改变现在的目的地才行。"));
replaceString(L, 15, Str("say"), Str("嗯嗯。"));
replaceString(L, 16, Str("say"), Str("还有……谢谢你，姐姐，看到你一如既往真是太好了。"));
replaceString(L, 17, Str("say"), Str("这孩子……说完话就一个人冲出去了，是要多害羞啊~啊哈哈，看到你一如既往我也很开心哦，我的妹妹，阿贾克斯。"));
lua_pop(L, 1);
}
void WEIJIAO08(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("呵呵呵，怎么样啊？被人赶出来不得不和我们决战的感想？"));
replaceString(L, 2, Str("say"), Str("…………"));
replaceString(L, 3, Str("say"), Str("友情提示～虽然你停留的港口是中立港，但·是·呢～其实还是我们皇家的小伙伴哟～？"));
replaceString(L, 4, Str("say"), Str("如果选的是另外那个港口，我可就要稍微伤点脑筋了呢……"));
replaceString(L, 5, Str("say"), Str("竟然算计到这个地步了吗…但是仅凭你们两个，有什么自信能够战胜我？"));
replaceString(L, 6, Str("say"), Str("你也收到情报了吧？皇家方舟、声望…这些足以毁灭你的同伴们，都在赶来的路上哟？"));
replaceString(L, 7, Str("say"), Str("我们只需要把你拖在这里就可以了呢~"));
replaceString(L, 8, Str("say"), Str("……原来如此，真是……周全的计划。"));
replaceString(L, 9, Str("say"), Str("看在你救助了许多商船船员的份上，以皇家的名义，我可以给你一个机会，在这里选择投降的话，对大家都比较好哦？"));
replaceString(L, 10, Str("say"), Str("……就算自沉也不会如你所愿的！来吧，皇家的智将，铁血的战士是不会那么简单就被言语打倒的！"));
lua_pop(L, 1);
}
void WEIJIAO09(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("真是个坚强的家伙呢……战斗到最后一刻然后选择了自沉，总觉得我们才像是恶人一样。"));
replaceString(L, 2, Str("say"), Str("呵呵，哪有什么善人恶人……这就是战争哦，姐姐。"));
replaceString(L, 3, Str("say"), Str("通知坎伯兰不用过来了，以及通告全军，{namecode:431}已经沉没了……吧。"));
replaceString(L, 4, Str("say"), Str("没问题，那我们也返航……嗯？阿贾克斯，你怎么啦？"));
replaceString(L, 5, Str("say"), Str("姐姐你先走吧。"));
replaceString(L, 6, Str("say"), Str("……嗯，我知道了，你也尽快赶上来哦。"));
replaceString(L, 7, Str("say"), Str("嗯"));
replaceString(L, 8, Str("say"), Str("抱歉呢，我们的后方只有坎伯兰在赶过来，皇家方舟和声望都是假的哦？"));
replaceString(L, 9, Str("say"), Str("当然了，即使你能赢过我和姐姐，在你选择了进入这个港口的瞬间，就注定你的失败了。"));
replaceString(L, 10, Str("say"), Str("哎呀，真不像我，竟然有点感伤了起来，还是回去继续戏弄埃克塞特前辈吧。"));
replaceString(L, 11, Str("say"), Str("谢谢你，{namecode:431}，我玩的很开心哦，呵呵呵……"));
lua_pop(L, 1);
}
void WEIJIAOXIAOSIPEIBOJUE1(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("有些故事没有开端，有些故事没有结尾。而有些故事，就这样发生了————"));
replaceString(L, 2, Str("say"), Str("■■■■年■月■日 海域坐标■■■■ ■■■■"));
replaceString(L, 3, Str("say"), Str("轰————————————！"));
replaceString(L, 4, Str("say"), Str("敌袭出现了？！海伦娜，你没事吧！"));
replaceString(L, 5, Str("say"), Str("我没事……但是货物又被抢走了！"));
replaceString(L, 6, Str("say"), Str("怎么会这样………已经是本周第三次袭击了。"));
replaceString(L, 7, Str("say"), Str("再这样下去，我们的甜品供应就要彻底中断了啊！"));
replaceString(L, 8, Str("say"), Str("主动出击啊，主动出击！事到如今只能主动出击了！"));
replaceString(L, 9, Str("say"), Str("我们一定要把抢夺货船的人抓出来！"));
replaceString(L, 10, Str("say"), Str("总之还是先收集情报吧……没有情报的话是抓不到犯人的哦。"));
replaceString(L, 11, Str("say"), Str("那就这么决定了，我带领更多的量产型加强护航力度。"));
replaceString(L, 12, Str("say"), Str("海伦娜去跟其他阵营交换情报。甜品供应中断的话，其他阵营应该也很困扰才是。"));
replaceString(L, 13, Str("say"), Str("那我呢，那我呢？！"));
replaceString(L, 14, Str("say"), Str("{namecode:524}就负责去写给萨拉托加的报告好了！也许她那边会知道什么事！"));
replaceString(L, 15, Str("say"), Str("了解啦~！给小加加写报告的事就交给我吧！"));
replaceString(L, 16, Str("say"), Str("呼呼呼……甜品，美味的甜品……"));
replaceString(L, 17, Str("say"), Str("再多收集一些吧~"));
lua_pop(L, 1);
}
void WEIJIAOXIAOSIPEIBOJUE2(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("几日后——————"));
replaceString(L, 2, Str("say"), Str("海伦娜，我带领白鹰的支援抵达了哦。"));
replaceString(L, 3, Str("say"), Str("快看快看，皇家的支援也抵达了哟————"));
replaceString(L, 4, Str("say"), Str("您好，海伦娜小姐，我带来了皇家的支援与陛下的问候。"));
replaceString(L, 5, Str("say"), Str("为了爱与和平，我们一定要尽快平息此次甜品危机才行！"));
replaceString(L, 6, Str("say"), Str("重樱舰队也来了哦，真没想到会发生这种事。"));
replaceString(L, 7, Str("say"), Str("甜品供应减少，连宴会都要开不起来了……"));
replaceString(L, 8, Str("say"), Str("好吃的团子也没有了……必须要尽快，阻止事态的恶化！"));
replaceString(L, 9, Str("say"), Str("滴滴滴——这里是小加加来自后方的最新情报！"));
replaceString(L, 10, Str("say"), Str("是铁血！铁血就是这一系列甜品运输船袭击事件的幕后黑手！"));
replaceString(L, 11, Str("say"), Str("我在去海边游乐园玩的时候，偶然目击到了{namecode:427}进行甜品交易的现场！"));
replaceString(L, 12, Str("say"), Str("当时我只顾偷看交易，却忽略了从背后而来的另一个同伙。"));
replaceString(L, 13, Str("say"), Str("……等我醒过来之后，交易已经结束了！"));
replaceString(L, 14, Str("say"), Str("不愧是萨拉托加，真是很有意义的情报……"));
replaceString(L, 15, Str("say"), Str("袭击团伙里还有其他人，不过另一个人究竟是……"));
replaceString(L, 16, Str("say"), Str("紧急情况！运送甜品的运输船又被袭击了！"));
replaceString(L, 17, Str("say"), Str("量产型舰队已经与敌人交战了，我正在前往现场，大家也一起支援吧！"));
replaceString(L, 18, Str("say"), Str("这次一定要抓到幕后黑手！"));
lua_pop(L, 1);
}
void WEIJIAOXIAOSIPEIBOJUE3_1(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("抓住你了！抢夺甜品的犯人！"));
replaceString(L, 2, Str("say"), Str("哼哼哼~还是当场抓获，剩下的事就去监狱里交代吧。"));
replaceString(L, 3, Str("say"), Str("立刻放下武器把甜品交出来，否则……我们就要被迫采取武力措施了。"));
replaceString(L, 4, Str("say"), Str("我是不会把甜品交出来的哟。"));
replaceString(L, 5, Str("say"), Str("铁血也不止是啤酒和香肠，明明甜品也很重要……但是很少有人注意到这一点。"));
replaceString(L, 6, Str("say"), Str("……所以我制定了一个计划，一个可以把大海变成甜品的伟大计划！"));
replaceString(L, 7, Str("say"), Str("现在已经进行到最后一步了……"));
replaceString(L, 8, Str("say"), Str("很快，大海就要被甜品覆盖了……不要阻止我！"));
replaceString(L, 9, Str("say"), Str("……虽然没太听懂，但是我感觉到了危险。"));
replaceString(L, 10, Str("say"), Str("甜品是很重要，但是大海也很重要哦！"));
replaceString(L, 11, Str("say"), Str("……蔚蓝的大海让人心旷神怡，而且也是海鲜赖以生存的家园……"));
replaceString(L, 12, Str("say"), Str("不会让你肆意妄为的……！"));
replaceString(L, 13, Str("say"), Str("那就放马过来吧。我可是很强的，被打疼了也不许哭哦~"));
lua_pop(L, 1);
}
void WEIJIAOXIAOSIPEIBOJUE3_2(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("大家开火的时候注意，不要打到甜品运输船了！"));
replaceString(L, 2, Str("say"), Str("……那些裂缝好像不是我们打的……是小{namecode:432}自己在破坏那些运输船！"));
replaceString(L, 3, Str("say"), Str("啊啊啊啊，运输船都裂开了，甜品都流进海里了！"));
replaceString(L, 4, Str("say"), Str("……然后海水本身正在变成甜品？！"));
replaceString(L, 5, Str("say"), Str("…………好甜，好好喝……（咕噜）"));
replaceString(L, 6, Str("say"), Str("呜啊啊{namecode:161}姐姐，这个不能喝啊！"));
replaceString(L, 7, Str("say"), Str("这究竟是……你究竟做了什么？！"));
replaceString(L, 8, Str("say"), Str("将大海，变为甜品之海，我原本是这么计划的……"));
replaceString(L, 9, Str("say"), Str("可惜不能如愿了…………"));
replaceString(L, 10, Str("say"), Str("这样的话，我就要在此自沉，沉入无穷无尽的甜品之海里！"));
replaceString(L, 11, Str("say"), Str("……等！"));
replaceString(L, 12, Str("say"), Str("再见了，我不会再回来了——"));
replaceString(L, 13, Str("say"), Str("就这样，甜品危机得到了解决。"));
replaceString(L, 14, Str("say"), Str("在小{namecode:432}自沉的地方，到现在也会涌出源源不断的甜品，成为了广受好评的旅游胜地。"));
replaceString(L, 15, Str("say"), Str("至于小{namecode:432}，有人说她已经前往甜品的世界了，有人说她被小{namecode:428}救了回去。"));
replaceString(L, 16, Str("say"), Str("不论如何，没有人再见过她的身影。"));
replaceString(L, 17, Str("say"), Str("总而言之，有些故事没有开端，有些故事没有结尾。而有些故事，就是这样结束了————"));
replaceString(L, 18, Str("say"), Str("——THE END——"));
getByList(L,19);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("主演：小{namecode:432}"));
lua_settable(L, -3);
lua_pop(L,3);
getByList(L,19);
lua_getfield(L, -1, Str("sequence"));
getByList(L,2);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("友情协助："));
lua_settable(L, -3);
lua_pop(L,3);
getByList(L,19);
lua_getfield(L, -1, Str("sequence"));
getByList(L,3);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("小克利夫兰 小海伦娜 小企业 小柴郡 {namecode:527}"));
lua_settable(L, -3);
lua_pop(L,3);
getByList(L,19);
lua_getfield(L, -1, Str("sequence"));
getByList(L,4);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("小声望 小光辉 小凰 小鲟 小鳐 小加加(?)"));
lua_settable(L, -3);
lua_pop(L,3);
getByList(L,19);
lua_getfield(L, -1, Str("sequence"));
getByList(L,5);
lua_pushnumber(L, 1);
lua_pushstring(L, Str(" "));
lua_settable(L, -3);
lua_pop(L,3);
getByList(L,19);
lua_getfield(L, -1, Str("sequence"));
getByList(L,6);
lua_pushnumber(L, 1);
lua_pushstring(L, Str(" "));
lua_settable(L, -3);
lua_pop(L,3);
getByList(L,19);
lua_getfield(L, -1, Str("sequence"));
getByList(L,7);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("*本活动中没有任何小舰船受到伤害，请放心观看和参与"));
lua_settable(L, -3);
lua_pop(L,3);
lua_pop(L, 1);
}
void WENSENSI1(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("妹妹的变化\n\n<size=45>一 妹妹的日常</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("指挥官，休息日来一起来玩吗？"));
replaceString(L, 3, Str("say"), Str("某天，突然收到了文森斯的邀请，于是在休息日来到了白鹰宿舍——"));
replaceString(L, 4, Str("say"), Str("港区·白鹰宿舍"));
replaceString(L, 5, Str("say"), Str("啊…指挥官，欢迎。我听文森斯说过了"));
replaceString(L, 6, Str("say"), Str("文森斯，别睡了，指挥官来咯，你们不是约好一起玩的吗？"));
replaceString(L, 7, Str("say"), Str("踏入房间，映入眼帘的是正躺在昆西的大腿上睡觉的文森斯"));
replaceString(L, 8, Str("say"), Str("唔……嗯？让我再睡会……"));
replaceString(L, 9, Str("say"), Str("不遵守约定可不是好孩子哦？"));
replaceString(L, 10, Str("say"), Str("那指挥官也来一起睡觉好了……呼……"));
replaceString(L, 11, Str("say"), Str("文森斯说着又睡了过去。"));
replaceString(L, 12, Str("say"), Str("抱歉呢，指挥官，文森斯她就是这样的孩子。"));
getByList(L,12);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("表示没有关系"));
lua_pop(L,2);
replaceString(L, 13, Str("say"), Str("说起来，文森斯担任秘书舰的时候，没有给指挥官带来什么麻烦吧？"));
replaceString(L, 14, Str("say"), Str("这孩子，该说性格稍微有些自由奔放吗…大概是因为我们都太宠她了吧……"));
replaceString(L, 15, Str("say"), Str("平时这样倒是没什么，但是毕竟工作是工作，要是指挥官觉得不好的话…"));
replaceString(L, 16, Str("say"), Str("让我来代替文森斯担任秘书舰也没关系的！"));
replaceString(L, 17, Str("say"), Str("并没有让文森斯变得能干的选项啊…"));
getByList(L,17);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("表示文森斯现在这样就好"));
lua_pop(L,2);
replaceString(L, 18, Str("say"), Str("是、是吗…指挥官这么说我就放心了……"));
replaceString(L, 19, Str("say"), Str("唔，姐姐你们…有点吵"));
replaceString(L, 20, Str("say"), Str("啊哈哈，抱歉抱歉，那指挥官，要一起来午睡吗？"));
replaceString(L, 21, Str("say"), Str("说是一起午睡，不过这边躺在哪……正想这个的时候，昆西轻轻拍了拍自己空着的另一条腿"));
replaceString(L, 22, Str("say"), Str("虽然没敢答应…不过，姑且还是在她们房间休息了一段时间"));
lua_pop(L, 1);
}
void WENSENSI2(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("妹妹的变化\n\n<size=45>二 妹妹的忧郁</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("港区·白鹰宿舍"));
replaceString(L, 3, Str("say"), Str("又一次接受文森斯的邀请来到了文森斯的宿舍"));
replaceString(L, 4, Str("say"), Str("文森斯，这是我刚买的芒果千层，来，啊~~"));
replaceString(L, 5, Str("say"), Str("怎么连阿斯托利亚姐姐都变成这样了……"));
replaceString(L, 6, Str("say"), Str("我也是姐姐嘛！怎么能把疼爱妹妹的事情全部交给昆西呢！"));
replaceString(L, 7, Str("say"), Str("唔…阿斯托利亚姐姐…"));
replaceString(L, 8, Str("say"), Str("文森斯有些无奈地被阿斯托利亚一口一口喂着蛋糕。"));
replaceString(L, 9, Str("say"), Str("指挥官，help me…"));
getByList(L,9);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("坐下一起吃蛋糕"));
lua_pop(L,2);
replaceString(L, 10, Str("say"), Str("欸嘿嘿……"));
replaceString(L, 11, Str("say"), Str("在一边，阿斯托利亚看着文森斯露出了有些……幸福的笑容？"));
replaceString(L, 12, Str("say"), Str("总觉得阿斯托利亚的角色都变了……？"));
replaceString(L, 13, Str("say"), Str("什么嘛，指挥官，用那种眼神看着我。虽然比不上昆西，我也是姐姐，姐，姐！"));
replaceString(L, 14, Str("say"), Str("而且以前我和文森斯分开比较多，像现在这样一起生活就会觉得，我的妹妹好可爱啊！"));
replaceString(L, 15, Str("say"), Str("阿斯托利亚说着一把把文森斯抱在怀里。"));
replaceString(L, 16, Str("say"), Str("姐姐……别抱那么紧……"));
replaceString(L, 17, Str("say"), Str("总觉得，阿斯托利亚莫非有变成波特兰的潜质……？"));
replaceString(L, 18, Str("say"), Str("不过，她的想法也不是不能理解，文森斯身上确实有一种让人想要去照顾她的气场呢……"));
lua_pop(L, 1);
}
void WENSENSI3(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("妹妹的变化\n\n<size=45>三 妹妹的想法</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("港区·白鹰宿舍"));
replaceString(L, 3, Str("say"), Str("从第一次受到邀请到现在，与文森斯相处已经过了一段时间，和她的关系也亲密了起来。"));
replaceString(L, 4, Str("say"), Str("指挥官，今天也来一起发呆吗？"));
replaceString(L, 5, Str("say"), Str("虽然对文森斯来说，一起玩似乎只有睡觉和发呆两个选项就是了。"));
replaceString(L, 6, Str("say"), Str("（敲门声）"));
replaceString(L, 7, Str("say"), Str("啊，来了——咦，印第酱？哦…又是躲你家姐姐吗？"));
replaceString(L, 8, Str("say"), Str("…………嗯"));
getByList(L,8);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("询问文森斯和印第的关系"));
lua_pop(L,2);
replaceString(L, 9, Str("say"), Str("新奥尔良级和波特兰级关系很近哦？而且我和印第很合得来。"));
replaceString(L, 10, Str("say"), Str("………………嗯。"));
replaceString(L, 11, Str("say"), Str("都喜欢不说话，也都有…稍微有些麻烦的姐姐。"));
replaceString(L, 12, Str("say"), Str("虽然和印第比起来，我家的姐姐们要普通一些就是了"));
getByList(L,12);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("询问对姐姐们的想法"));
lua_pop(L,2);
replaceString(L, 13, Str("say"), Str("从以前开始，姐姐们就什么都抢着帮我做，到最后…好像我什么都不做也没什么关系了……"));
replaceString(L, 14, Str("say"), Str("……做姐姐的都有点太爱操心了"));
replaceString(L, 15, Str("say"), Str("嗯，不过，这大概就是作为姐姐的关爱…吧…印第也是不讨厌波特兰姐姐的吧？"));
replaceString(L, 16, Str("say"), Str("……嗯。"));
replaceString(L, 17, Str("say"), Str("看起来，身为妹妹，虽然对姐姐的做法有些微词，结果还是喜欢姐姐的。"));
lua_pop(L, 1);
}
void WENSENSI4(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("妹妹的变化\n\n<size=45>四 妹妹的失落</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("最近的舰队事务稍微变得有些繁重，港区的成员都忙碌了起来——"));
replaceString(L, 3, Str("say"), Str("指挥官，有关下一片海域的侦查人员配置…"));
replaceString(L, 4, Str("say"), Str("昆西姐姐……"));
replaceString(L, 5, Str("say"), Str("啊，文森斯，抱歉，姐姐现在和指挥官有些军务要商量，等结束了再陪你。"));
replaceString(L, 6, Str("say"), Str("嗯……"));
replaceString(L, 7, Str("say"), Str("前些天参与了周边海域清扫战场的阿斯托利亚比较合适吧"));
replaceString(L, 8, Str("say"), Str("指挥官，要把这一片海域分派给我吗。"));
replaceString(L, 9, Str("say"), Str("……嗯，我知道了，我会努力的！"));
replaceString(L, 10, Str("say"), Str("指挥官，有什么我能帮忙的吗？"));
getByList(L,10);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("思考"));
lua_pop(L,2);
replaceString(L, 11, Str("say"), Str("指挥官，文森斯能交给我吗，我一定会安排好的！"));
replaceString(L, 12, Str("say"), Str("确实，文森斯的战斗能力是值得信赖的，既然阿斯托利亚这么说，那就交给她吧。"));
replaceString(L, 13, Str("say"), Str("文森斯，你不用想复杂的事，一切都交给姐姐来安排就好了。"));
replaceString(L, 14, Str("say"), Str("哦……"));
replaceString(L, 15, Str("say"), Str("…………"));
replaceString(L, 16, Str("say"), Str("指挥官，来一起睡一会儿吗，已经工作很久了呢。"));
getByList(L,16);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("摸文森斯的头，让她先去"));
lua_pop(L,2);
replaceString(L, 17, Str("say"), Str("唔……那好吧……"));
replaceString(L, 18, Str("say"), Str("文森斯看起来有些失落地坐回到了沙发上，应该是觉得没人陪她比较寂寞吧。"));
replaceString(L, 19, Str("say"), Str("但是现在还是以舰队事务为优先吧。"));
lua_pop(L, 1);
}
void WENSENSI5(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("妹妹的变化\n\n<size=45>五 妹妹的决心</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("港区·指挥室"));
replaceString(L, 3, Str("say"), Str("舰队事务暂时告一段落，大家也终于能够松口气了"));
replaceString(L, 4, Str("say"), Str("前一段时间有些冷落了文森斯，从现在开始弥补回来吧"));
replaceString(L, 5, Str("say"), Str("指挥官，我有话想和你说"));
replaceString(L, 6, Str("say"), Str("嗯？今天的文森斯似乎有点不一样，听听她想说什么吧——"));
replaceString(L, 7, Str("say"), Str("指挥官…能告诉我怎么样才能做好秘书舰吗？"));
getByList(L,7);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("询问理由"));
lua_pop(L,2);
replaceString(L, 8, Str("say"), Str("指挥官就像姐姐们一样，总是让我想做什么就做什么，还会陪着我……"));
replaceString(L, 9, Str("say"), Str("我喜欢这样的姐姐们，也喜欢这样的指挥官。"));
replaceString(L, 10, Str("say"), Str("但是，只是这样是不行的。"));
replaceString(L, 11, Str("say"), Str("文森斯的脸上露出了前所未有的认真表情。"));
replaceString(L, 12, Str("say"), Str("我不想永远只是被照顾的那一方。"));
replaceString(L, 13, Str("say"), Str("我也想回报这样的姐姐们和这样的指挥官。"));
replaceString(L, 14, Str("say"), Str("脑海里浮现出文森斯被姐姐们宠溺的模样"));
replaceString(L, 15, Str("say"), Str("指挥官既然选我当秘书舰，肯定也不是光想让我在这里玩的吧…？"));
replaceString(L, 16, Str("say"), Str("仔细想想，不管是文森斯还是印第安纳波利斯，从一开始就是港区重要的战力，本来就有能够做出相应贡献的位置"));
replaceString(L, 17, Str("say"), Str("即使文森斯变得比之前更能干了，和姐姐们想要照顾这件事本身也不矛盾吧"));
getByList(L,17);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("那就来学习吧！"));
lua_pop(L,2);
replaceString(L, 18, Str("say"), Str("学习…是吗？我明白了！"));
lua_pop(L, 1);
}
void WENSENSI6(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("妹妹的变化\n\n<size=45>六 妹妹的努力</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("于是，文森斯的秘书舰课程开始了。"));
replaceString(L, 3, Str("say"), Str("……不过，原本是一对一的单独教学，最后因为被姐姐们知道了，于是变成了轮流授课。"));
replaceString(L, 4, Str("say"), Str("那么，首先是公文，为了能够有效地辅助指挥官，首先我们要了解他们都代表什么……"));
replaceString(L, 5, Str("say"), Str("唔，种类好多……"));
replaceString(L, 6, Str("say"), Str("作为秘书舰，不清楚指挥官的日程安排可不行的。"));
replaceString(L, 7, Str("say"), Str("而且，不仅要牢记，还要根据实际情况来调整……"));
replaceString(L, 8, Str("say"), Str("所以呢，文森斯现在明白我们应该怎么做了吗？"));
replaceString(L, 9, Str("say"), Str("要明白指挥官平时要做些什么吗？"));
replaceString(L, 10, Str("say"), Str("没错~"));
replaceString(L, 11, Str("say"), Str("唔唔唔，我该教些什么呢……啊，对了，我来教你指挥官喜欢吃什么吧！"));
replaceString(L, 12, Str("say"), Str("让指挥官能够保持良好的工作状态也是很重要的！"));
replaceString(L, 13, Str("say"), Str("喔！"));
replaceString(L, 14, Str("say"), Str("文森斯，我来教你打猎！…话说为什么我也加入了教授的行列…"));
replaceString(L, 15, Str("say"), Str("姑且把新奥尔良级的大家都叫上了…不过打猎这个……"));
replaceString(L, 16, Str("say"), Str("新奥尔良自己不是也没来嘛…要是不用我教打猎的话我就先走咯"));
replaceString(L, 17, Str("say"), Str("…如此这般，让人不禁扬起嘴角的温馨场景持续了好一段时间"));
lua_pop(L, 1);
}
void WENSENSI7(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("妹妹的变化\n\n<size=45>七 妹妹的笑容</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("在几位姐姐的教授之下，文森斯初步掌握了身为秘书舰该做的事。"));
replaceString(L, 3, Str("say"), Str("指挥官，这些文件你看是这样吗？"));
replaceString(L, 4, Str("say"), Str("还有这是今天的日程……啊，这里写错了……"));
replaceString(L, 5, Str("say"), Str("虽然比较笨拙，但是确实在慢慢地帮上忙。"));
replaceString(L, 6, Str("say"), Str("文森斯的成长着实让人感到高兴"));
replaceString(L, 7, Str("say"), Str("对了，指挥官，给你这个……"));
replaceString(L, 8, Str("say"), Str("文森斯递过来……一包包装精美的饼干？"));
replaceString(L, 9, Str("say"), Str("饼干的形状做成了自己的样子，虽然有些粗糙，但是能够感觉到烘烤的人的心意。"));
replaceString(L, 10, Str("say"), Str("这是，之前阿斯托利亚姐姐教我做指挥官喜欢的点心时一起做的。"));
replaceString(L, 11, Str("say"), Str("想要感谢指挥官一直以来对我的照顾"));
replaceString(L, 12, Str("say"), Str("同时也做了姐姐们的份，不过交给她们的时候，不知道为什么，昆西姐姐当场就哭出来了…"));
replaceString(L, 13, Str("say"), Str("总觉得似乎能够想象那个场景。"));
replaceString(L, 14, Str("say"), Str("虽然被照顾很幸福，能想睡就睡也很幸福…"));
replaceString(L, 15, Str("say"), Str("不过，和姐姐们还有指挥官一起努力好像更让人高兴…"));
replaceString(L, 16, Str("say"), Str("以后文森斯也会慢慢加油的。"));
getByList(L,16);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("表示\"一起加油\""));
lua_pop(L,2);
replaceString(L, 17, Str("say"), Str("嗯…！不过，指挥官…以后还会陪我一起午睡的，对吧？"));
lua_pop(L, 1);
}
void WNG02(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("我们始终坚信，始终不愿放弃那无尽黑暗中的曙光"));
replaceString(L, 2, Str("say"), Str("我们相信着，自由与和平终将重返这片大海"));
replaceString(L, 3, Str("say"), Str("无数的战斗与牺牲，都不能磨灭我们心中的火焰"));
replaceString(L, 4, Str("say"), Str("因为对美好未来的向往，激励着我们向前"));
replaceString(L, 5, Str("say"), Str("这一切，都是为了碧蓝色的自由意志，都是为了夺回属于我们的深蓝"));
replaceString(L, 6, Str("say"), Str("碧蓝航线，全速起航——"));
replaceString(L, 7, Str("say"), Str("本次测试版大型作战内容不代表最终品质。"));
getByList(L,7);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("确认"));
lua_pop(L,2);
lua_pop(L, 1);
}
void WNG03(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官，感谢您作为碧蓝航线的一员加入本次作战，欢迎来到纽约港。"));
replaceString(L, 2, Str("say"), Str("虽然您可能已经对我有所了解了，不过还请让我正式的自我介绍一下。"));
replaceString(L, 3, Str("say"), Str("白鹰北卡罗莱纳级战列舰的命名舰，北卡罗莱纳，本次行动中我将跟随您的舰队前往前线指挥部，请多关照~"));
replaceString(L, 4, Str("say"), Str("正如你所见，在司令部的作战命令下达后，原本驻扎于各港区的舰队正在向前线。"));
replaceString(L, 5, Str("say"), Str("其中纽约港作为前线物资的中转站，后勤部队和物资正在源源不断的集中过来~"));
lua_pop(L, 1);
}
void WNG03B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("现在整个港口已经彻底进入战时运转模式了。"));
replaceString(L, 2, Str("say"), Str("纽约港作为白鹰最先进的港口之一，拥有世界范围内数一数二的配套设施。指挥官如果有什么需要的话，请尽管告诉我。"));
replaceString(L, 3, Str("say"), Str("目前，本次作战在海域中的初步部署已经完成，但不同于以往的作战任务，本次行动中，我方最新研制的作战辅助系统将投入使用——"));
replaceString(L, 4, Str("say"), Str("而关于这个系统，有一个人比我更适合为您讲解。"));
replaceString(L, 5, Str("say"), Str("请跟我来，司令部的特使正在港口等您。"));
lua_pop(L, 1);
}
void WNG03C1(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官，如果您需要更替大世界冒险舰队，可以在世界地图界面通过指令更替。"));
replaceString(L, 2, Str("say"), Str("是否听取关于大世界冒险舰队更替的说明？"));
getByList(L,2);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void WNG03C2(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官，当前舰队已经偏离集合点，您可以通过切换舰队来进行更有效率的海域探索。"));
replaceString(L, 2, Str("say"), Str("是否听取关于大世界当前舰队更替的说明？"));
getByList(L,2);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void WNG03D(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官，在大世界中探索获得的资源可以在港口购买对应的物资或者维护舰队"));
lua_pop(L, 1);
}
void WNG04(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("走了蛮远的一段路，纽约港真是规模庞大。"));
replaceString(L, 2, Str("say"), Str("指挥官，我们到了。这位便是司令部派遣到纽约港的特使~"));
replaceString(L, 3, Str("say"), Str("初次见面，指挥官，我是司令部秘书，奥马哈级轻巡洋舰孟菲斯。为了保证本次行动的顺利进行，受司令部委托向您转交G.M系统。"));
replaceString(L, 4, Str("say"), Str("G.M系统？"));
replaceString(L, 5, Str("say"), Str("全球作战辅助系统（Global Missions Support System）简称G.M系统哟，这是司令部最新开发的装备。"));
replaceString(L, 6, Str("say"), Str("在本次大型行动中，需要您处理的信息会远远多于其他时候的作战，这套G.M系统正是帮助您整合处理大量作战信息而研制的。"));
replaceString(L, 7, Str("say"), Str("您的行动目标，已经获取到的信息，舰队的概况，甚至是雷达系统，都会被整合进这个操作终端中。"));
replaceString(L, 8, Str("say"), Str("同时，您可以使用这套系统将您已经掌握的情报即时的分享给司令部和科研部门。"));
replaceString(L, 9, Str("say"), Str("有了这套系统，您在远洋的航行和战斗便能畅通无阻啦~"));
replaceString(L, 10, Str("say"), Str("原来如此，科技的力量真是伟大呢。"));
replaceString(L, 11, Str("say"), Str("那么接下来我将会和纽约港的后勤部门一同帮您的舰队安装G.M系统。"));
replaceString(L, 12, Str("say"), Str("请您稍等片刻，这不会占用您太多时间的。"));
lua_pop(L, 1);
}
void WNG05(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("啊呀，是指挥官和北卡酱呀，欢迎来到女灶神的小仓库~"));
replaceString(L, 2, Str("say"), Str("连我这样的后勤支援舰船也被派遣到前线常驻，看来这次作战的规模可真大呢。"));
replaceString(L, 3, Str("say"), Str("毕竟后勤工作是作战成功的基本保障嘛~辛苦你啦，女灶神。"));
replaceString(L, 4, Str("say"), Str("辛苦倒是谈不上，大家都在努力不是嘛~哦对了！指挥官，快来看看这边的物资储备。"));
replaceString(L, 5, Str("say"), Str("为了保障参加远洋作战的舰队都能获得足够的补给，司令部在各个港口都设立了供应物资的军需仓库。"));
replaceString(L, 6, Str("say"), Str("除了各种作战必要的物资外，还有为本次深入作战特别准备的能源补给箱和综合维修箱~"));
replaceString(L, 7, Str("say"), Str("远洋作战和您平时进行的近海作战可是截然不同的，因为途中没有港口，所以不带足补给可是不行的哟。"));
replaceString(L, 8, Str("say"), Str("能源补给箱可以在远洋为舰队提供能源补给，综合维修箱可以让您在战场上快速修复您的舰队。有了这些宝贝，就算长期远离港口作战也没有问题了~"));
replaceString(L, 9, Str("say"), Str("不过，不管有多方便的后勤系统，一定的休息也是必要的呢。行军太久，即使身体撑得住，精神也会受不了的，这一点指挥官一定要注意哦！"));
replaceString(L, 10, Str("say"), Str("那么，请随意看看吧，女灶神的小仓库本次作战期间随时欢迎指挥官的光临~"));
lua_pop(L, 1);
}
void WNG05A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("现在，首先请指挥官先来到我身边的集合点，完成跨区域移动教学，即刻起航吧！"));
lua_pop(L, 1);
}
void WNG05B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("跨地图教学已完成，请指挥官按照提示移动离开当前海域"));
lua_pop(L, 1);
}
void WNG05C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("很高兴与您见面，指挥官大人。接下来讲由我为您讲解如何在大型作战里进行跨区域移动"));
lua_pop(L, 1);
}
void WNG05D(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("嗯，看样子指挥官对跨区域移动还不是那么熟练呢，那么要我再为您进行一次操作说明吗？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void WNG05E(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("只要有任意舰队移动到地图边缘，就会出现提示跨地图移动的虚拟单元格，请指挥官记住它们不同的状态哦"));
lua_pop(L, 1);
}
void WNG05F(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("只要有任意舰队移动到地图边缘，就会出现提示跨地图移动的虚拟单元格，请指挥官记住它们不同的状态哦"));
lua_pop(L, 1);
}
void WNG05G(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在小地图界面，您可以看到与当前海域相邻的水域，从不同的边缘离开当前海域，就可以到达对应的区域"));
lua_pop(L, 1);
}
void WNG06(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官，G.M系统已经装配完毕了，纽约港的工程进度真是太迅速了。"));
replaceString(L, 2, Str("say"), Str("要做的准备已经全部完成了，终于到了出航的时刻呢，指挥官~"));
replaceString(L, 3, Str("say"), Str("在初期作战中，前锋部队已经打通了一条前往利物浦港的安全航线，我们本次也将使用这条航线。"));
replaceString(L, 4, Str("say"), Str("不过…虽然说安全航线，但毕竟还是要经过很多塞壬控制的海域，所谓的\"安全路线\"也只是相对而言了。"));
replaceString(L, 5, Str("say"), Str("利物浦港也是我们前线基地的所在地，本次行动的预定集结地点就是利物浦港外的海域。"));
replaceString(L, 6, Str("say"), Str("另外，还有一件事司令部希望能够让您来完成。"));
replaceString(L, 7, Str("say"), Str("额外的任务？"));
replaceString(L, 8, Str("say"), Str("嗯……准确的说是请您帮忙。我负责的科研舰队将在今天开赴大洋深处进行海底勘探，在到达预定地点之前，希望您能为我们提供护卫。"));
replaceString(L, 9, Str("say"), Str("毕竟这边都是科学家和重要的研究设备，如果被敌人袭击，后果不堪设想。"));
replaceString(L, 10, Str("say"), Str("科研部队预定的勘探地点和我们的航线吻合呢，指挥官。"));
replaceString(L, 11, Str("say"), Str("那么就这么决定了。"));
lua_pop(L, 1);
}
void WNG06B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("离开控制区域后，对海域的信息掌握大幅度降低，现在只能看到视野内的内容了"));
lua_pop(L, 1);
}
void WNG06C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在视野大幅度降低的条件下，看样子不得不依赖G.M系统了……"));
replaceString(L, 2, Str("say"), Str("指挥官，尝试向G.M.系统中标记的事件单元格前进吧"));
lua_pop(L, 1);
}
void WNG07(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("系统指令：202"));
replaceString(L, 2, Str("say"), Str("个体识别ID：TYPE-001：202"));
replaceString(L, 3, Str("say"), Str("初始化系统进程……"));
replaceString(L, 4, Str("say"), Str("舰载雷达显示………………上线……"));
replaceString(L, 5, Str("say"), Str("数据链路网络………………上线……"));
replaceString(L, 6, Str("say"), Str("上下行任务树………………上线……"));
replaceString(L, 7, Str("say"), Str("智能操作界面………………上线……"));
replaceString(L, 8, Str("say"), Str("全球作战辅助系统………………已启动。"));
replaceString(L, 9, Str("say"), Str("G.M系统的初次启动成功，所有系统均已上线，真顺利呀，明明调试的时候经常报错的……"));
replaceString(L, 10, Str("say"), Str("大概是指挥官的运气比较好吧~"));
replaceString(L, 11, Str("say"), Str("已将您当前的任务和路线录入G.M系统，现在只等操作系统上线您就可以随时访问了。"));
replaceString(L, 12, Str("say"), Str("另外，您舰队的雷达系统已经通过司令部的数据处理整合到G.M系统的面板中了。"));
replaceString(L, 13, Str("say"), Str("G.M系统本身拥有学习能力，随着时间的推进会逐步自动提升性能，更多的机能指挥官可以自行探索哦。"));
replaceString(L, 14, Str("say"), Str("智能系统的使用是需要数据链链接的，这里的信号或许不太好，加载了这么半天才结束。"));
replaceString(L, 15, Str("say"), Str("指挥官可以使用右侧的按钮来呼出操作界面，赶快试试吧~"));
lua_pop(L, 1);
}
void WNG07B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("G.M.系统还感知到了其他的可战斗对象，为了提供更全面的分析数据，全部击破它们吧！"));
lua_pop(L, 1);
}
void WNG07C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("前方出现了未知战斗单位，看样子需要使用G.M.系统刚实装的新功能了，说实话第一次使用我也很紧张呢，那么请指挥官根据操作提示使用分析仪吧"));
lua_pop(L, 1);
}
void WNG07D(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("看样子当前海域的塞壬棋子已经全部清除了呢……这样又可以继续前行了。就按着既定航线继续向利物浦港集结吧指挥官！"));
lua_pop(L, 1);
}
void WNG07E(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在大型作战中观测到的事件，会在G.M.系统中被标记为各不相同不同的标记，指挥官请务必留意"));
lua_pop(L, 1);
}
void WNG08(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("您可以在地图界面长按海域中的各种物品和单位，G.M系统会针对您选中的单位进行扫描。"));
replaceString(L, 2, Str("say"), Str("扫描物体的详细信息会在界面右侧的窗口中显示。"));
replaceString(L, 3, Str("say"), Str("如果遇到奇怪的物体或者实力未知的敌人，就请使用扫描进行侦查吧。"));
lua_pop(L, 1);
}
void WNG09(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官，本次大型作战参与舰队众多，司令部为了方便调兵管理，将所有海域设置了动态调整的危险等级。"));
replaceString(L, 2, Str("say"), Str("根据您舰队实力和经验的提升，司令部会逐渐开放海域的进入权限给您，您只能前往有进入权限的海域航行哦。"));
replaceString(L, 3, Str("say"), Str("当前权限等级可以在详情面板中查看，我也会随时提示您前方的海域是否可以进入。"));
replaceString(L, 4, Str("say"), Str("例如当前舰队前方的海域，权限等级还未开放，在地图上也会以灰色图标标出呢，指挥官，我们选择其他的路线吧~"));
lua_pop(L, 1);
}
void WNG10(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官，舰队在航行的过程中可能会发现有调查价值的可疑区域。"));
replaceString(L, 2, Str("say"), Str("这些区域是我通过数据对比，雷达，声呐等综合探测手段所无法具体确认内容的目标。"));
replaceString(L, 3, Str("say"), Str("也就是说，需要指挥官目视确认并进行调查咯~"));
replaceString(L, 4, Str("say"), Str("是的，您如果希望调查，则可以将舰队移动至可疑区域，通过目视进行调查。"));
lua_pop(L, 1);
}
void WNG11(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在大型作战之中，为了增加指挥效率，G.M系统的命令模块配备了可快速切换命令频道的功能。"));
replaceString(L, 2, Str("say"), Str("左下角的舰队切换按钮可以方便的帮助您选择不同的舰队。当然，您也可以在战术地图上直接点击想操作的舰队。"));
lua_pop(L, 1);
}
void WNG12(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("请注意，并非所有可疑调查点都会显示在您的视野之内，有些调查点是被隐藏起来的。"));
replaceString(L, 2, Str("say"), Str("不过，可以通过G.M系统结合各类数据发现这类隐藏的调查点，如果您需要调查，请使用雷达面板进行导航。"));
lua_pop(L, 1);
}
void WNG13(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("敏锐的观察力，不愧是指挥官！这么快就找到了隐藏的地点！"));
replaceString(L, 2, Str("say"), Str("不过也请您注意，被隐藏的地点虽然有是重要物资的可能，但也有是敌军设下的陷阱的可能。"));
replaceString(L, 3, Str("say"), Str("请根据当前任务和海域状况，来判断是否前往调查。"));
lua_pop(L, 1);
}
void WNG14(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("为了帮助您尽快熟悉这片海域的海况，司令部为您安排了一场模拟战。"));
replaceString(L, 2, Str("say"), Str("在您航行的途中，G.M系统会自动通过IFF分析判断每一个海面上的单位；可进行战斗的单位会在罗经仪上以红色符号标出。"));
lua_pop(L, 1);
}
void WNG15(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("航行中进行的包括调查与战斗在内的各种事件，都会由秘书舰帮助您记录在航海日志之中。"));
replaceString(L, 2, Str("say"), Str("指挥官可以根据需求在航海日志面板中随时查阅~"));
lua_pop(L, 1);
}
void WNG16(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("科研舰队已经出发了，指挥官，请命令舰队起航吧。"));
replaceString(L, 2, Str("say"), Str("确切的路径和勘探地点，请您查看G.M系统的世界地图哦~"));
replaceString(L, 3, Str("say"), Str("舰队启航！"));
lua_pop(L, 1);
}
void WNG17(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("继续点击撤退按钮将不会使您的舰队返回港口，而是脱离当前战斗的单元格，请尝试一下。"));
lua_pop(L, 1);
}
void WNG18(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官，当前舰队的补给状态显示于左上角的行动力指示条中。"));
replaceString(L, 2, Str("say"), Str("远海作战的过程中，舰队每次移动都要消耗行动力，当行动力归零时，舰队将无法移动。"));
replaceString(L, 3, Str("say"), Str("可以使用石油或后勤道具进行行动力补给。"));
replaceString(L, 4, Str("say"), Str("远洋作战中舰队的补给十分重要，请指挥官合理分配。"));
lua_pop(L, 1);
}
void WNG19(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官，司令部为应对大规模突发性质的塞壬异变，特地在集结点部署了后勤维修舰只。在大型的长途作战中，舰队的修整是非常必要的哦"));
replaceString(L, 2, Str("say"), Str("是否接受司令部后勤舰只的临时修整，恢复出战舰队状态？"));
getByList(L,2);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("进行修整"));
replaceString(L, 2, Str("content"), Str("不需要"));
lua_pop(L,2);
lua_pop(L, 1);
}
void WNG19B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("舰队的耐久值恢复了！"));
replaceString(L, 2, Str("say"), Str("舰队的破损状态修复成功！"));
replaceString(L, 3, Str("say"), Str("辛苦了，如果指挥官关于战斗和舰队规则还有不清楚的地方，可以向我询问哦"));
lua_pop(L, 1);
}
void WNG19C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("请选择想要了解的大世界作战说明"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("战斗失败与惩罚"));
replaceString(L, 2, Str("content"), Str("舰队修整及回复"));
replaceString(L, 3, Str("content"), Str("舰队更替及扩编"));
lua_pop(L,2);
lua_pop(L, 1);
}
void WNG19D(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在大型作战中，舰队战斗失败视为撤退脱离，不会强制返回船坞或者就近港口。"));
replaceString(L, 2, Str("say"), Str("其中耐久耗尽脱离战斗的舰只，会在撤退后处于持续的负伤状态中，全能力大幅度下降，连续作战时请务必注意。"));
replaceString(L, 3, Str("say"), Str("此外，每次不成功的战斗都会给参战舰队造成一定的战斗损耗，面对强力的敌人，请合理使用多个舰队轮流作战自然消除战斗损耗，提高作战效率。"));
replaceString(L, 4, Str("say"), Str("以上就是大型作战中关于战斗失败与惩罚的介绍与建议，指挥官您都记下来了吗？"));
lua_pop(L, 1);
}
void WNG19E(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在大型作战中，舰队可以通过两个手段进行修整回复"));
replaceString(L, 2, Str("say"), Str("在我方港口船坞中，消耗一定的大世界物资进行修理，费用与船只受损程度相关。如果船只严重受损处于负伤状态，会加收额外的紧急维修费用哦"));
replaceString(L, 3, Str("say"), Str("此外，在作战过程中可能探索到塞壬的维修设备，指挥官可以直接将其用于我方舰只，一样能起到舰队修整回复的效果。"));
replaceString(L, 4, Str("say"), Str("以上就是大型作战中关于舰队修整回复的介绍与建议，指挥官您都记下来了吗？"));
lua_pop(L, 1);
}
void WNG19F(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("以上就是大型作战中关于舰队更替及扩编的介绍与建议，指挥官您都记下来了吗？"));
lua_pop(L, 1);
}
void WNN000A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了教学海域。"));
lua_pop(L, 1);
}
void WNN000B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("与{namecode:98}进行对话。"));
lua_pop(L, 1);
}
void WNN000C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在大型作战的海域中，视野往往会受到限制。"));
replaceString(L, 2, Str("say"), Str("为了应对这种情况，为指挥官配备了G.M系统。"));
lua_pop(L, 1);
}
void WNN000D(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("看来指挥官已经初步掌握了舰队指令的使用方式，请指挥官与海域中的敌舰作战。"));
lua_pop(L, 1);
}
void WNN000E(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("点击G.M系统左上角的按钮进入舰队指令面板，在其中选择空域侦查，可以打开海域的视野。"));
lua_pop(L, 1);
}
void WNN000F(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("与敌方舰队进行交战。"));
lua_pop(L, 1);
}
void WNN000G(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("看起来海域中出现了一些强力敌人，这种情况下可以使用G.M系统搭载的分析仪功能，来对海域中的敌人和事件进行详细分析。"));
lua_pop(L, 1);
}
void WNN000H(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("已击破了海域中所有敌舰并收集了资源，可以前往利物浦港开始正式的大型作战冒险了。"));
replaceString(L, 2, Str("say"), Str("如果对于G.M系统和其搭载的各种功能仍有疑问，可以点击帮助按钮，查看功能使用方式。"));
lua_pop(L, 1);
}
void WNN000I(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("{namecode:98}似乎东西要交给指挥官？与{namecode:98}进行对话"));
lua_pop(L, 1);
}
void WNN000J(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了舰队指令面板，在该面板中可以使用多种指令帮助探索海域。"));
replaceString(L, 2, Str("say"), Str("面对视野受限问题，我们可以使用空域侦查指令，来消除海域中的战争迷雾。"));
lua_pop(L, 1);
}
void WNN000K(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域中的战争迷雾被消除，视野逐渐开阔。"));
lua_pop(L, 1);
}
void WNN000L(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("点击G.M系统右下角的按钮进入分析仪模式，可以查看视野范围内海域中各类事件信息。"));
replaceString(L, 2, Str("say"), Str("部分隐藏的内容也会在分析仪模式下显形，例如一些沉入海底的资源。"));
lua_pop(L, 1);
}
void WNN001A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("目标海域发现了特殊的塞壬装置，请指挥官前往调查。"));
replaceString(L, 2, Str("say"), Str("通过点击海域边缘可以移动到相邻的海域，有红色光柱的地图就是主线任务的目标地图。"));
replaceString(L, 3, Str("say"), Str("点击\"信息\"可以查看任务详情。"));
lua_pop(L, 1);
}
void WNN001B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("通过点击海域边缘可以移动到相邻的海域，有红色光柱的地图就是主线任务的目标地图。请指挥官前往调查！"));
lua_pop(L, 1);
}
void WNN001C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("第一处塞壬空间已探索完毕，在其他海域也发现了类似的塞壬空间入口，请指挥官前往调查"));
lua_pop(L, 1);
}
void WNN001D(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("海域中的战争迷雾被消除，视野逐渐开阔。"));
lua_pop(L, 1);
}
void WNN001E(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("当前区域的塞壬空间已经全部调查完毕，可以前往其他区域进行探索..."));
lua_pop(L, 1);
}
void WNN001F(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("！！"));
lua_pop(L, 1);
}
void WNN001G(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在G.M系统面板上可以查看当前海域缩略图"));
replaceString(L, 2, Str("say"), Str("并且G.M系统搭载了舰队指令与分析仪功能，可以帮助指挥官更好地完成海域探索。"));
lua_pop(L, 1);
}
void WNN001H(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在大世界冒险过程中会接到各种各样的任务。完成主线任务可以推进剧情，完成支线任务可以获得丰厚奖励。"));
replaceString(L, 2, Str("say"), Str("点击右下角信息按钮可以查看当前所接到的任务信息。"));
lua_pop(L, 1);
}
void WNN001I(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("舰队进入了利物浦港口海域。"));
replaceString(L, 2, Str("say"), Str("在己方的港口海域中，点击G.M系统左上角的舰队指令，选择舰队部署后，可以重新部署进行大型作战的舰队。"));
lua_pop(L, 1);
}
void WNN001J(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("同时，在港口海域中会有特殊的港口建筑。"));
replaceString(L, 2, Str("say"), Str("在港口建筑周围时可以进入港口，在其中可以使用大世界货币购买道具，或是对已部署的舰队进行维修。"));
replaceString(L, 3, Str("say"), Str("随着大世界冒险的进行，港口还会发布一些支线任务。"));
lua_pop(L, 1);
}
void WNN001K(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("港口附近似乎堆积着{namecode:98}和{namecode:20}的装备箱..？去找{namecode:20}确认一下吧。"));
lua_pop(L, 1);
}
void WNN001L(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官，储物舱功能正式开放了。"));
replaceString(L, 2, Str("say"), Str("在大型作战冒险过程中会收集到装备改造的材料，指挥部为指挥官准备了一些基础的材料和装备，在储物舱中可以查看。"));
lua_pop(L, 1);
}
void WNN001M(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官，做好准备了的话请来我身边"));
lua_pop(L, 1);
}
void WNN001N(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("大型作战的海域正式向指挥官开放了。"));
replaceString(L, 2, Str("say"), Str("通过不断地压制危险海域，可以进一步扩大探索范围。"));
replaceString(L, 3, Str("say"), Str("指挥部在离港区不远处发现了异常海域，这将会作为指挥官开始大型作战的第一个任务。"));
lua_pop(L, 1);
}
void WNN001O(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("通过点击海域边缘可以进入传送模式，在传送模式下我们可以移动到周边的海域，或是港口和任何已压制的海域。"));
lua_pop(L, 1);
}
void WNN001P(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("{namecode:98}和{namecode:20}的装备箱，里面装着研发中的装备，无法使用。"));
lua_pop(L, 1);
}
void WNN001Q(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("刚才似乎发生了严重的信号波动.."));
replaceString(L, 2, Str("say"), Str("目前NA海域东南已向指挥官开放，请指挥官前往直布罗特港口报道！"));
lua_pop(L, 1);
}
void WNN001R(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官，{namecode:20}似乎有东西要交给您！"));
lua_pop(L, 1);
}
void WNN001S(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在通常作战海域中，击败所有地方舰队并完成所有事件后，可以压制该海域。"));
replaceString(L, 2, Str("say"), Str("海域事件可能还包括了一些隐藏在水下的物资，需要合理使用G.M系统和分析模块来帮助海域探索。"));
lua_pop(L, 1);
}
void WNN002A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("到达了直布罗陀港，前往茗处接收任务。"));
lua_pop(L, 1);
}
void WNN002B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在NA海域东南也发现了与之前类似的塞壬空间入口，总共三处，需要指挥官前往调查"));
lua_pop(L, 1);
}
void WNN002C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("出发前，我将指挥官的编队权限提高到了4支舰队，请指挥官在舰队指令中将舰队扩编至4支，以应对高强度的战斗。"));
lua_pop(L, 1);
}
void WNN002D(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("将舰队扩编至4支后，就可以前往调查塞壬空间了，这片海域中也发现了三处异常的空间入口。"));
lua_pop(L, 1);
}
void WNN002E(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在当前区域中央检测到了强烈的塞壬波动，与以往的塞壬空间都有所不同。请指挥官做好充分准备后前往调查！"));
lua_pop(L, 1);
}
void WNN002F(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("看来指挥官已经完成了异常海域的调查，击退了仲裁者。"));
replaceString(L, 2, Str("say"), Str("NA海域西南的调查权限已经开放，我会在西南海域的NY港等待指挥官前来。"));
lua_pop(L, 1);
}
void WNN003A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("为了应对高强度的战斗，指挥官将可以携带潜艇进行作战了！"));
replaceString(L, 2, Str("say"), Str("通过舰队指令-舰队部署，即可将最多三名潜艇舰船编入舰队，并在其他海域中使用舰队指令-潜艇支援，呼叫潜艇参战。"));
lua_pop(L, 1);
}
void WNN003B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("通过舰队指令-舰队部署，即可将最多三名潜艇舰船编入舰队，并在其他海域中使用舰队指令-潜艇支援，呼叫潜艇参展。"));
replaceString(L, 2, Str("say"), Str("通过舰队指令-申请补给，可以在非港口的海域获得一些舰船维修工具。"));
lua_pop(L, 1);
}
void WNN003C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("当前海域发现了4处塞壬空间，请指挥官前往调查。"));
lua_pop(L, 1);
}
void WNN003D(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("当前海域发现了4处塞壬空间，请指挥官前往调查。"));
lua_pop(L, 1);
}
void WNN003E(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在当前区域中央检测到了强烈的塞壬波动，请指挥官前往调查！"));
lua_pop(L, 1);
}
void WNN003F(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("欢迎指挥官来到NY港，请先与港口旁的北卡罗来纳对话。"));
lua_pop(L, 1);
}
void WNN004A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("至此大型作战主线体验流程已全部结束，指挥官可以继续体验其他内容。"));
lua_pop(L, 1);
}
void WNN004B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在当前区域中央检测到了强烈的塞壬波动，请指挥官前往调查！"));
lua_pop(L, 1);
}
void WNN004C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("至此大型作战主线体验流程已全部结束，指挥官可以继续体验其他内容。"));
lua_pop(L, 1);
}
void WNN005B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官好，我是维修舰女灶神，负责在战场上为受伤的孩子们治疗哦~"));
replaceString(L, 2, Str("say"), Str("是否要进行修整，恢复所有出战舰队耐久与状态？（仅可使用一次）"));
getByList(L,2);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("进行修整"));
replaceString(L, 2, Str("content"), Str("不需要"));
lua_pop(L,2);
lua_pop(L, 1);
}
void WNN005C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("舰队的耐久值与战损状态恢复了！"));
lua_pop(L, 1);
}
void WNN005D(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("塞壬守卫的实力非常强，请指挥官小心应战。"));
lua_pop(L, 1);
}
void WNN005E(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("击败了塞壬守卫，可以通过传送门离开深渊海域。"));
lua_pop(L, 1);
}
void WNN005F(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("是否离开深渊海域？（离开后将无法返回）"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("是"));
replaceString(L, 2, Str("content"), Str("否"));
lua_pop(L,2);
lua_pop(L, 1);
}
void WNNG01(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("潜艇支援和申请补给功能还在研发中，将随着大型作战的推进逐步开放！"));
lua_pop(L, 1);
}
void WNNG02(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在分析仪面板中，点击带有黄色底框的事件可以了解其详细信息。"));
replaceString(L, 2, Str("say"), Str("部分海域中的隐藏事件也可以用分析仪来探明。"));
replaceString(L, 3, Str("say"), Str("目前海域中出现了带有特装模块的强力敌人，试着点击进行分析吧。"));
lua_pop(L, 1);
}
void WNNG03(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("进入了友方的港口，港口为指挥官提供了多种功能。"));
lua_pop(L, 1);
}
void WNNG04(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("储物舱中存放着各种大型作战冒险过程中获得的道具。"));
lua_pop(L, 1);
}
void WNNG05(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在大型作战过程中，通过击败敌舰、收集资源等多种方式，可以获取用于装备研发的材料。"));
replaceString(L, 2, Str("say"), Str("收集到的材料会显示在此处。"));
lua_pop(L, 1);
}
void WNNG06(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("筛选后可以单独查看可研发的装备。"));
replaceString(L, 2, Str("say"), Str("集齐所需的材料后，可以在此处进行装备研发。"));
lua_pop(L, 1);
}
void WNX01(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("为了确保指挥官有足够的实力进入大型作战，需要进行战前测试。派遣一支舰队与大黄蜂进行战斗。"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("确认"));
lua_pop(L,2);
lua_pop(L, 1);
}
void WNX02(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("动作很快嘛，那就让我们开始吧！"));
replaceString(L, 2, Str("say"), Str("全舰载机，升空！"));
lua_pop(L, 1);
}
void WNX02B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("在大型作战中，每回合可移动的距离有限。"));
replaceString(L, 2, Str("say"), Str("点击视野内可到达的范围会进行远距离移动，移动过程中会实时显示经过的回合数。"));
lua_pop(L, 1);
}
void WNX03(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官的实力已经得到了认可，不过在大型作战中可能会遭遇更凶险的战斗。"));
replaceString(L, 2, Str("say"), Str("在难以战胜的情况下，可以即时撤退。"));
lua_pop(L, 1);
}
void WNX03B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("不必担心，在这里下达的撤退指令不会让舰队返回港区，而只是离开当前的战斗。"));
lua_pop(L, 1);
}
void WNX03C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("同时只能派遣一支舰队进行战前测试。"));
lua_pop(L, 1);
}
void WNX04(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("通过了战前测试，前往下一海域学习大型作战基础操作。"));
lua_pop(L, 1);
}
void WNX101(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官喵，好久不见喵，明石今天也是需要帮助的喵？"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("好的我明白了"));
replaceString(L, 2, Str("content"), Str("只是路过"));
lua_pop(L,2);
replaceString(L, 2, Str("say"), Str("随时期待您回来喵！"));
lua_pop(L, 1);
}
void WORLD100A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("线路接通，加密通讯已接入。"));
replaceString(L, 2, Str("say"), Str("初次见面，指挥官。"));
replaceString(L, 3, Str("say"), Str("我的名字是\"领航员-TB\"，是指挥部于「The Bridge」计划中设计的最新型辅助用智能人格。"));
replaceString(L, 4, Str("say"), Str("在与主机的连接正常时，我可以通过舰队的雷达系统、声呐系统进行各类情报整理与战术分析任务。"));
replaceString(L, 5, Str("say"), Str("当连接遭受干扰时，我会进入离线模式，该模式下运算能力受到限制，但是依然可以执行火控校准，数据整合以及航路规划等任务。"));
replaceString(L, 6, Str("say"), Str("接下来的行动中，我将作为您的副官协助您的战斗指挥"));
replaceString(L, 7, Str("say"), Str("指挥官，现在向您转达指挥部下达的机密指令："));
replaceString(L, 8, Str("say"), Str("近期，经过反复侦查，指挥部确信NA海域中塞壬部署于近海的作战舰队正在向海域深处撤离。"));
replaceString(L, 9, Str("say"), Str("发生这一异常现象的原因尚不明确，相关调查工作仍然在进行中。"));
replaceString(L, 10, Str("say"), Str("就结果而言，塞壬舰队的撤离使得近海区域威胁等级大幅下降，我方的行动范围也获得了相当程度扩展。"));
replaceString(L, 11, Str("say"), Str("因此指挥部认为战役时机已经成熟。各辖区除保留必要的防御舰队之外，调动所有机动力量应当立刻前往NA海域集结，准备执行对塞壬大型作战。"));
replaceString(L, 12, Str("say"), Str("本次战役各项行动将由NY司令部与LD司令部共同负责。战役目标为清理塞壬控制区域，突破塞壬防线，攻破海域中心的异常能量区域，最终夺回整片海域的控制权。"));
replaceString(L, 13, Str("say"), Str("指挥部将NA海域分为了四个战区，D战区因为赤色中轴的关系，很遗憾并不在我们的掌控范围之内。"));
replaceString(L, 14, Str("say"), Str("除了D战区之外，战役行动将从其余三个战区同时开始。在舰队集结完毕后，您将作为A战区的战区指挥带领舰队从NY港开始作战。"));
replaceString(L, 15, Str("say"), Str("指挥官，您的任务是首先带领舰队夺回被塞壬重新控制的百慕大海域，然后进军至中心区域外建立两处海上前进基地。就地补给，等待后续总攻的命令。"));
replaceString(L, 16, Str("say"), Str("预祝您战斗顺利，加密通讯结束，线路即将中断。"));
lua_pop(L, 1);
}
void WORLD102A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("NY港·近海 舰队集结地"));
replaceString(L, 2, Str("say"), Str("诸位，感谢你们响应指挥部的号召从各地远道而来。"));
replaceString(L, 3, Str("say"), Str("自从塞壬出现后，我们已经很久没有享受过这么舒爽的海风，我们的舰队也很久没有这样自由地驰骋在这片大海上了。"));
replaceString(L, 4, Str("say"), Str("我们的战斗有过黑暗的时刻，我们失去了海洋，失去了至亲，失去了几乎所有的一切......"));
replaceString(L, 5, Str("say"), Str("但是，多亏先烈们在至暗之时没有放弃希望，在至暗之时没有停止抵抗————"));
replaceString(L, 6, Str("say"), Str("我们才得以迎来今天这反击的时刻！"));
replaceString(L, 7, Str("say"), Str("现在，我们最强大的舰队集结于这片海面之上，而这支强大的舰队只有一个目标————"));
replaceString(L, 8, Str("say"), Str("夺回这片，属于我们的大海！"));
replaceString(L, 9, Str("say"), Str("我们已经沉寂太久，忍耐太久了————今天，就是我们对塞壬清算的开始！"));
replaceString(L, 10, Str("say"), Str("战斗吧！不论前路多么漫长、多么艰苦，我们都要取得胜利。唯有胜利，才能让我们赢得继续生存下去的权利！"));
replaceString(L, 11, Str("say"), Str("我知道诸位对于赤色中轴的看法，也知道我们与赤色中轴的恩怨。"));
replaceString(L, 12, Str("say"), Str("但归根结底，塞壬才是我们真正的敌人。请诸位一定要避免无谓的冲突，严格按照作战计划执行。"));
replaceString(L, 13, Str("say"), Str("我谨代表碧蓝航线指挥部宣布，本次NA海域战役正式开始！"));
replaceString(L, 14, Str("say"), Str("祝诸位攻无不克，凯旋而归！"));
replaceString(L, 15, Str("say"), Str("真是精彩的演说啊，胡德。我也感觉热血沸腾了..."));
getByList(L,15);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("赞同企业的看法"));
lua_pop(L,2);
replaceString(L, 16, Str("say"), Str("呵呵，你们都过奖了。指挥官，本次作战中指挥部新引入的辅助AI用的还习惯么？"));
replaceString(L, 17, Str("say"), Str("是指那个名字叫领航员-TB的联络官么————"));
getByList(L,17);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("「看起来有种熟悉的感觉」"));
replaceString(L, 2, Str("content"), Str("「稍微有些不太习惯」"));
lua_pop(L,2);
replaceString(L, 18, Str("say"), Str("毕竟TB造型设计上是可爱的女孩子嘛，指挥官有种熟悉的感觉也是正常的~"));
replaceString(L, 19, Str("say"), Str("果然会这样么...毕竟是一个全新的作战系统。指挥部也是考虑到这一点才将系统的虚拟形象设计成亲和力比较强的少女吧。"));
replaceString(L, 20, Str("say"), Str("本次作战中我将作为副官协助您更好的进行作战，请多关照。"));
getByList(L,20);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("「请多关照」"));
lua_pop(L,2);
replaceString(L, 21, Str("say"), Str("（AI，也就是机械编程设计出来的辅助程序么......不过这个形象和声音，果然还是很难单纯当成机械对待啊...）"));
replaceString(L, 22, Str("say"), Str("作战计划和海域地图等众多情报已经记录在领航员小姐那里了，如果作战中有什么不清楚的地方，不用害羞，尽管向她提问吧~"));
replaceString(L, 23, Str("say"), Str("领航员小姐也会作为前线舰队和司令部之间的中转和联络官。这次我们加强了通讯系统，塞壬肯定没法像以前那样轻易干扰我们了！.........大概。"));
replaceString(L, 24, Str("say"), Str("所以要和领航员小姐好好相处哦~"));
replaceString(L, 25, Str("say"), Str("那么指挥官，企业，胡德，我也要先返回司令部了，希望我们所有人的作战都能顺利进行！"));
lua_pop(L, 1);
}
void WORLD105A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("企业、巴尔的摩、北卡罗来纳.......这次攻略百慕大海域的舰队总有种似曾相识的感觉啊。"));
replaceString(L, 2, Str("say"), Str("嘿嘿，上次是被打了个措手不及后的报复行动，但这次将由我们主动将出击，彻底扫荡该区域的塞壬！"));
replaceString(L, 3, Str("say"), Str("上次去百慕大的时候没赶上，这一次正好让我好好\"回访\"一下！"));
replaceString(L, 4, Str("say"), Str("与整片NA海域塞壬防线整体收缩的趋势不同，只有百慕大海域，塞壬重新发动进攻将其夺了回来。"));
replaceString(L, 5, Str("say"), Str("恐怕，这里有什么对她们而言很重要的东西……"));
replaceString(L, 6, Str("say"), Str("应该也是这个原因，指挥部才会让指挥官亲自带领舰队夺回百慕大海域吧，也许能在这里找到塞壬异常部署的线索..."));
replaceString(L, 7, Str("say"), Str("不论如何也只有实际看过之后才能下结论了，大家不要掉以轻心。"));
lua_pop(L, 1);
}
void WORLD105B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：指挥官，前方海域发现多处敌方信号，推测为塞壬拦截舰队。"));
replaceString(L, 2, Str("say"), Str("哇！居然还有预警功能，这是直接连接了舰队的雷达系统么？"));
replaceString(L, 3, Str("say"), Str("是的，我可以通过整合各舰的情报数据，对于战场情况提供实时分析。"));
replaceString(L, 4, Str("say"), Str("真是便利的辅助系统呢......"));
replaceString(L, 5, Str("say"), Str("舰队调整队形，准备迎敌。"));
lua_pop(L, 1);
}
void WORLD105C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：战斗结果已确认：敌方舰队肃清，但是在远方区域发现塞壬舰队的增援迹象，请不要放松警惕。"));
replaceString(L, 2, Str("say"), Str("唔，确实有种不同寻常的气息啊。这才刚进入百慕大海域边缘，塞壬就派舰队热情迎接我们了。"));
replaceString(L, 3, Str("say"), Str("与整片NA海域外围塞壬普遍异常的行为模式不同，这里的塞壬舰队明显进行着有组织的反击。"));
replaceString(L, 4, Str("say"), Str("哼，敌人进攻的越猛烈，越说明我们前往百慕大深处一探究竟的必要性。想必海域里隐藏着不想被我们发现的秘密吧！"));
replaceString(L, 5, Str("say"), Str("百慕大中的秘密......"));
replaceString(L, 6, Str("say"), Str("这些幻影，究竟是什么东西…？"));
replaceString(L, 7, Str("say"), Str("记录。"));
replaceString(L, 8, Str("say"), Str("什么地方，什么时候的记录？"));
replaceString(L, 9, Str("say"), Str("存在于彼方，又存在于此处。既是过去的刻印，又是未来的预兆。"));
replaceString(L, 10, Str("say"), Str("现在，也存在于你的心里了。"));
replaceString(L, 11, Str("say"), Str("记录是不会说谎的。"));
replaceString(L, 12, Str("say"), Str("企业？你是想到了什么事情吗？"));
replaceString(L, 13, Str("say"), Str("没什么，大家继续前进吧。"));
lua_pop(L, 1);
}
void WORLD105D(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("嗯？这些塞壬的残骸...这片区域除了我们之外还有其他舰队么？"));
replaceString(L, 2, Str("say"), Str("资料查询中：没有发现其他舰队在这片区域的作战记录，也没有发现其他舰队前来作战的规划。"));
replaceString(L, 3, Str("say"), Str("大家快看雷达，我发现了一些有趣的事哦。"));
replaceString(L, 4, Str("say"), Str("雷达上密密麻麻的小点，代表着附近海域的敌方分布情况。然后每次刷新，小点的数量都会突然减少一些。"));
replaceString(L, 5, Str("say"), Str("前方的塞壬舰队在，消失......?"));
replaceString(L, 6, Str("say"), Str("........难道真的是，「她们」。"));
replaceString(L, 7, Str("say"), Str("指挥官，我去前方侦查一下！"));
replaceString(L, 8, Str("say"), Str("等等、「她们」是谁啊？现在情况不明，你自己一个人冲过去太危险了！"));
replaceString(L, 9, Str("say"), Str("喂，企业！"));
replaceString(L, 10, Str("say"), Str("唔...雷达上侦测不到信号，还能让企业姐这么激动...难道前方和塞壬战斗的是余烬？"));
replaceString(L, 11, Str("say"), Str("......舰队调整队形，保持警戒跟随企业前进。但是没有命令，不要主动向余烬开火。"));
lua_pop(L, 1);
}
void WORLD105E(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("你，不是...重樱的{namecode:94}号吧。"));
replaceString(L, 2, Str("say"), Str("哦？真是巧遇啊，你们也是为了仲裁机关的事而来的么。"));
replaceString(L, 3, Str("say"), Str("......仲裁机关？"));
replaceString(L, 4, Str("say"), Str("资料查询中：指挥官，指挥部的资料库中没有名为仲裁机关的任何文件。"));
replaceString(L, 5, Str("say"), Str("啊，一不小心说太多了啊...忘了吧。"));
replaceString(L, 6, Str("say"), Str("你就是那个让企业最近心神不宁的指挥官吧，初次见面。"));
replaceString(L, 7, Str("say"), Str("不经意间眼神与远方的余烬对上了......虽然口气上轻描淡写，但是她的眼中没有一丝笑意。"));
replaceString(L, 8, Str("say"), Str("怎么回事...？说不出话来也移不开目光，全身也仿佛僵住了一样，连一根指头都无法移动！"));
replaceString(L, 9, Str("say"), Str("唔，看起来也没什么特殊的啊......不知道她为什么对你这么在意。算了，只要不妨碍我，我对你也没什么兴趣就是了。"));
replaceString(L, 10, Str("say"), Str("我说，你也是舰船吧。别这么盛气凌人的欺负指挥官，来和我过两招怎么样？"));
replaceString(L, 11, Str("say"), Str("哦？我可以把这当成正式的决斗的邀请么？"));
replaceString(L, 12, Str("say"), Str("等等，巴尔的摩，我有问题要问她！"));
replaceString(L, 13, Str("say"), Str("你们皇家的伊丽莎白也没来么…唉，看来现在各家情况都很惨啊。"));
replaceString(L, 14, Str("say"), Str("我们真的要和那群家伙合作么…？\"它们\"原本是作为我们的替代品被制造出来的吧。"));
replaceString(L, 15, Str("say"), Str("你们曾经究竟发生了什么事，火炬和余烬，还有塞壬曾经是什么关系？！"));
replaceString(L, 16, Str("say"), Str("看来你已经知道了不少嘛。是安蒂克丝拉拢你们的手段么......"));
replaceString(L, 17, Str("say"), Str("呵呵，既然有这么多问题，不如回去直接问问它们如何？"));
replaceString(L, 18, Str("say"), Str("拉拢...你说什么？！"));
replaceString(L, 19, Str("say"), Str("好了，我还有事，闲聊到此为止。我现在会转身离开，如果敢追上来，就把你们都杀光。"));
replaceString(L, 20, Str("say"), Str("开玩笑的~不用紧张，等你们先能追上我的速度再说吧。如果不知道仲裁机关的事，最好别再继续把自己搅入漩涡之中了哦。"));
replaceString(L, 21, Str("say"), Str("......覆盖全身的压力消失了，感觉身体的各个部分都开始重新运转起来。"));
replaceString(L, 22, Str("say"), Str("刚刚感受到的，是透过眼神而传递过来的杀意......经历过无数尸山血海而磨炼出的冰冷杀意。"));
replaceString(L, 23, Str("say"), Str("虽然嘴上说着开玩笑，眼神里可没看到一丝开玩笑的成分呢......"));
replaceString(L, 24, Str("say"), Str("摆着一副了不起的态度，最后不还是逃跑了嘛！指挥官，我们要追么？"));
replaceString(L, 25, Str("say"), Str("刚刚的余烬说的不错，我们的航速确实追不上她......整理现状，首先向指挥部汇报吧。"));
lua_pop(L, 1);
}
void WORLD106A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("明明刚才一口气涌来了那么多敌人，现在越往深处，敌人反倒越少呢。"));
replaceString(L, 2, Str("say"), Str("残骸的密度倒是来越高了，看来那位余烬的{namecode:94}小姐已经提前帮我们清理干净了。"));
replaceString(L, 3, Str("say"), Str("塞壬明明不久前才把百慕大夺回去啊，居然短时间内就修了这么多设施，还布置了这么多舰队..."));
replaceString(L, 4, Str("say"), Str("我们在和塞壬打仗，余烬也在和塞壬打仗。指挥部下达过对余烬开火的命令，余烬也对我们也抱有敌意。"));
replaceString(L, 5, Str("say"), Str("在算上赤色中轴的话，这已经是四方势力在混战了...真是越来越搞不懂战局的发展了..."));
replaceString(L, 6, Str("say"), Str("刚刚她提到的仲裁机关让我很在意，余烬在海域里大举进攻塞壬，就是为了寻找那个叫仲裁机关的东西么？"));
replaceString(L, 7, Str("say"), Str("看来NA海域中塞壬异常部署的原因，可能比我们想的复杂很多..."));
replaceString(L, 8, Str("say"), Str("轰隆隆——————"));
replaceString(L, 9, Str("say"), Str("刚刚的是...雷声？现在明明是晴天哎，怎么会突然出现这么响的雷......？！"));
replaceString(L, 10, Str("say"), Str("这里的洋流也很混乱，就像是...整片海域被撕碎了一样。"));
replaceString(L, 11, Str("say"), Str("企业，再往前不远就是上次奇异点的旧址了吧。"));
replaceString(L, 12, Str("say"), Str("嗯...上次奇异点虽然消失了，但是这片海域的海况从那之后就一直十分怪异。"));
replaceString(L, 13, Str("say"), Str("领航员，你能整合侦查数据对附近海域的海况进行一下立体分析么？"));
replaceString(L, 14, Str("say"), Str("指令已确认：没问题。正在将正在将侦察机情报、雷达数据与声呐数据进行整合————"));
replaceString(L, 15, Str("say"), Str("真是越看越厉害了...这么复杂的数据原本需要一个团队花费几个小时才能分析完毕吧...！"));
replaceString(L, 16, Str("say"), Str("奇怪，指挥部是什么时候突然掌握了这种先进技术的....."));
replaceString(L, 17, Str("say"), Str("当前海域的未来气象预测，以及洋流状况已经分析完毕，请在G.M系统上进行查看。"));
replaceString(L, 18, Str("say"), Str("以及，未来6小时内可能出现恶劣天气，请舰队做好应对措施。"));
replaceString(L, 19, Str("say"), Str("有了可靠的领航员小姐，总算可以更加安全地探索这片海况复杂的区域了。"));
lua_pop(L, 1);
}
void WORLD106B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：前方海面上漂浮着大片死鱼，正在对周边海水进行成分进行分析，舰队请注意航行安全。"));
replaceString(L, 2, Str("say"), Str("这么多死鱼啊...是被战斗泄露的油料波及到了么，真可怜。"));
replaceString(L, 3, Str("say"), Str("不对，鱼群上并没有漂浮着油料，反而，有一种被化学物质腐蚀的痕迹...？"));
replaceString(L, 4, Str("say"), Str("化学物质腐蚀...这里可是远离常规航线的塞壬控制区啊，难道是塞壬做的么..."));
lua_pop(L, 1);
}
void WORLD106C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("大家快看，前方那个是新形成的火山岛么？"));
replaceString(L, 2, Str("say"), Str("岛上居然覆盖了还没完全融化的雪...？！这里可是百慕大海域哦！"));
replaceString(L, 3, Str("say"), Str("反常的现象.....继续探索吧。"));
lua_pop(L, 1);
}
void WORLD106D(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("空气中，漂浮着一些黑色的粒子...？"));
replaceString(L, 2, Str("say"), Str("仿佛具有磁性一样...啊，用手一碰就落在海面上了。"));
replaceString(L, 3, Str("say"), Str("收集一些样本好了。"));
lua_pop(L, 1);
}
void WORLD106E(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官，NY港至百慕大海域中心的航线已经清理完毕，可以联系司令部进行后续作战计划了。"));
getByList(L,1);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("进行汇报"));
lua_pop(L,2);
replaceString(L, 2, Str("say"), Str("嗯嗯嗯......原来如此，真是完全令人摸不着头脑的情况呢，指挥官辛苦了！"));
replaceString(L, 3, Str("say"), Str("NY司令部会尝试进行追踪新出现的余烬成员。至于百慕大中各类异常现象的后续探索，司令部会在商量之后再做决定。"));
replaceString(L, 4, Str("say"), Str("到目前为止的作战大家都辛苦了，不过还不能在这里停下来哟~"));
replaceString(L, 5, Str("say"), Str("下一步作战计划是继续前进，打通前往中心区域的航线。"));
replaceString(L, 6, Str("say"), Str("其他区域的作战目前总体来说也都在顺利推进中，我接下来也会前往一线增援，总攻的时候见咯！"));
replaceString(L, 7, Str("say"), Str("啊对了，关于赤色中轴的问题......算了！如果有最新情报的话，我会第一时间来通知你的！"));
replaceString(L, 8, Str("say"), Str("小加加通话结束~！"));
replaceString(L, 9, Str("say"), Str("萨拉托加最后没说完的话很让人在意哎...企业，你知道些什么么？"));
replaceString(L, 10, Str("say"), Str("唔...这个倒也不是什么不能说的情报。其实，为了保证作战顺利进行，指挥部正在与赤色中轴协商在NA海域中的短期停火协议。"));
replaceString(L, 11, Str("say"), Str("协商由皇家的伊丽莎白女王直接负责，看萨拉托加的语气，应该很快就能取得进展了吧。"));
replaceString(L, 12, Str("say"), Str("哎哎哎？！！这件事我可从来没听说过啊！"));
replaceString(L, 13, Str("say"), Str("和赤色中轴进行停火谈判，这种事真的能谈下来么...？"));
replaceString(L, 14, Str("say"), Str("而且还偏偏让皇家的伊丽莎白女王去谈.....她不是之前在{namecode:440}那里吃了个大亏么，不会有问题吧......"));
replaceString(L, 15, Str("say"), Str("不用担心，在这种大局问题上她是不会被情感影响的。相信皇家，相信伊丽莎白的能力吧。"));
replaceString(L, 16, Str("say"), Str("和赤色中轴的短期停火，如果能达成的话......"));
lua_pop(L, 1);
}
void WORLD107A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("我们明明已经这么深入NA海域内部了，情况有些不对，敌人还是太少了......"));
replaceString(L, 2, Str("say"), Str("这里按照以前的海图，这里应该处于Risk6~8的范围内，也就是仅限主力舰队在执行特殊作战任务时前往的区域吧！"));
replaceString(L, 3, Str("say"), Str("在现在塞壬有限的抵抗里也完全看不出指挥者的存在，行动过于单纯了。"));
replaceString(L, 4, Str("say"), Str("战斗力能力与刚刚在百慕海域中遭遇的那些根本不能相提并论，要是按照海图的标的话，那里的危险等级反而更低一些才对..."));
replaceString(L, 5, Str("say"), Str("又有一批海图要作废了。"));
replaceString(L, 6, Str("say"), Str("根据以往的战斗经验，只有在舰队指挥系统遭受毁灭性打击的时候塞壬才会出现这样的战斗模式。"));
replaceString(L, 7, Str("say"), Str("可是要怎么做才能让这么大范围内的塞壬指挥遭受到毁灭性打击......"));
replaceString(L, 8, Str("say"), Str("只有中枢指挥系统出现异常这一个可能了。如果这样的话，不论是低下的指挥效率还是异常的舰队部署都能解释得通了。"));
replaceString(L, 9, Str("say"), Str("可是我们刚刚才在百慕大海域和塞壬苦战了一场哦？我是觉得那批塞壬绝对是受到高级塞壬直接指挥的啦。"));
replaceString(L, 10, Str("say"), Str("综合现在的状况来看，塞壬指挥系统的某些部分出现问题，但是某些部分又完好无损...？"));
replaceString(L, 11, Str("say"), Str("哼哼，不论原因是什么，现在绝对是我们夺回整片NA海域的大好时机，指挥部选择的时机太漂亮了！"));
replaceString(L, 12, Str("say"), Str("嗯，没错。总之一边战斗，一边寻找塞壬陷入异常的原因吧。"));
lua_pop(L, 1);
}
void WORLD107B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("等、大家稍等一下！侦察机发现了一支行踪异常的舰队！"));
replaceString(L, 2, Str("say"), Str("........不会吧，侦察机在舰队中发现了{namecode:436}的身影，是日前袭击了斯卡帕湾并突破皇家封锁的铁血主力舰队！"));
replaceString(L, 3, Str("say"), Str("航向呢？！"));
replaceString(L, 4, Str("say"), Str("与我们航线相反，正在向着百慕大海域方向前进。她们应该还没有注意到我们的存在。"));
replaceString(L, 5, Str("say"), Str("毕竟航空力量薄弱可是铁血舰队的特色之一呢。"));
replaceString(L, 6, Str("say"), Str("没想到袭击了皇家之后，现在又鬼鬼祟祟的向着我们的海岸线靠拢，意图已经再明显不过了......"));
replaceString(L, 7, Str("say"), Str("咦？指挥部不是正在与赤色中轴协商停火协议么！"));
replaceString(L, 8, Str("say"), Str("问题就在这里。也许以停火协议为幌子的突然袭击，或者是想在停火协议的谈判桌上争取更多的利益么。"));
replaceString(L, 9, Str("say"), Str("不论是哪种情况，指挥部现在应该还蒙在鼓里吧......"));
getByList(L,9);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("立刻向指挥部进行汇报"));
lua_pop(L,2);
replaceString(L, 10, Str("say"), Str("指令已确认：正在向指挥部发送情报中。"));
replaceString(L, 11, Str("say"), Str("接下来怎么办，指挥官？反正停火协议还没有正式签署，趁着铁血舰队还没发现我们先下手为强？"));
replaceString(L, 12, Str("say"), Str("NA海域中的局势已经非常复杂了，现在让冲突进一步升级和整体战役的方针相违背。"));
replaceString(L, 13, Str("say"), Str("百慕大海域中确实存在着异常现象，铁血舰队的目标也许只是在那里也说不定......"));
replaceString(L, 14, Str("say"), Str("赞成，指挥部在作战之前也再三强调过不要与赤色中轴发生无谓的战斗。"));
replaceString(L, 15, Str("say"), Str("但是...也不能就这样放着铁血舰队畅通无阻的向白鹰的海岸前进..."));
replaceString(L, 16, Str("say"), Str("用舰载机掠过铁血舰队上空示警一下怎么样？"));
replaceString(L, 17, Str("say"), Str("舰队调整航向，同时从空中对铁血舰队发出警告。"));
replaceString(L, 18, Str("say"), Str("指令已确认：目标设定为铁血舰队，正在规划最佳的交战航线————"));
replaceString(L, 19, Str("say"), Str("嘿嘿，空中的事包在我身上~让我们给偷偷乱跑的铁血舰队一点小小的警告吧！"));
lua_pop(L, 1);
}
void WORLD108A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("唔，铁血舰队无视了低空掠过的舰载机，没有减速，也没有发动攻击。"));
replaceString(L, 2, Str("say"), Str("这种反应不太像铁血舰队的作风啊，难道和之前一样又是干扰装置的把戏？"));
replaceString(L, 3, Str("say"), Str("皇家当时判断的方法我记得好像是直接从正面发动攻击。我们怎么办，指挥官？"));
getByList(L,3);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("让舰载机发动攻击"));
replaceString(L, 2, Str("content"), Str("当面问清楚"));
lua_pop(L,2);
replaceString(L, 4, Str("say"), Str("分析模块同步中：检测到铁血发出的广播信号，她们提供了一个频率，想要与我们建立临时通讯频道。"));
replaceString(L, 5, Str("say"), Str("现在敌明我暗，还是先谈谈吧，看看铁血的意图再决定下一步打算。"));
replaceString(L, 6, Str("say"), Str("不知在何处的碧蓝航线舰队，你们好，这里是铁血舰队旗舰{namecode:436}。"));
replaceString(L, 7, Str("say"), Str("尾随与偷窥可不是良好的品德，通讯联络亦不是安全的选择，能否与我们当面谈一下呢？"));
replaceString(L, 8, Str("say"), Str("哼，说的倒好听，之前偷袭皇家舰队和锚地的时候可没看出来你们拥有什么良好品德。"));
replaceString(L, 9, Str("say"), Str("我是企业，{namecode:436}，你们已经进入了碧蓝航线管辖的海域，请你们立刻掉头离开。继续前进将视为对于碧蓝航线全体成员的进攻行为。"));
replaceString(L, 10, Str("say"), Str("碧蓝航线管辖的海域？一路上看起来这里明明是塞壬管辖的海域嘛。"));
replaceString(L, 11, Str("say"), Str("我们只是进入塞壬管辖的海域而已，你们少管闲事。"));
replaceString(L, 12, Str("say"), Str("难道不是打算趁着我们执行作战期间，趁机绕道突袭白鹰的海岸基地么？"));
replaceString(L, 13, Str("say"), Str("请不要误会，我们对于你们的作战行动没有兴趣，对于袭击白鹰本土更是没有兴趣。"));
replaceString(L, 14, Str("say"), Str("如果就算这样，你们也要阻拦我们的话......"));
replaceString(L, 15, Str("say"), Str("指挥官，铁血舰队突然调整了队形和航线，向着我们的方向高速驶来，我们的位置可能已经暴露了！"));
replaceString(L, 16, Str("say"), Str("什么...？！这场通讯是铁血的陷阱......！"));
getByList(L,16);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("立刻切断通讯，准备战斗。"));
lua_pop(L,2);
lua_pop(L, 1);
}
void WORLD108B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：发现疑似铁血舰载机群正在向我们接近，请做好对空作战准备。"));
replaceString(L, 2, Str("say"), Str("嗯，我也注意到了，是铁血量产型航母的机群么，还是说..."));
replaceString(L, 3, Str("say"), Str("大黄蜂，再在对铁血舰队进行一次侦查，重点搜索铁血航母，看一看{namecode:437}有没有藏在铁血舰队中。"));
replaceString(L, 4, Str("say"), Str("交给我吧~！"));
replaceString(L, 5, Str("say"), Str("战斗机群升空，准备迎战！"));
lua_pop(L, 1);
}
void WORLD108C(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指挥官~这里是小加加的紧急联络哦！"));
replaceString(L, 2, Str("say"), Str("就在不久之前伊丽莎白与铁血的{namecode:440}正式签署了NA海域内的临时停火协议，一段时间内我们都不用在作战中担心赤色中轴的问题了！"));
replaceString(L, 3, Str("say"), Str("...嗯？看你的反应，企业已经提前把要签署停火协议的事告诉你了吧~！"));
replaceString(L, 4, Str("say"), Str("萨拉托加，现在可能不是讨论停火的恰当时机，我们即将和先前遭遇到的铁血主力舰队开始正式交火了。"));
replaceString(L, 5, Str("say"), Str("哎哎哎？！"));
replaceString(L, 6, Str("say"), Str("舰载机编队即将抵达铁血舰队上空，即将发动攻......"));
replaceString(L, 7, Str("say"), Str("欸？等等......铁血主力舰队，不见了？"));
replaceString(L, 8, Str("say"), Str("啊...？不见了是什么意思。已经暴露的铁血舰队怎么可能突然摆脱舰载机的追踪...？"));
replaceString(L, 9, Str("say"), Str("果然是和上次在极地航线上一样的障眼法么..."));
replaceString(L, 10, Str("say"), Str("就算是那样的话也应该剩下一些驱逐舰之类的才对，现在海面上可是空空如也啊...我这就重新展开搜索！"));
replaceString(L, 11, Str("say"), Str("唔...稍等一下。看来赤色中轴那边不知道是用了什么方式脱离了我们的追踪范围呢。"));
replaceString(L, 12, Str("say"), Str("不过既然对方没有选择继续交火，总之也还算遵守了停火协议..小加加建议不要继续追击了，不然就会变成我们主动打破停火协议了哦。"));
getByList(L,12);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("表示赞同"));
lua_pop(L,2);
replaceString(L, 13, Str("say"), Str("被她们逃过一劫啊...唉，指挥部真的打算放任赤色中轴这么自由的在NA海域中航行么？"));
replaceString(L, 14, Str("say"), Str("这件事的话，指挥部内部也是经过多次讨论之后才达成较为统一的意见的。"));
replaceString(L, 15, Str("say"), Str("虽然自由鸢尾依然对这件事持有保留意见...指挥官对这件事怎么看？"));
getByList(L,15);
lua_getfield(L, -1, Str("options"));
replaceString(L, 1, Str("content"), Str("表示理解"));
replaceString(L, 2, Str("content"), Str("表示不理解"));
lua_pop(L,2);
replaceString(L, 16, Str("say"), Str("萨拉托加，指挥官应该拥有对于这件事细节的知情权。"));
replaceString(L, 17, Str("say"), Str("嗯...指挥部充分尊重和理解大家的立场，所以这件事是以私下构建的一系列复杂的单边条约所实现的。"));
replaceString(L, 18, Str("say"), Str("简而言之，就是以皇家控制的部分海域允许重樱舰队通航为条件作为交换，铁血同意在部分海域允许北方联合舰队通航。"));
replaceString(L, 19, Str("say"), Str("以这两份单边条约加上苏彝士运河通行公约为基础，最终构建了仅在NA海域对塞壬作战的期间内生效的双方阵营停火协定。"));
replaceString(L, 20, Str("say"), Str("我可以理解成在这片海域内我们与赤色中轴已经解除了对立状态么？"));
replaceString(L, 21, Str("say"), Str("不，我们与赤色中轴依然处于对立状态中，在遭到攻击后依然可以全力还击。"));
replaceString(L, 22, Str("say"), Str("哎...在赤色中轴分裂出去之后，我们已经很久没有过像这样可以一举消灭塞壬收复海洋的机会了。"));
replaceString(L, 23, Str("say"), Str("战胜塞壬是所有人的共同目标，我们不能承担在这关键时刻因为阵营内斗而导致战役失败的风险。"));
replaceString(L, 24, Str("say"), Str("关于这一点赤色中轴与我们的看法是一致的。"));
replaceString(L, 25, Str("say"), Str("哼，真是难得能和她们在一件事上达成共识！"));
replaceString(L, 26, Str("say"), Str("伊丽莎白？！你那边的事已经处理完了么。"));
replaceString(L, 27, Str("say"), Str("哼，还好本王在出现更大的混乱之前回来了，那个{namecode:440}还真算有点真本事，这几次的仇早晚报回来！"));
replaceString(L, 28, Str("say"), Str("还有，作战还在进行中吧，别闲聊了，快点行动起来！如果不建立好前哨站的话，后续作战可就没法按时展开了啊！"));
replaceString(L, 29, Str("say"), Str("继续努力战斗吧，本王期待总攻之时于诸位并肩战斗的场景能够早日到来！"));
lua_pop(L, 1);
}
void WORLD109A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("指令已确认：指挥官，舰队已到达NA海域核心区域外围。"));
replaceString(L, 2, Str("say"), Str("为了确保前哨站的顺利部署，首先需要彻底清理这片海域中的敌人。"));
replaceString(L, 3, Str("say"), Str("终于到总攻前的最后一步了......各舰注意，准备战斗！"));
lua_pop(L, 1);
}
void WORLD109B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("分析模块同步中：确认整片海域的敌人已经肃清完毕，可以进行下一步部署了，指挥官。"));
replaceString(L, 2, Str("say"), Str("接下来就是在这里等待前哨基地运输舰队的抵达，和之后的前哨站部署了吧。"));
replaceString(L, 3, Str("say"), Str("这次作战用的前哨站究竟是个什么样的东西啊，我虽然翻了不少资料，但是总感觉不太能理解...哎嘿~"));
replaceString(L, 4, Str("say"), Str("据我所知，前哨站使用了大量指挥部的最新科技，原理上类似于一个自航式的封闭大型浮船坞。"));
replaceString(L, 5, Str("say"), Str("不但是一处提供人员休整、舰队补给和维修的浮动船坞，更是一座拥有先进设备的战役指挥中心。"));
replaceString(L, 6, Str("say"), Str("据说连装甲和武器系统都是要塞级的哦？"));
replaceString(L, 7, Str("say"), Str("居然这么厉害的么......我已经期待起来了！"));
replaceString(L, 8, Str("say"), Str("经过长时间的战斗，舰队急需补给维修。能在前线拥有这样功能齐全的前哨站对接下来战斗的意义不言而喻。"));
replaceString(L, 9, Str("say"), Str("等到各处战区的前哨站都建立完毕之后，下一步就是发动最后的总攻了么...其他舰队也能一切顺利就好了。"));
replaceString(L, 10, Str("say"), Str("一路作战下来你也辛苦了哦，领航员小姐。"));
replaceString(L, 11, Str("say"), Str("......能辅助您进行作战是我的荣幸，指挥官。"));
replaceString(L, 12, Str("say"), Str("嗯...？刚刚领航员小姐的口气，是不是有点动摇？"));
lua_pop(L, 1);
}
void WORLD200A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("利维浦港·司令部会议室"));
replaceString(L, 2, Str("say"), Str("那么指挥官，企业，胡德，我也要先返回司令部了，希望我们所有人的作战都能顺利进行！"));
replaceString(L, 3, Str("say"), Str("皇家舰队也将在几小时后开始正式作战，胡德通话结束。"));
replaceString(L, 4, Str("say"), Str("呼......战役终于要正式开始了么。"));
replaceString(L, 5, Str("say"), Str("真是激动人心的演讲，胡德，做得很好！"));
replaceString(L, 6, Str("say"), Str("若是陛下亲自去的话，演讲效果一定会更好。"));
replaceString(L, 7, Str("say"), Str("鼓舞前线将士的事，还是交给会亲临前线与他们并肩战斗的人吧。"));
replaceString(L, 8, Str("say"), Str("陛下，停战协定那边...您果然还是决定亲自去么，实在是太危险了。"));
replaceString(L, 9, Str("say"), Str("哼，既然是对面主动提出来的，本王也没有多少选择余地，算是为了全局着想的必要风险吧。"));
replaceString(L, 10, Str("say"), Str("再说了...前几次被她整的那么惨，这次不扳回几分来的话让皇家的颜面何存！"));
replaceString(L, 11, Str("say"), Str("而且，我们也有\"人质\"在手里嘛。针对日前\"失踪\"铁血舰队的搜索正在逐步的缩小范围。这个节骨眼上料{namecode:441}也不敢把本王怎么样。"));
replaceString(L, 12, Str("say"), Str("这次作战目标简单明了，本王不在倒也没什么问题，关键是...唔..."));
replaceString(L, 13, Str("say"), Str("在这个时间点进行大型作战，对于局势来说也许是最好的选择，但是就内外部环境来说还有不少亟待解决的问题啊。"));
replaceString(L, 14, Str("say"), Str("没错！{namecode:441}现在想方设法把我调离前线，我总觉得有怪。"));
replaceString(L, 15, Str("say"), Str("这次乔治五世会与我同行，光辉她们又在陆间海..."));
replaceString(L, 16, Str("say"), Str("胡德、厌战，前线战况，以及指挥部和LD司令部内的各种事就全部交给你们了哦。"));
replaceString(L, 17, Str("say"), Str("遵命！"));
replaceString(L, 18, Str("say"), Str("至于女仆队的方面…贝法本王会一同带走，谢菲有其他任务。唔…纽卡斯尔继续留守LD司令部，爱丁堡跟随主力去前线好了！"));
replaceString(L, 19, Str("say"), Str("遵命，我这就去安排。"));
replaceString(L, 20, Str("say"), Str("陛下，我还有一个疑问。关于指挥部最新研发的领航员系统，指挥官与白鹰舰队都已经开始使用了吧，为什么我们没有使用呢？"));
replaceString(L, 21, Str("say"), Str("TB啊......关于它本王还有些要查明的事，所以这次作战我们先不用。"));
replaceString(L, 22, Str("say"), Str("嗯？开发领航员的「The Bridge」计划难道您没有参与么...？"));
replaceString(L, 23, Str("say"), Str("怎么可能啊！正是因为参与了，所以才格外觉得有些不得不调查清楚的事..."));
replaceString(L, 24, Str("say"), Str("唔，再说下去就复杂了，等本王有进一步结论之后再和你们说吧。"));
replaceString(L, 25, Str("say"), Str("本王差不多要进行出行准备了，战前会议到此为止。"));
replaceString(L, 26, Str("say"), Str("在此预祝你们作战顺利。胡德，带领舰队向世界展现皇家的威严吧！可不许让本王失望哦！"));
lua_pop(L, 1);
}
void WORLD200B(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("利维浦港近海·皇家舰队集结地"));
replaceString(L, 2, Str("say"), Str("陛下的舰队已经离开，我们也准备出发吧。"));
replaceString(L, 3, Str("say"), Str("本次的作战任务很简单，集结舰队突破塞壬防线；清理B战区，即东北NA海域；建立两处为总攻准备的前哨站；在总攻之后拿下海域的核心区域。"));
replaceString(L, 4, Str("say"), Str("北方联合因为极地塞壬活跃的原因，很遗憾本次作战依然无法派遣舰队前来。不过自由鸢尾将会派遣一支游击舰队与我们汇合。"));
replaceString(L, 5, Str("say"), Str("确实遗憾......吾还想近距离一览极地舰队战斗的身姿呢。"));
replaceString(L, 6, Str("say"), Str("除了NA海域内的塞壬出现异常外，目前各个海域中塞壬均无异常。极地的塞壬更是一如既往地活跃，北方联合腾不出兵力也是情理之中。"));
replaceString(L, 7, Str("say"), Str("况且，和赤色中轴的谈判未必就能这么顺利，我们也要在后方保留一张底牌才行。"));
replaceString(L, 8, Str("say"), Str("相当于牧羊犬一样的存在么，呵呵。"));
replaceString(L, 9, Str("say"), Str("不过自由鸢尾会派舰队来有些意外啊，黎塞留那边自己的战况都这么紧张......况且这次和赤色协商她们不也是明确反对的么？"));
replaceString(L, 10, Str("say"), Str("这就是黎塞留的智慧与眼界的体现了。内部的分歧姑且不论，现在是进行谈判的关键时刻，一定要向外部，尤其是向赤色中轴展现我们的团结。"));
replaceString(L, 11, Str("say"), Str("原来如此......黎塞留考虑的很周密呢。"));
replaceString(L, 12, Str("say"), Str("现在进行通讯测试。胡德小姐，这里是LD司令部的纽卡斯尔，通讯器的状况没问题吧。"));
replaceString(L, 13, Str("say"), Str("嗯，通讯状况良好。要是深入塞壬控制区之后通讯还能维持着这样的状态就好了..."));
replaceString(L, 14, Str("say"), Str("我们会尽最大努力支援前方作战的。而且指挥部专门强化了通讯设备，塞壬想要干扰我们也没有以前那么轻松了。"));
replaceString(L, 15, Str("say"), Str("这倒是个好消息，以前可没少在通讯干扰方面吃苦头啊。"));
replaceString(L, 16, Str("say"), Str("之后将由我在作战中向各位传达司令部的指令。在没有明确指令的时候，胡德小姐可以根据战场情况自由决断。"));
replaceString(L, 17, Str("say"), Str("另外...女王陛下那边一旦有了进展，我也会第一时间通知大家。"));
replaceString(L, 18, Str("say"), Str("我明白了，希望能等到陛下的好消息。嗯，时间也差不多了。"));
replaceString(L, 19, Str("say"), Str("我宣布，皇家此刻正式开始执行对塞壬大型作战，各舰队按照计划行动，祝各位武运隆昌，天佑女王！"));
lua_pop(L, 1);
}
void WORLD201A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("我是皇家驱逐舰格伦维尔，根据司令部的命令在这里迎接你们。两位以及身后的量产型驱逐舰队就是从自由鸢尾来的同伴吧。"));
replaceString(L, 2, Str("say"), Str("你好！我是自由鸢尾的鲁莽，旁边的是倔强，请多关照咯~"));
replaceString(L, 3, Str("say"), Str("虽然各位刚刚经历了漫长的旅途...不过很抱歉，战役已经开始了！我们稍作补给之后也要尽快投入战斗，这样安排可以么？"));
replaceString(L, 4, Str("say"), Str("没问题，我们从陆间海赶来就是参与战役行动的。根据黎塞留大人的命令，本次行动中我们全程听候LD司令部的调遣。"));
replaceString(L, 5, Str("say"), Str("太好了！事不宜迟，请立刻随我前往补给点的位置吧。"));
replaceString(L, 6, Str("say"), Str("有劳了。鲁莽，出发了哦！"));
replaceString(L, 7, Str("say"), Str("鲁莽...？"));
replaceString(L, 8, Str("say"), Str("哇啊啊是！稍微被作战指令书中的参战舰船列表吓到了，皇家居然调集了这么气派的舰队啊..."));
replaceString(L, 9, Str("say"), Str("嘿嘿，我们这次可是把所有能调动的军舰全都调过来了哦，这次绝对给塞壬一点颜色瞧瞧！"));
replaceString(L, 10, Str("say"), Str("哦哦~！我也感觉燃起来了！快点快点，立刻去前线吧！"));
replaceString(L, 11, Str("say"), Str("鲁莽，我们要先去补给点......"));
replaceString(L, 12, Str("say"), Str("啊哎？！！是！"));
lua_pop(L, 1);
}
void WORLD202A(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("NA海域东北·皇家外围作战区域"));
replaceString(L, 2, Str("say"), Str("GoGoGo！又一批敌人被消灭了！"));
replaceString(L, 3, Str("say"), Str("一路上都没遇到像样的抵抗，肯特选手，潇洒突破！"));
replaceString(L, 4, Str("say"), Str("和情报中一样，海域外围塞壬舰队的数量明显减少了，我们推进到这里居然没受到什么阻力。"));
replaceString(L, 5, Str("say"), Str("怎么样，你们的作战还顺利么？"));
replaceString(L, 6, Str("say"), Str("Yes！塞壬留在海里的舰队不堪一击，我们可能要提前达成作战目标了！"));
replaceString(L, 7, Str("say"), Str("那还真是比预想之中还要顺利。嗯，萨福克和诺福克呢？"));
replaceString(L, 8, Str("say"), Str("诺福克正拖着萨福克追击在刚才被打散的塞壬舰队，这些敌人简直一触即溃，反而多费了点功夫......"));
replaceString(L, 9, Str("say"), Str("嗯，这一点和其他舰队的反馈相同。塞壬的指挥系统看来确实出了一些不为我们所知的问题。"));
replaceString(L, 10, Str("say"), Str("利用这一点，各处区域的作战情况都比预期中的要好了不少。"));
replaceString(L, 11, Str("say"), Str("嗯...萨福克？那孩子难得也有这么积极的一面啊。"));
replaceString(L, 12, Str("say"), Str("\"快点结束战斗，才好回去摸鱼啊~\"她本人好像是这么说的..."));
replaceString(L, 13, Str("say"), Str("......"));
replaceString(L, 14, Str("say"), Str("哇啊啊！动机姑且不论...这次萨福克可是真的干劲满满哦！"));
replaceString(L, 15, Str("say"), Str("呵呵，我明白。继续努力吧，威尔士亲王通话结束。"));
replaceString(L, 16, Str("say"), Str("呼~肯特，可不能被萨福克她们比下去了，我们也继续战斗吧！"));
lua_pop(L, 1);
}
