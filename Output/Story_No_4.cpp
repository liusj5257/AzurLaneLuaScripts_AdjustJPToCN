#include "../common.h"
void W262006(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("电力方阵，通过底框的颜色可以判断是否被激活。"));
lua_pop(L, 1);
}
void W262015(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("还原了被偷走的能源矩阵！"));
replaceString(L, 2, Str("say"), Str("打捞完海域中剩余的物资后，就从出口离开吧"));
lua_pop(L, 1);
}
void WNNG13(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("使用大型作战记录仪可以跳过重复调查海域的过程，购买后请到大型作战中打开背包使用它吧。"));
lua_pop(L, 1);
}
void RENQICHANGMEN(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("SPストーリー\n\n<size=45>少女懇親会</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("お待ちかねの～！！"));
replaceString(L, 3, Str("say"), Str("お待ちかねのぉ～～！！"));
replaceString(L, 4, Str("say"), Str("指揮官さまとのぱ、ぱーてぃー……ですっ！"));
replaceString(L, 5, Str("say"), Str("わ～～～～～～～～い！！"));
replaceString(L, 6, Str("say"), Str("……………はぁ……"));
replaceString(L, 7, Str("say"), Str("普段人気のないお城の天守閣が、幾人の艦船と大量の饅頭（と遊興物と食べ物飲み物その他）でとても賑わっていた。"));
replaceString(L, 8, Str("say"), Str("長門に「懇親会」として招待され、お城に迎え入れられたわけだが……"));
replaceString(L, 9, Str("say"), Str("陸奥さま、この「ばっふぁろーうぃんぐ」って美味しいらしいよ！"));
replaceString(L, 10, Str("say"), Str("はわわ、山風、手づかみで食べるなんて畏れ多いこと……"));
replaceString(L, 11, Str("say"), Str("本当！？食べる食べる！…甘くて酸っぱくて…江風これどうやって作るの？"));
replaceString(L, 12, Str("say"), Str("…っ！申し訳ございません、すぐお調べいたしますっ"));
replaceString(L, 13, Str("say"), Str("山風の魔術はいつやるの？海風もやらないの？長門姉にも見せてほしい！"));
replaceString(L, 14, Str("say"), Str("すぐ準備する！よーし！山風のすっごいマジックを見せちゃうぞー！おー！"));
replaceString(L, 15, Str("say"), Str("お硬い懇親会だとは思ってなかったが、こんな「ぱーてぃー」だとも予想できなかった。"));
replaceString(L, 16, Str("say"), Str("皆がわいわい楽しくやるのはいいが………"));
replaceString(L, 17, Str("say"), Str("主催で主役である長門が、この場にいなかった。"));
replaceString(L, 18, Str("say"), Str("………っ！？"));
replaceString(L, 19, Str("say"), Str("お、お主か。「ぱーてぃー」とやらは楽しんでおるか？"));
replaceString(L, 20, Str("say"), Str("天守閣を出ると、すぐ隣の通路からパーティーの様子を密かに覗いている長門を発見した。"));
replaceString(L, 21, Str("say"), Str("中の様子が気になるのであれば、なぜ参加しないのだろう……"));
replaceString(L, 22, Str("say"), Str("べ、別に参加したくないわけではない！そもそも懇親会を開いたのはほかでもなく余であるぞ"));
replaceString(L, 23, Str("say"), Str("でも途中から陸奥がどんどん話を脱線させたのだ…料理が足りないだの指揮官が楽しめないだの…"));
replaceString(L, 24, Str("say"), Str("気づいたら、懇親会ではなく「ぱーてぃー」に……"));
replaceString(L, 25, Str("say"), Str("……元々の「懇親会」はどんな感じだったんだろう。"));
replaceString(L, 26, Str("say"), Str("そ、それはもちろん、比叡に会席を用意してもらって、日頃の感謝を込めた謝辞を江風に読み上げてもらって、それから…"));
replaceString(L, 27, Str("say"), Str("連合艦隊の総旗艦である余が、指揮官のみを招待する懇親会であるからには、これぐらいの格式が必要であるとは思わぬか………？"));
replaceString(L, 28, Str("say"), Str("なるほど。道理で陸奥が「楽しくない」と思うわけだ……"));
replaceString(L, 29, Str("say"), Str("懇親会にしてもパーティーにしても、長門たちの気持ちが伝わるから格式に拘るつもりはないが、せっかくやるなら「楽しく」したいのも頷ける。"));
replaceString(L, 30, Str("say"), Str("（ちらちら）"));
replaceString(L, 31, Str("say"), Str("（そわそわ）"));
replaceString(L, 32, Str("say"), Str("何より、長門自身もパーティーを嫌がっているどころか、一緒に楽しんでいきたいようだ。"));
replaceString(L, 33, Str("say"), Str("せ、せっかくお主を招待したのに余が楽しめないとお主も興ざめだろう？ならば主役を陸奥に譲って……え？"));
replaceString(L, 34, Str("say"), Str("お、お主！一体何をしておる！？きゅ、急に引っ張って――"));
replaceString(L, 35, Str("say"), Str("意を決して、長門の手を引いて通路からパーティー会場に戻る。"));
replaceString(L, 36, Str("say"), Str("次のマジックは～紙吹雪とハトさんだぁ！！"));
replaceString(L, 37, Str("say"), Str("こ、こら！手を離さんか！"));
replaceString(L, 38, Str("say"), Str("長門姉に指揮官だ！！！"));
replaceString(L, 39, Str("say"), Str("（どーーーーーん！）"));
replaceString(L, 40, Str("say"), Str("御狐様！"));
replaceString(L, 41, Str("say"), Str("あわわわ！ななな、なんて畏れ多いこと……"));
replaceString(L, 42, Str("say"), Str("……………へ？"));
replaceString(L, 43, Str("say"), Str("紙吹雪が舞う中で、山風のマジックハットから飛び出したハトたちが天守閣に入ってきた自分と長門の肩や頭にとまった。"));
replaceString(L, 44, Str("say"), Str("…………………………"));
replaceString(L, 45, Str("say"), Str("（そわそわ、ドキドキ）"));
replaceString(L, 46, Str("say"), Str("呆然とした長門は、恐る恐る手を上げ、こちらの顔に向けて腕を伸ばす。"));
replaceString(L, 47, Str("say"), Str("お、お主、羽が鼻の下についておる……ぞ？"));
replaceString(L, 48, Str("say"), Str("………へ？"));
replaceString(L, 49, Str("say"), Str("ヒゲだー！"));
replaceString(L, 50, Str("say"), Str("ふ、ふふふ……ヒゲですよ、指揮官さま"));
replaceString(L, 51, Str("say"), Str("………プッ"));
replaceString(L, 52, Str("say"), Str("……ふ、ふふふ…ふはははは！"));
replaceString(L, 53, Str("say"), Str("ははははははははは！"));
replaceString(L, 54, Str("say"), Str("楽しい笑い声が天守閣に響き渡る中、長門に視線を向ける。"));
replaceString(L, 55, Str("say"), Str("そこには――祭儀を担う御狐、連合艦隊の総旗艦ではなく、仲間たちと楽しげに笑う幼き少女がいた。"));
lua_pop(L, 1);
}
