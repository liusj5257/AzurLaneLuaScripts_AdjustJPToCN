#include "../common.h"
void NICONICO4(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("最近、綾波の様子が…？\n\n<size=45>その四　綾波更生計画・上</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("こ、このままだと綾波が「ハイジン」になっちゃうで！"));
replaceString(L, 3, Str("say"), Str("指揮官お願い！綾波を部屋から連れ出すんや！"));
replaceString(L, 4, Str("say"), Str("にゃにゃ♪この明石にはいい案があるにゃ！実は最近新しい食料を開発したにゃ。電子の海に溺れるコドモたちを引き上げるチョ～オイシイ、明石謹製エナジーチーズケーキにゃ！"));
replaceString(L, 5, Str("say"), Str("名付けて――『ゲキウマ大作戦』にゃ！"));
replaceString(L, 6, Str("say"), Str("おおお！なんか強そうに聞こえるんやで！"));
replaceString(L, 7, Str("say"), Str("材料費は…指揮官に負担してもらうにゃ！"));
lua_pop(L, 1);
}
void TACT10010(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("所詮は「スペアデータ」に残されている「ログ」を使ったシミュレーション…「なぞる」ことしかならないのね…"));
replaceString(L, 2, Str("say"), Str("戦争、矛盾、憎悪、果たしてどんなものを産み出してくれるか？"));
replaceString(L, 3, Str("say"), Str("ふふふ…「今度」は失望させないでほしいわ……"));
lua_pop(L, 1);
}
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
