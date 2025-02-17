return {
	fadeOut = 1.5,
	mode = 2,
	fadeType = 2,
	once = true,
	id = "FUXINGDEZANMEISHI33",
	fadein = 1.5,
	scripts = {
		{
			bgName = "bg_story_nepu2",
			side = 2,
			dir = 1,
			bgmDelay = 2,
			bgm = "level02",
			stopbgm = true,
			hidePaintObj = true,
			say = "数日前 北方联合某处",
			flashout = {
				dur = 1,
				black = true,
				alpha = {
					0,
					1
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
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			expression = 3,
			side = 2,
			bgName = "bg_story_nepu2",
			dir = 1,
			actor = 702020,
			nameColor = "#a9f548",
			hidePaintObj = true,
			say = "哟~好久不见啊，神速。",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_story_nepu2",
			dir = 1,
			actor = 701060,
			nameColor = "#a9f548",
			hidePaintObj = true,
			say = "哇啊，是水星纪念，你怎么突然来这里了？！",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
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
			expression = 6,
			side = 2,
			bgName = "bg_story_nepu2",
			dir = 1,
			actor = 702020,
			nameColor = "#a9f548",
			hidePaintObj = true,
			say = "这么长时间没见，当然是来看看你嘛~",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_story_nepu2",
			dir = 1,
			actor = 701060,
			nameColor = "#a9f548",
			hidePaintObj = true,
			say = "真的么~！这里的同志不多又没什么敌人，每天训练我都快闷死了。",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			expression = 3,
			side = 2,
			bgName = "bg_story_nepu2",
			dir = 1,
			actor = 701060,
			nameColor = "#a9f548",
			hidePaintObj = true,
			say = "正好你刚来还不熟，我带你参观一下这里好了，走吧走吧~！",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			expression = 1,
			side = 2,
			bgName = "bg_story_nepu2",
			dir = 1,
			actor = 702020,
			nameColor = "#a9f548",
			hidePaintObj = true,
			say = "等等等等……我刚长途航行过来，现在就饶了我吧……",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			},
			action = {
				{
					y = 0,
					type = "shake",
					delay = 0,
					dur = 0.4,
					x = 30,
					number = 2
				}
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_story_nepu2",
			dir = 1,
			actor = 701060,
			nameColor = "#a9f548",
			hidePaintObj = true,
			say = "哇哦，对啊！你稍等，我这就联系后勤！",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
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
			bgName = "bg_story_nepu2",
			dir = 1,
			actor = 702020,
			nameColor = "#a9f548",
			hidePaintObj = true,
			say = "也不用那么麻烦，给我一张床就行，明天我就要启程前往下一站了~",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			expression = 2,
			side = 2,
			bgName = "bg_story_nepu2",
			dir = 1,
			actor = 701060,
			nameColor = "#a9f548",
			hidePaintObj = true,
			say = "哎……？这么着急么，那你这次来究竟是……？",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_story_nepu2",
			dir = 1,
			actor = 702020,
			nameColor = "#a9f548",
			hidePaintObj = true,
			say = "有一个来自{namecode:529:苏维埃同盟}的绝密命令，必须要用这种绝对安全的方式向你传达哦。",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			side = 2,
			bgName = "bg_story_nepu2",
			dir = 1,
			actor = 702020,
			nameColor = "#a9f548",
			hidePaintObj = true,
			say = "不用担心~只是一次简单的信使工作而已。详细内容就在这个文件袋里，如果有问题的话等我先睡一会儿再说…………",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			expression = 4,
			side = 2,
			bgName = "bg_story_nepu2",
			dir = 1,
			blackBg = true,
			actor = 702020,
			nameColor = "#a9f548",
			hidePaintObj = true,
			say = "很快……你这边也要热闹起来了哦…………zZZ",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		}
	}
}
