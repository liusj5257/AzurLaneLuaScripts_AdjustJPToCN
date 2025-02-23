slot0 = {
	"얻은 함선을 <color=#ffde38>잠금</color>해두는 걸 잊지 않도록 해.",
	"메인 화면으로 돌아가자."
}

return {
	id = "S003",
	events = {
		{
			alpha = 0.359,
			waitScene = "NewShipLayer",
			ui = {
				pathIndex = -1,
				path = "/OverlayCamera/Overlay/UIMain/NewShipUI(Clone)/shake_panel/click",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -134,
					posX = 209
				}
			}
		},
		{
			alpha = 0.214,
			style = {
				mode = 1,
				dir = -1,
				posY = 250,
				posX = 450,
				text = slot0[1]
			},
			ui = {
				pathIndex = -1,
				path = "OverlayCamera/Overlay/UIMain/Msgbox(Clone)/window/button_container/custom_button_1(Clone)",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -27.53,
					posX = 40.15
				}
			}
		},
		{
			alpha = 0.446,
			style = {
				mode = 2,
				dir = -1,
				posY = 213.63,
				posX = -194.88,
				text = slot0[2]
			},
			ui = {
				pathIndex = -1,
				path = "/OverlayCamera/Overlay/UIMain/blur_panel/adapt/top/back_btn",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -40,
					posX = 20
				}
			}
		}
	}
}
