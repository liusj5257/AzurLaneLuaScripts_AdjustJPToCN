return {
	id = "HAIDAOSUIJI8-2",
	mode = 2,
	scripts = {
		{
			side = 2,
			nameColor = "#A9F548FF",
			say = "放入鸟巢当中的粗糙木料发出耀眼夺目的光芒，片刻之后——",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			side = 2,
			nameColor = "#A9F548FF",
			say = "消失了。放入鸟巢里的木材已消失得无影无踪……",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			}
		},
		{
			side = 2,
			nameColor = "#A9F548FF",
			say = "……要不要再试一次？",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			options = {
				{
					content = "放入10粗糙木料",
					flag = 1
				},
				{
					content = "放入1宝石原矿",
					flag = 2
				},
				{
					content = "转身离开",
					flag = 0
				}
			}
		}
	}
}
