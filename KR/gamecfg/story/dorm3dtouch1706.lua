return {
	dialogbox = 2,
	alpha = 0,
	hideSkip = true,
	hideAuto = true,
	hideRecord = true,
	mode = 2,
	id = "DORM3DTOUCH1706",
	placeholder = {
		"dorm3d"
	},
	scripts = {
		{
			voice = "event:/dorm/Tianlangxing_dorm3d_tone1/drom3d_sirus_ik_gift1_tone2",
			actorName = 20220,
			nameColor = "#FFFFFF",
			say = "후후후, 당연히 자랑스러운 {dorm3d}을 위해 크리스마스 선물을 준비했답니다……",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			dispatcher = {
				name = STORY_EVENT.TEST,
				data = {
					op_list = {
						{
							param = "Play",
							name = "TLX_TD_shafa_shou",
							time = 0,
							type = "action",
							skip = true
						},
						{
							param = "Play",
							name = "Face_weixiao",
							time = 0,
							type = "action",
							skip = true
						},
						{
							skip = false,
							time = 2,
							type = "wait"
						}
					}
				},
				callbackData = {
					hideUI = false,
					name = STORY_EVENT.TEST_DONE
				}
			}
		}
	}
}
