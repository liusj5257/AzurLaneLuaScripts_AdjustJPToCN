return {
	id = "WEIXIANFAMINGPOJINZHONGGUANQIA13-3",
	mode = 2,
	fadeOut = 1.5,
	scripts = {
		{
			side = 2,
			nameColor = "#A9F548FF",
			bgName = "star_level_bg_504",
			bgm = "story-richang-refreshing",
			say = "在敌人的重围下，撤退之路并非一帆风顺。",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			portrait = 11100060,
			side = 2,
			bgName = "star_level_bg_504",
			hidePainting = true,
			dir = 1,
			actor = 11100060,
			nameColor = "#A9F548FF",
			say = "这，这些家伙，是从哪里来的？",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			portrait = 11100050,
			side = 2,
			bgName = "star_level_bg_504",
			hidePainting = true,
			dir = 1,
			actor = 11100050,
			nameColor = "#A9F548FF",
			say = "请，请不要靠近我……！",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			actor = 11100020,
			side = 2,
			bgName = "star_level_bg_504",
			nameColor = "#A9F548FF",
			dir = 1,
			say = "什么？这些家伙怎么会从水面下冒出来？！",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			actor = 202330,
			side = 2,
			bgName = "star_level_bg_504",
			hidePaintObj = true,
			dir = 1,
			nameColor = "#A9F548FF",
			say = "不好……贝法，敌人似乎正试图抓捕俘虏！",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			side = 2,
			nameColor = "#A9F548FF",
			bgName = "star_level_bg_504",
			soundeffect = "event:/battle/boom2",
			say = "轰——————！",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			flashN = {
				color = {
					1,
					1,
					1,
					1
				},
				alpha = {
					{
						0,
						1,
						0.2,
						0
					},
					{
						1,
						0,
						0.2,
						0.2
					},
					{
						0,
						1,
						0.2,
						0.4
					},
					{
						1,
						0,
						0.2,
						0.6
					}
				}
			},
			dialogShake = {
				speed = 0.09,
				x = 8.5,
				number = 2
			}
		},
		{
			actor = 202120,
			side = 2,
			bgName = "star_level_bg_504",
			nameColor = "#A9F548FF",
			dir = 1,
			say = "不好，来不及了！",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			expression = 10,
			side = 2,
			bgName = "star_level_bg_504",
			dir = 1,
			actor = 11100030,
			nameColor = "#A9F548FF",
			say = "春菜！古手川！",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
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
			side = 2,
			nameColor = "#A9F548FF",
			bgName = "star_level_bg_504",
			say = "转瞬间，西连寺春菜与古手川唯就在复制体的裹挟下，从战场上消失了。",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		}
	}
}
