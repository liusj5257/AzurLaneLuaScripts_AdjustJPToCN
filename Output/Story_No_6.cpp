#include "../common.h"
void W262012(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("感受到了破局者的气息，应该就在附近了！"));
lua_pop(L, 1);
}
void WNNG14(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("大型作战已重置，开启了补给商店"));
lua_pop(L, 1);
}
void ZHUANGJIA3(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
getByList(L,1);
lua_getfield(L, -1, Str("sequence"));
getByList(L,1);
lua_pushnumber(L, 1);
lua_pushstring(L, Str("『装甲騎兵ボトムズ』コラボシナリオ\n\n<size=45>第三話  自責</size>"));
lua_settable(L, -3);
lua_pop(L,3);
replaceString(L, 2, Str("say"), Str("この反応…お前は私たちに倒されたはず……！"));
replaceString(L, 3, Str("say"), Str("そうよ？でも、あなたたちが戦士ならば自覚ありますよね？\"そんなことしている場合ではない\"ということが。"));
replaceString(L, 4, Str("say"), Str("え？どういうことなの？"));
replaceString(L, 5, Str("say"), Str("さ、お喋りはここまで。今のあなた方はアレをいぶり出すための囮。しっかり踊ってくださいね。"));
replaceString(L, 6, Str("say"), Str("今回のため特別にあなた方に縁のある量産型を用意いたしましたよ。こんな気の利く私を遠慮無く賞賛しなさい。"));
replaceString(L, 7, Str("say"), Str("な、なんかヤバそうな連中が出てきたにゃ。"));
replaceString(L, 8, Str("say"), Str("翔鶴姉！？…くっ、卑怯な！"));
replaceString(L, 9, Str("say"), Str("……。"));
replaceString(L, 10, Str("say"), Str("ヨークタウン姉さん……やはりそう来たか。"));
replaceString(L, 11, Str("say"), Str("……。"));
replaceString(L, 12, Str("say"), Str("衣笠…最上…熊野……"));
replaceString(L, 13, Str("say"), Str("……。"));
replaceString(L, 14, Str("say"), Str("今の長距離砲撃はあなただったのね。ティルピッツ…。"));
replaceString(L, 15, Str("say"), Str("……。"));
replaceString(L, 16, Str("say"), Str("時雨、やっぱりお前が出てきたのか！いつもいつもいつも、この雪風様の邪魔ばかりして！"));
replaceString(L, 17, Str("say"), Str("……。"));
replaceString(L, 18, Str("say"), Str("いや、明石は不知火を出されても、なんとも思わないにゃ。"));
replaceString(L, 19, Str("say"), Str("……。"));
replaceString(L, 20, Str("say"), Str("ちょうどいいにゃ！日頃のストレスを発散するにゃ！"));
replaceString(L, 21, Str("say"), Str("さ、皆さん、私を倒してからどこまで成長したかを見せてちょうだい。"));
replaceString(L, 22, Str("say"), Str("み、みんな！呆けている場合じゃないにゃ！敵が攻撃してくるにゃ！"));
replaceString(L, 23, Str("say"), Str("とりあえず、あの不知火だけでもぶっ飛ばしてほしいにゃ。"));
replaceString(L, 24, Str("say"), Str("くっ…飛行甲板が…。流石に臨時の混成艦隊じゃ無理だというのか…。"));
replaceString(L, 25, Str("say"), Str("最上、熊野…ごめん…わたし……。"));
replaceString(L, 26, Str("say"), Str("ティルピッツ、こっちのあなたも鏡に映されたものなのね。いいわ、かかってきなさい。"));
replaceString(L, 27, Str("say"), Str("まだ赤城でも来ればやる気も出るんだがな…。"));
replaceString(L, 28, Str("say"), Str("ふん、この雪風様と決着をつけるときが来たようだな。"));
replaceString(L, 29, Str("say"), Str("しかし多勢に無勢か。次々と艦載機が落とされていく…。"));
replaceString(L, 30, Str("say"), Str("敵の攻撃を防ぐだけで手一杯よ…。目の前の翔鶴姉が違うと分かっていても…。"));
replaceString(L, 31, Str("say"), Str("隙をついて離脱しようにも無理ね。離脱しようにもティルピッツの砲撃に捕まるわ…。"));
replaceString(L, 32, Str("say"), Str("いやだから明石としては不知火をぶっ飛ばしたいのに、対空砲だけだと勝てないにゃ。"));
replaceString(L, 33, Str("say"), Str("ふん！雪風様は未だに無傷なのだ！さあさあ、この雪風様を拝み倒してくれたら……。"));
replaceString(L, 34, Str("say"), Str("雪風ひとりならどうにかなるかもしれないけど、他の子は無理っすね…。"));
replaceString(L, 35, Str("say"), Str("フフフ、アハハハ。もう終わりね。さぁ、沈みなさい。"));
replaceString(L, 36, Str("say"), Str("（ドカーン）"));
replaceString(L, 37, Str("say"), Str("おおお……4時方向に砲撃と爆発音が聞こえるにゃ。誰かが包囲の外から攻撃してきているにゃ。"));
replaceString(L, 38, Str("say"), Str("もしかして、みんなが委託から戻ってきた？"));
replaceString(L, 39, Str("say"), Str("それはありえないわね。いま誰かが連絡したとしても、委託の子たちが戻ってくるのは最短でも1時間半後…。海軍部の援軍なんてさらに時間が掛かるわ。"));
replaceString(L, 40, Str("say"), Str("それまでには私ら終わっているね…。"));
replaceString(L, 41, Str("say"), Str("あ、あれは……！！"));
replaceString(L, 42, Str("say"), Str("疲弊する仲間たち。苦闘の果てにやってきた援軍は思いも寄らぬ珍客だった。それは夢か真か幻か？次回「反抗」。漆黒の海に緑の閃光が疾駆する。"));
lua_pop(L, 1);
}
void SANLI08(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("榛名の協力はありませんが、本日の祝宴会の献立もこの比叡の逸品ぞろいでございます。皆様、戦いの疲れをお忘れになって、思う存分お楽しみくださいませ～"));
replaceString(L, 2, Str("say"), Str("三笠大先輩はこういうことが苦手だと思っていました…"));
replaceString(L, 3, Str("say"), Str("あはは、美酒佳肴（びしゅかこう）にどんちゃん騒ぎ、嫌うものはそうあるまい。バルト海の戦のあとは三日三晩騒いたぞ。"));
replaceString(L, 4, Str("say"), Str("三笠大先輩がどんちゃん騒ぎする姿……ちょっとイメージしづらいですね…"));
replaceString(L, 5, Str("say"), Str("この我をそう堅い人間だと思うかな？それより瑞鶴、比叡が用意した宴会は気に入ったか？"));
replaceString(L, 6, Str("say"), Str("もちろん好きですよ？でないと訓練の時間に来るわけ――あ、定常訓練ではなく、自主練の時間です！"));
replaceString(L, 7, Str("say"), Str("自主練……か。ここにいる子たちはみな努力しているな。"));
replaceString(L, 8, Str("say"), Str("はい。まあ頑張りすぎな子も何人かいますけど……まあ、「セイレーン」相手の戦いだもの、全てを賭けなきゃ！"));
replaceString(L, 9, Str("say"), Str("全てを賭けて……瑞鶴、お主にとって一番大切な、守りたいものはなんだ？"));
replaceString(L, 10, Str("say"), Str("一番大切なものですか？えっと……たくさんありますね…翔鶴姉、重桜のみんな……それといつかあのグレイゴーストにも勝ちたいし、どれも捨てがたい……うぅ、私こういう話はちょっと苦手かも……"));
replaceString(L, 11, Str("say"), Str("では聞き方を改めよう。勝利のために全てを賭けるのは至極当然の考えだ。だがお主にとって「全て」は一体なんだろうか？"));
replaceString(L, 12, Str("say"), Str("「この世界のために戦う」と息巻いている間、その心には力が溢れるのか？"));
replaceString(L, 13, Str("say"), Str("絶望の時、己の無力さを感じる時、「人類の存亡」だの「世界」だのより、仲間とライバル、こうして祝宴が開ける時間こそ、お主にとっての「全て」ではなかろうか。"));
replaceString(L, 14, Str("say"), Str("そんな「己の全て」を捨て去るのはすなわち「己の存在」を否定するものであり……己の存在も否定する者は己の限界を越えることは出来るはずがあるまい。"));
replaceString(L, 15, Str("say"), Str("……お二人さん？そろそろダンスが始まりますよ？"));
replaceString(L, 16, Str("say"), Str("すまんすまん…むっ、相手が……瑞鶴、一曲付き合ってくれるか？"));
replaceString(L, 17, Str("say"), Str("えええ！？わ、私ダンスはあまり……"));
replaceString(L, 18, Str("say"), Str("そう固くするでない～どれ、難しい所は我の足を踏んでも構わんぞ"));
lua_pop(L, 1);
}
void ZHUXIAN040203(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("アストリア、クインシー、ヴィンセンス！大丈夫か！"));
replaceString(L, 2, Str("say"), Str("エンタープライズさん！"));
replaceString(L, 3, Str("say"), Str("な、なんとかね…！"));
replaceString(L, 4, Str("say"), Str("あのフルタカ？って子はこちらで撃破しましたよ。…この傷、流石に基地に戻らなければ治らなそうですね…"));
replaceString(L, 5, Str("say"), Str("すみません、艤装がもうほぼ全損に近いです…"));
replaceString(L, 6, Str("say"), Str("基地に戻らなくても治る損傷なんてある？"));
replaceString(L, 7, Str("say"), Str("あの古鷹は一瞬で回復したんじゃない？"));
replaceString(L, 8, Str("say"), Str("古鷹とは違った。微妙に…"));
replaceString(L, 9, Str("say"), Str("どういうこと？"));
replaceString(L, 10, Str("say"), Str("あ、ええと、私たちは青葉と古鷹、そして鳥海と交戦しましたけど、そのあとすぐに古鷹がもう一回やってきて…"));
replaceString(L, 11, Str("say"), Str("しかも与えた損傷が全部治ってたし！鬼気迫る感じで突っ込んできたし！なんだったのあれ！"));
replaceString(L, 12, Str("say"), Str("エンプラ姉、これって…！"));
replaceString(L, 13, Str("say"), Str("レッドアクシズの艦隊と違う「なにか」がこの海域にいる……"));
replaceString(L, 14, Str("say"), Str("アストリア、味方の輸送艦隊は無事か？"));
replaceString(L, 15, Str("say"), Str("大丈夫よ。ミネアポリスたちもいたし、レッドアクシズの艦船ならともかく、量産艦程度なら一隻も通さないって！"));
replaceString(L, 16, Str("say"), Str("はいはい、強がるのもそこまでですよ。ここは私たちに任せて――"));
replaceString(L, 17, Str("say"), Str("…そうね。ちょっと厄介なことが起きたしね"));
replaceString(L, 18, Str("say"), Str("…？"));
replaceString(L, 19, Str("say"), Str("シカゴの隊より連絡よ。重桜の艦載機の機影が現れたって"));
lua_pop(L, 1);
}
void WNN003G(lua_State *L) {
lua_getfield(L, 2, Str("scripts"));
replaceString(L, 1, Str("say"), Str("使用舰队指令模块-舰队部署，可以部署潜艇编队进入NA海域。"));
lua_pop(L, 1);
}
