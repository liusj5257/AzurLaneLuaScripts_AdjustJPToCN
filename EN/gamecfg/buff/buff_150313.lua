return {
	name = "",
	init_effect = "jinengchufablue",
	id = 150313,
	time = 0,
	picture = "",
	desc = "提高航速",
	stack = 1,
	color = "red",
	icon = 150313,
	last_effect = "",
	blink = {
		0,
		0.7,
		1,
		0.3,
		0.3
	},
	effect_list = {
		{
			type = "BattleBuffFixVelocity",
			trigger = {
				"onAttach"
			},
			arg_list = {
				add = 10,
				mul = 0
			}
		}
	}
}
