return {
	id = "WorldG003",
	events = {
		{
			alpha = 0,
			code = {
				"playStory"
			},
			stories = {
				"WG001"
			}
		},
		{
			alpha = 0.3,
			code = {
				"action"
			},
			style = {
				text = "임무 종류 갱신 완료. 확인해 주세요.",
				mode = 2,
				dir = -1,
				posY = 191.87,
				posX = 9.1
			},
			ui = {
				pathIndex = -1,
				eventPath = "OverlayCamera/Overlay/UIMain/WorldPortUI(Clone)/top/bottom_stage/btn/operation",
				path = "OverlayCamera/Overlay/UIMain/WorldPortUI(Clone)/top/bottom_stage/btn/operation",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -23.85,
					posX = 131.37
				}
			}
		},
		{
			alpha = 0.4,
			code = {
				"accept"
			},
			style = {
				text = "접수 버튼을 터치하여 임무를 접수하세요.",
				mode = 2,
				dir = -1,
				posY = 191.87,
				posX = 9.1
			},
			ui = {
				pathIndex = -1,
				eventPath = "OverlayCamera/Overlay/UIMain/WorldPortUI(Clone)/tasks/frame/main/scrollrect/content/task_tpl/inactive",
				path = "OverlayCamera/Overlay/UIMain/WorldPortUI(Clone)/tasks/frame/main/scrollrect/content/task_tpl/inactive",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -67.23,
					posX = 57.59
				}
			}
		},
		{
			alpha = 0,
			code = {
				"playStory3"
			},
			stories = {
				"WG002"
			}
		},
		{
			alpha = 0.4,
			code = {
				"close"
			},
			ui = {
				pathIndex = -1,
				eventPath = "OverlayCamera/Overlay/UIMain/WorldPortUI(Clone)/top/title/back_button",
				path = "OverlayCamera/Overlay/UIMain/WorldPortUI(Clone)/top/title/back_button",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -48,
					posX = 62.5
				}
			}
		}
	}
}
