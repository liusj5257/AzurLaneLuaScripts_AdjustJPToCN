return {
	id = "tb_19",
	isWorld = false,
	events = {
		{
			alpha = 0,
			style = {
				text = "遊戲中已取得的道具會放在背包內",
				mode = 2,
				char = 1,
				posY = -325.44,
				dir = -1,
				posX = -85.01,
				uiset = {
					{
						pathIndex = -1,
						lineMode = 1,
						path = "OverlayCamera/Overlay/UIMain/blur_panel/bottom/left/btns/bag"
					}
				}
			}
		},
		{
			alpha = 0,
			style = {
				text = "點擊「背包」按鈕",
				mode = 2,
				char = 1,
				posY = -298.4,
				dir = 1,
				posX = -427.2,
				uiset = {
					{
						pathIndex = -1,
						lineMode = 1,
						path = "OverlayCamera/Overlay/UIMain/blur_panel/bottom/left/btns/bag"
					}
				}
			},
			ui = {
				pathIndex = -1,
				path = "OverlayCamera/Overlay/UIMain/blur_panel/bottom/left/btns/bag"
			}
		},
		{
			alpha = 0,
			style = {
				text = "獲得和購買的道具時屬性加成會立刻生效，不需要在背包中使用道具哦。",
				mode = 2,
				char = 1,
				posY = -200.1,
				dir = 1,
				posX = 55.66,
				uiset = {}
			}
		}
	}
}
