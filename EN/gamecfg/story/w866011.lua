return {
	mode = 2,
	once = true,
	id = "W866011",
	skipTip = false,
	scripts = {
		{
			side = 2,
			dir = 1,
			say = "The ice floes have been melted!",
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
			dir = 1,
			say = "The ice floes will reform every 6 actions. Luckily, we can use the Weather Control Device to melt them again when that happens.",
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
