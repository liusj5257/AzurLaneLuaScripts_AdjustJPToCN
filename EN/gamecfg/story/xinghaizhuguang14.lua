return {
	id = "XINGHAIZHUGUANG14",
	mode = 2,
	fadeOut = 1.5,
	scripts = {
		{
			side = 2,
			bgName = "bg_zhuguang_3",
			soundeffect = "event:/battle/boom2",
			bgm = "theme-threat-typev",
			nameColor = "#A9F548FF",
			hidePaintObj = true,
			say = "KABOOOM!",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			flashout = {
				dur = 1,
				black = true,
				alpha = {
					0,
					1
				}
			},
			flashin = {
				dur = 1,
				black = true,
				delay = 1,
				alpha = {
					1,
					0
				}
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
			side = 2,
			bgName = "bg_zhuguang_3",
			factiontag = "Rigging Design Department",
			dir = 1,
			actor = 101510,
			nameColor = "#A9F548FF",
			say = "Princeton, you okay?",
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
			bgName = "bg_zhuguang_3",
			factiontag = "Rigging Design Department",
			dir = 1,
			actor = 107230,
			nameColor = "#A9F548FF",
			say = "Yeah! Thanks for the cover!",
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
			side = 2,
			bgName = "bg_zhuguang_3",
			factiontag = "Rigging Design Department",
			dir = 1,
			actor = 107230,
			nameColor = "#A9F548FF",
			say = "But with these numbers... Plus, they show up out of nowhere and won't get off our tails.",
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
			bgName = "bg_zhuguang_3",
			factiontag = "Rigging Design Department",
			dir = 1,
			actor = 101510,
			nameColor = "#A9F548FF",
			say = "It's okay. I'll deal with them somehow.",
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
			side = 2,
			bgName = "bg_zhuguang_3",
			factiontag = "Rigging Design Department",
			dir = 1,
			actor = 101510,
			nameColor = "#A9F548FF",
			say = "I'll keep you safe.",
			painting = {
				alpha = 0.3,
				time = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		}
	}
}
