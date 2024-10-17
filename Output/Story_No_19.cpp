#include "../common.h"
void W262001(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("根据指挥部的消息，这片海域受到塞壬浓雾的影响，导致远处的电力方阵断电。"));
replaceString(L, 2, Str("say"), Str("请指挥官携带三块能源矩阵，依次寻找到雾气中的三座灯塔控制台，点亮灯塔的同时重新构建电力输送通路。"));
lua_pop(L, 1);
}
void ZHUXIAN040201(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("みんな、シカゴと連絡が取れた！"));
replaceString(L, 2, Str("say"), Str("「重桜の艦隊から奇襲を受け、味方多数が損傷…なお敵艦隊は反転せずなおも前進中の模様」"));
replaceString(L, 3, Str("say"), Str("あっちは確かユニオン以外にも盟友の艦船も多数配置されているはず…この戦況…まずいな"));
replaceString(L, 4, Str("say"), Str("夜間戦闘だとこっちに勝ち目がないかな…"));
replaceString(L, 5, Str("say"), Str("先に敵を発見できればまだ航空隊による先制攻撃が可能だが、乱戦になると圧倒的に不利になるな"));
replaceString(L, 6, Str("say"), Str("敵艦隊の構成もわかったし、備えておくに越したことはないね"));
replaceString(L, 7, Str("say"), Str("ああ、敵の進路からすればアストリアたちとぶつかるはずだ。こちらから援護するかは…"));
replaceString(L, 8, Str("say"), Str("気持ちは分かりますけど、こっちの相手はあくまで敵空母部隊のはずですよ？"));
replaceString(L, 9, Str("say"), Str("ミッドウェイで赤城たちを撃破したとはいえ、向こうの稼働中の空母がまだ何人いるかわからないもんね"));
replaceString(L, 10, Str("say"), Str("つまり有効的な手はなし、か"));
replaceString(L, 11, Str("say"), Str("まあね。少なくとも夜では…あーせっかくここまで来たんだからバーベキューを楽しみにしてたのに…"));
replaceString(L, 12, Str("say"), Str("あははは…"));
replaceString(L, 13, Str("say"), Str("じゃあ決まりですね。夜間戦闘では不利なため敵の攻勢を退けつつ味方の援護に向かう、と"));
replaceString(L, 14, Str("say"), Str("……そうなるな"));
replaceString(L, 15, Str("say"), Str("エンタープライズが気を負うことはないよ。これは仕方のないことだもん。ワスプ隊はもう向かっているし、ここは情報を待とう、ね？"));
replaceString(L, 16, Str("say"), Str("サラトガの言う通り！じっと悩んでいても仕方がないからね！"));
lua_pop(L, 1);
}
void W262014(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("感受到了破局者的气息，应该已经非常接近了！！"));
lua_pop(L, 1);
}
