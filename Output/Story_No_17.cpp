#include "../common.h"
void ZHUXIAN040402(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("「駒」は配置についたのかしら？"));
replaceString(L, 2, Str("say"), Str("ええ、全部予定通りだわ。エンタープライズと瑞鶴、どっちが勝つか見ものね"));
replaceString(L, 3, Str("say"), Str("へー、変なことを言うのねオブザーバー。あなた、結果なんてすでに分かっているんじゃなくて？"));
replaceString(L, 4, Str("say"), Str("ええ分かっているわ。だってもう何百回も見たもの――記録も、演算もね"));
replaceString(L, 5, Str("say"), Str("私の「テスト」結果も、でしょ？"));
replaceString(L, 6, Str("say"), Str("ふふふ、そうね。あなたが施した「テスト」、そして異なる時間軸のもの、全部チェックしてるわ"));
replaceString(L, 7, Str("say"), Str("「失敗から学ぶ」という、人間の諺を聞いたけど、あなたもそれをやるつもり？"));
replaceString(L, 8, Str("say"), Str("違うわテスター。人間は過去しか見れないけど、私たちは未来も見れるわよ"));
replaceString(L, 9, Str("say"), Str("失敗する可能性すら存在しない存在が、どうやって失敗するのかしら？"));
replaceString(L, 10, Str("say"), Str("……さて。"));
replaceString(L, 11, Str("say"), Str("――世界初の空母間の対決となった「珊瑚海海戦」 "));
replaceString(L, 12, Str("say"), Str("――空母たちの対決のみで戦争の趨勢を決めた「ミッドウェイ海戦」"));
replaceString(L, 13, Str("say"), Str("――そして2つの戦いを制した空母たちが再び相見えるこの戦い"));
replaceString(L, 14, Str("say"), Str("……「楔」になるのか、それとも……ふふふ、楽しみにしているわ"));
replaceString(L, 15, Str("say"), Str("じっくり「観察」させてもらうわよ。「エンタープライズ」――"));
lua_pop(L, 1);
}
void NICONICO7(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("最近、綾波の様子が…？\n\n<size=45>その七　アヤナミ、出撃です！</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("指揮官、祥鳳、おはようです。"));
replaceString(L, 3, Str("say"), Str("綾波！？雷ちゃんの作戦が成功した！？"));
replaceString(L, 4, Str("say"), Str("はい、長時間の作戦行動はやっぱり新兵には厳しいと判断したのです。"));
replaceString(L, 5, Str("say"), Str("それに、指揮官と祥鳳も綾波のことを心配してくれているのです……"));
replaceString(L, 6, Str("say"), Str("ケーキも…興味が無いわけじゃ……ない、です…"));
replaceString(L, 7, Str("say"), Str("うわああああん！綾波戻ってきたんや！！"));
replaceString(L, 8, Str("say"), Str("祥鳳が泣くと…綾波、困るのです…"));
replaceString(L, 9, Str("say"), Str("うぅ……せやけど、どういう表情せりゃええんの？"));
replaceString(L, 10, Str("say"), Str("……「笑えばいい」と思うのです。"));
lua_pop(L, 1);
}
