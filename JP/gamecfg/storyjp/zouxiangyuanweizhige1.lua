return {
	fadeOut = 1.5,
	mode = 2,
	fadeType = 2,
	once = true,
	id = "ZOUXIANGYUANWEIZHIGE1",
	fadein = 1.5,
	scripts = {
		{
			mode = 1,
			stopbgm = true,
			asideType = 3,
			sequence = {
				{
					"現在　サディア主催・世界博覧会",
					1
				},
				{
					"……とは別のサディア某所。",
					2
				}
			},
			flashin = {
				delay = 1,
				dur = 1,
				black = true,
				alpha = {
					1,
					0
				}
			}
		},
		{
			say = "静寂に包まれる大広間。蝋燭の火のみが寂しげにほのかな光を放っている。",
			nameColor = "#A9F548FF",
			bgName = "bg_midgard_9",
			hidePaintObj = true,
			side = 2,
			bgmDelay = 1,
			bgm = "Theme-marcopolo",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			side = 2,
			nameColor = "#A9F548FF",
			bgName = "bg_midgard_9",
			hidePaintObj = true,
			say = "床に落とされた影は弱々しく、嵐の訪れに怯える小枝のように揺れ続けている。",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 9703010,
			nameColor = "#ffa500",
			hidePaintObj = true,
			say = "……兆しが現れた",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 5,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 9703010,
			nameColor = "#ffa500",
			hidePaintObj = true,
			say = "……陰る雲が開き",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 9703010,
			nameColor = "#ffa500",
			hidePaintObj = true,
			say = "……地を明るく照らす、聖なる光",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 5,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 9703010,
			nameColor = "#ffa500",
			hidePaintObj = true,
			say = "……大いなる存在がついに降り立つ",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 9703010,
			nameColor = "#ffa500",
			hidePaintObj = true,
			say = "……輝しき栄光に満ちた、かの写し身",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 5,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 9703010,
			nameColor = "#ffa500",
			hidePaintObj = true,
			say = "……そして………",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 699010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "そこまで！相変わらず意味がわからないけど",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			action = {
				{
					y = 30,
					type = "shake",
					delay = 0,
					dur = 0.2,
					x = 0,
					number = 2
				},
				{
					y = 45,
					type = "shake",
					delay = 0,
					dur = 0.15,
					x = 0,
					number = 2
				}
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 699010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "要するに、「大いなる存在」の化身とやらがついに現れるわけね？",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 699010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "よろしいっ！掴んだ情報が正しかったってことよ",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 6,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 699010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "おーほっほっほっほ！",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 699010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "このマルコ・ポーロ、もうどれだけ待ちわびたことか！",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 699010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "威光を広める偉業、そのための最後のピースがついに揃った！",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			effects = {
				{
					active = true,
					name = "speed"
				}
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 699010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "さあ、大いなる存在――ずばり「神」よ",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			effects = {
				{
					active = false,
					name = "speed"
				}
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 699010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "「全ての願いを叶えられる」のよね？",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 6,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 699010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "あははは！おーほっほっほっほ！",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			action = {
				{
					y = 0,
					type = "move",
					delay = 1.2,
					dur = 1,
					x = -2500
				}
			}
		},
		{
			side = 2,
			nameColor = "#A9F548FF",
			bgName = "bg_midgard_9",
			hidePaintObj = true,
			say = "大笑いをしながら、マルコ・ポーロは寂れた聖堂を後にした。",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			side = 2,
			nameColor = "#A9F548FF",
			bgName = "bg_midgard_9",
			hidePaintObj = true,
			say = "大きく開かれた扉から吹き込んだ風が、最後のろうそくの火を消した。",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 9703010,
			nameColor = "#ffa500",
			hidePaintObj = true,
			say = "……そして再び雲が陰り",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 3,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 9703010,
			nameColor = "#ffa500",
			hidePaintObj = true,
			say = "……世界は偽りの光に包まれる",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_midgard_9",
			dir = 1,
			actor = 9703010,
			nameColor = "#ffa500",
			hidePaintObj = true,
			say = "……それが「神」が作り出した、永遠なる虚偽の楽園――",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			stopbgm = true,
			mode = 1,
			effects = {
				{
					active = true,
					name = "heimutexiao1"
				}
			},
			sequence = {
				{
					"",
					1
				}
			}
		},
		{
			stopbgm = false,
			mode = 1,
			soundeffect = "event:/ui/dg-dutiao",
			bgmDelay = 1,
			bgm = "theme-clemenceau",
			effects = {
				{
					active = false,
					name = "heimutexiao1"
				}
			},
			sequence = {
				{
					"記録再生：審判廷との会談。レッドアクシズ成立前",
					2.5
				},
				{
					">>「甘いわねリシュリュー。上層部はこの程度で満足しないわ」",
					3
				},
				{
					">>「鉄血の侵攻――『再現』の一部は果たされるの」",
					3.5
				},
				{
					">>覚悟しています",
					4
				},
				{
					">>問題なのは――それがいつ、どこで、どうやって起きるか、です",
					4.5
				},
				{
					">>「さあね。とりあえず情報収集を強化するわ」",
					5
				}
			}
		},
		{
			mode = 1,
			soundeffect = "event:/ui/dg-dutiao",
			sequence = {
				{
					"記録再生：審判廷との会談。レッドアクシズ成立前",
					2.5
				},
				{
					">>ロイヤルの……上層部はどうでしょう？",
					3
				},
				{
					">>「『我らの時代に平和が訪れる』……って話？」",
					3.5
				},
				{
					">>やっぱり…ロイヤルと鉄血、上層部が最初から繋がってたとしたら…",
					4
				},
				{
					">>そんな展開は望ましくありませんね",
					4.5
				},
				{
					">>「でも裏付けは取れていないわ」",
					5
				},
				{
					">>「もしかしたら、ロイヤルは様子見しているだけかもね」",
					5.5
				},
				{
					">>でしたら、こちらから動かないと",
					6
				},
				{
					">>ロイヤル艦船の訪問団が滞在しています。まずは彼女たちから――",
					6.5
				}
			}
		},
		{
			blackBg = true,
			mode = 1,
			effects = {
				{
					active = true,
					name = "zouxiangyuanweizhige"
				}
			},
			sequence = {
				{
					"",
					1
				}
			}
		},
		{
			stopbgm = true,
			side = 2,
			bgName = "bg_firedust_5",
			dialogueBgAlpha = 0.6,
			bgmDelay = 2,
			bgm = "theme-vichy-church",
			nameColor = "#A9F548FF",
			hidePaintObj = true,
			say = "現在　自由アイリス主力艦隊",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			effects = {
				{
					active = false,
					name = "zouxiangyuanweizhige"
				},
				{
					interlayer = 1001,
					name = "yuanzhou_juqing01",
					active = true
				}
			}
		},
		{
			side = 2,
			nameColor = "#A9F548FF",
			bgName = "bg_firedust_5",
			hidePaintObj = true,
			dialogueBgAlpha = 0.6,
			say = "聖堂の封印後、アイリスに帰還中のリシュリューは夢を見ていた。",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 3,
			side = 2,
			bgName = "bg_firedust_5",
			dialogueBgAlpha = 0.6,
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "…………またこの夢……",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_firedust_5",
			dialogueBgAlpha = 0.6,
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "……ジャン・バール、そこにいますか？",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			nameColor = "#696969",
			side = 2,
			bgName = "bg_firedust_5",
			dialogueBgAlpha = 0.6,
			actor = 902020,
			actorName = "█ █ █ █ █",
			hidePaintObj = true,
			say = "▇▆▅■▎▃▌█緊急▇█▎■▄▆▋▂▁▅態█▊▇▊▇",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_firedust_5",
			dialogueBgAlpha = 0.6,
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "………あなた……は……",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_firedust_5",
			dialogueBgAlpha = 0.6,
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "マルセイエーズ……？！",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			action = {
				{
					y = 30,
					type = "shake",
					delay = 0,
					dur = 0.2,
					x = 0,
					number = 2
				},
				{
					y = 45,
					type = "shake",
					delay = 0,
					dur = 0.15,
					x = 0,
					number = 2
				}
			}
		},
		{
			nameColor = "#696969",
			side = 2,
			bgName = "bg_firedust_5",
			dialogueBgAlpha = 0.6,
			actor = 902020,
			actorName = "█ █ █ █ █",
			hidePaintObj = true,
			say = "█▊▇危険▅▁▂▋▄▊状█▌",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_firedust_5",
			dialogueBgAlpha = 0.6,
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "……危険な状況……？",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			nameColor = "#696969",
			side = 2,
			bgName = "bg_firedust_5",
			dialogueBgAlpha = 0.6,
			actor = 902020,
			actorName = "█ █ █ █ █",
			hidePaintObj = true,
			say = "█▆早く▇█",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			nameColor = "#696969",
			side = 2,
			bgName = "bg_firedust_5",
			dialogueBgAlpha = 0.6,
			actor = 902020,
			actorName = "█ █ █ █ █",
			hidePaintObj = true,
			say = "█▆リス█▎█",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			nameColor = "#696969",
			side = 2,
			bgName = "bg_firedust_5",
			dialogueBgAlpha = 0.6,
			actor = 902020,
			actorName = "█ █ █ █ █",
			hidePaintObj = true,
			say = "█▎█▎天使▅█▎█▎▌救い▅▎▌█",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			nameColor = "#696969",
			side = 2,
			bgName = "bg_firedust_5",
			dialogueBgAlpha = 0.6,
			actor = 902020,
			actorName = "█ █ █ █ █",
			hidePaintObj = true,
			say = "█▆助け▇█▂▁▅ださい█▎█",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			stopbgm = true,
			side = 2,
			actorName = "？？",
			bgName = "star_level_bg_1104",
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "リシュリュー枢機卿？",
			flashout = {
				dur = 1,
				alpha = {
					0,
					1
				}
			},
			flashin = {
				delay = 1,
				dur = 1,
				alpha = {
					1,
					0
				}
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			effects = {
				{
					active = false,
					name = "yuanzhou_juqing01"
				}
			}
		},
		{
			actorName = "？？",
			side = 2,
			bgName = "star_level_bg_1104",
			hidePaintObj = true,
			nameColor = "#92fc63",
			say = "リシュリュー枢機卿殿～～？",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			bgmDelay = 2,
			bgm = "theme-kerguelen",
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "大丈夫ですか？枢機卿殿？",
			flashin = {
				delay = 1,
				dur = 1,
				alpha = {
					1,
					0
				}
			},
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 3,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "……うん……頭がちょっと重くて……",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "すみません、つい寝入ってしまいました",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "大丈夫ですよ。それよりテリブル、何か用？",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "実は大事な報告があります",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "審判廷の……クレマンソー様からの連絡を頂きましてね",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "「機は熟した。そろそろアイリスの正統を取り戻す時だ」",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "……わかりました",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "あまり動じないご様子ですね",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 3,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "「聖座の冠」はアイリスの正統の象徴……しかし、象徴は象徴にすぎません",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "信ずる者たちからの信義があって初めて、己を正統たらしめるものになります",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 3,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "とはいえ、この連絡は無意味なものではありません",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "審判廷が冠の情報をこちらに伝えてきたことは、流れが変わっている証明でしょう",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "「聖座の冠」に通ずる鍵…はマルタにあります",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "そっちに向かいましょうか",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "それには及びません。枢機卿殿",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "聖堂の島での枢機卿様のご活躍により事情が変わりまして。「冠」の在り処に直行できますよ",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "そうなんですか？",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "セントヘレナ島です。審判廷は以前ロイヤルの許可のもと、とある秘密要塞を建設してましてね",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 3,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "「冠」はそこで軽巡洋艦マルセイエーズによって守られています",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "マルセイエーズ……？",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			action = {
				{
					y = 30,
					type = "shake",
					delay = 0,
					dur = 0.2,
					x = 0,
					number = 2
				}
			},
			action = {
				{
					y = 45,
					type = "shake",
					delay = 0,
					dur = 0.15,
					x = 0,
					number = 2
				}
			}
		},
		{
			expression = 3,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "はい。公の場にほとんど出てきませんが、審判廷の戦闘天使は「再現」の後からずっと「冠」を守っていたようです",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "テリブル、正直この手の話はあまり信じたくありませんが…",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 3,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "この数日見せ続けられた夢に、そのマルセイエーズが出てきました",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "黒い太陽の夢……ですか？",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			action = {
				{
					y = 30,
					type = "shake",
					delay = 0,
					dur = 0.2,
					x = 0,
					number = 2
				}
			},
			action = {
				{
					y = 45,
					type = "shake",
					delay = 0,
					dur = 0.15,
					x = 0,
					number = 2
				}
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "確かにそれは凶兆と捉えても仕方がありませんね…",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "テリブル。「冠」はともかく、マルセイエーズは放っておけません。私たちは――",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "（クレマンソー殿はこの展開を予想して連絡してきたのですね…）",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 801070,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "（あの要塞は常時電波封止状態でしたね――ふぅ。全く、私に勝るとも劣らない性悪な方です）",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_guild_blue",
			dir = 1,
			actor = 805010,
			nameColor = "#92fc63",
			hidePaintObj = true,
			say = "艦隊の針路を変えて、セントヘレナ島に向かいましょう",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			effects = {
				{
					active = true,
					name = "speed"
				}
			}
		}
	}
}
