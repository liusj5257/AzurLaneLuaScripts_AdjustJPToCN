#include "../common.h"
void ZHUXIAN040302(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("囮でも囮の意地がある！そんな簡単に倒れはせん！"));
replaceString(L, 2, Str("say"), Str("自由の国の戦士たちに告ぐ！自分は日の出ずる国の武士（もののふ）・龍驤なり！"));
replaceString(L, 3, Str("say"), Str("自分を囮と侮るなら、戦いでその慢心を正して進ぜよう！"));
replaceString(L, 4, Str("say"), Str("龍驤麟振、我が前に敵はなし！――参る！"));
replaceString(L, 5, Str("say"), Str("エンタープライズさん、そちらに向かってるよ！"));
replaceString(L, 6, Str("say"), Str("ああ！エンタープライズ、エンゲージ！"));
replaceString(L, 7, Str("say"), Str("龍驤ちゃん、エンタープライズをよく引き付けた…今私達が…！"));
replaceString(L, 8, Str("say"), Str("――・――・――"));
replaceString(L, 9, Str("say"), Str("これは…神通の二水戦からの連絡？！"));
replaceString(L, 10, Str("say"), Str("翔鶴姉、どうすれば…"));
replaceString(L, 11, Str("say"), Str("龍驤ちゃんが重傷、神通さんたちの隊も損傷を受けている…エンタープライズが健在ならよく考えても五分五分……"));
replaceString(L, 12, Str("say"), Str("龍驤ちゃんの救出はもちろんだけど…エンタープライズへの攻撃は愛宕たちの増援を待つ？"));
replaceString(L, 13, Str("say"), Str("情報によれば、龍驤ちゃんは頑張って敵にダメージを与えた、任務を考えるとこのまま攻撃を続行させたほうがいいわね"));
replaceString(L, 14, Str("say"), Str("……いいえ、どうやらそういうわけにもいかないようね"));
replaceString(L, 15, Str("say"), Str("翔鶴姉？"));
replaceString(L, 16, Str("say"), Str("瑞鶴、あっちを見て"));
replaceString(L, 17, Str("say"), Str("……！！！"));
replaceString(L, 18, Str("say"), Str("…………"));
replaceString(L, 19, Str("say"), Str("そんな…ありえない……龍驤ちゃんはエンタープライズたちと交戦したばかりのはず…！"));
replaceString(L, 20, Str("say"), Str("となるとここにいる龍驤ちゃんは「ニセモノ」ってことね…瑞鶴、私の言いたいこと、わかる？"));
replaceString(L, 21, Str("say"), Str("……うん。油断して手加減すると痛い目に遭うよ、ってね！"));
lua_pop(L, 1);
}
