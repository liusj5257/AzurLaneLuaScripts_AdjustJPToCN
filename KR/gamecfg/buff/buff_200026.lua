return {
	desc_get = "",
	name = "2022布吕歇尔SP 史特拉塞定身+弹幕",
	init_effect = "",
	id = 200026,
	time = 0,
	picture = "",
	desc = "",
	stack = 1,
	color = "yellow",
	icon = 13890,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onAttach",
				"onUpdate"
			},
			arg_list = {
				buff_id = 200027,
				time = 1
			}
		}
	}
}
