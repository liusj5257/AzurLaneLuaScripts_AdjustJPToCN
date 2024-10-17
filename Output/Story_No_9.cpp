#include "../common.h"
void ZHUXIAN040401(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("午前11時30分・龍驤航空隊発進、作戦進行"));
replaceString(L, 2, Str("say"), Str("午後1時・翔鶴航空隊が発進"));
replaceString(L, 3, Str("say"), Str("午後1時50分・龍驤、サラトガと交戦し大破"));
replaceString(L, 4, Str("say"), Str("午後2時すぎ、比叡隊、ユニオン空母隊を発見し、報告"));
replaceString(L, 5, Str("say"), Str("第2次攻撃隊、発進準備――"));
replaceString(L, 6, Str("say"), Str("いい？瑞鶴、今回の作戦はアズールレーン主力艦隊の撃破だけど、セイレーンが現れた場合はまず皆に連絡してね"));
replaceString(L, 7, Str("say"), Str("決して早とちりしないように、ね。分かってるわ"));
replaceString(L, 8, Str("say"), Str("分かっているならいいわ。翔鶴から聞いたわよ？エンタープライズと戦うのを楽しみにしていたって"));
replaceString(L, 9, Str("say"), Str("ん？そうね…赤城先輩たちを倒したあの「グレイゴースト」、一体どれほど強いのか…"));
replaceString(L, 10, Str("say"), Str("今、高雄ちゃんみたいな顔してるわね。ふふふ"));
replaceString(L, 11, Str("say"), Str("そ、そう？"));
replaceString(L, 12, Str("say"), Str("…まあいいわ。私と比叡たちは迂回して攻撃を仕掛けるわ。空母たちが戦うところを邪魔する気はないもの"));
replaceString(L, 13, Str("say"), Str("助かる！龍驤ちゃんの救出も頼むよ。あの子一人であんな数の相手に頑張ってたし"));
replaceString(L, 14, Str("say"), Str("瑞鶴、準備はいい～？そろそろ出発するわよ！"));
replaceString(L, 15, Str("say"), Str("いけない。そろそろこっちも攻撃隊を飛ばさないと…せっかく龍驤ちゃんが時間を稼いでくれたのに"));
replaceString(L, 16, Str("say"), Str("ええ、そうしてちょうだい。成功を祈るわ"));
replaceString(L, 17, Str("say"), Str("うん！愛宕たちが戦場にたどり着くまでにユニオンなんてぶっ飛ばしてやるんだから！"));
replaceString(L, 18, Str("say"), Str("げほげほ…今のは流石にサラトガちゃんでもびっくりしたよ！"));
replaceString(L, 19, Str("say"), Str("ミッドウェイ作戦でヨークタウン姉さんが傷を負わせた相手――"));
replaceString(L, 20, Str("say"), Str("一航戦だけではなく、まさか重桜にまだこれほど強い空母が残されているとは…"));
replaceString(L, 21, Str("say"), Str("レキシントン姉ちゃんを大怪我させた子たちで間違いないね。サラトガちゃん、今プンプンしてるよ！"));
replaceString(L, 22, Str("say"), Str("しかし、まだ航空攻撃を凌いだだけだ。敵の空母は見つかったか"));
replaceString(L, 23, Str("say"), Str("まだだね。でも龍驤？がここの近くにいるし、敵は救出のために絶対に向かってくるよ！"));
replaceString(L, 24, Str("say"), Str("エンタープライズ、サラトガちゃんの航空隊を援護に預けるから、敵の空母と決戦よ！"));
replaceString(L, 25, Str("say"), Str("そうだな。夜になるまでに決着をつける――！"));
lua_pop(L, 1);
}
void NICONICO3(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("最近、綾波の様子が…？\n\n<size=45>その三　干物同盟！？</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("「アヤナミ」凄いな…まさか幽霊さんとここまでやりあえるなんて～"));
replaceString(L, 3, Str("say"), Str("「L・I」が本気を出せば、綾波は勝てないはず…"));
replaceString(L, 4, Str("say"), Str("フッフッフッ、「アヤナミ」の成長を楽しみにしてるよ～"));
replaceString(L, 5, Str("say"), Str("で、これから何するのかな？うーん生放送巡り？新番アニメチェック？むむむ悩ましいの…"));
replaceString(L, 6, Str("say"), Str("ふぅ……"));
replaceString(L, 7, Str("say"), Str("（トントン）"));
replaceString(L, 8, Str("say"), Str("うん、この音、指揮官ですね…今行くのです"));
replaceString(L, 9, Str("say"), Str("やはり指揮官です…うん？部屋に誰も居ないのです……"));
replaceString(L, 10, Str("say"), Str("「ニコ生」で知り合ったトモダチです。"));
replaceString(L, 11, Str("say"), Str("お出かけ…ですか？えっと、この動画を見てから考えるのです――"));
lua_pop(L, 1);
}
void W262004(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("被激活的灯塔，通过能源矩阵通路获得源源不断的电力。可以照亮附近的海域。"));
lua_pop(L, 1);
}
