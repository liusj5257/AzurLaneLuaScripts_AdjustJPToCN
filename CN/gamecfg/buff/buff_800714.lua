return {
	time = 0,
	name = "标记",
	init_effect = "",
	picture = "",
	desc = "标记",
	stack = 1,
	id = 800714,
	icon = 800710,
	last_effect = "jihuo",
	effect_list = {
		{
			type = "BattleBuffAddTag",
			trigger = {
				"onAttach",
				"onRemove"
			},
			arg_list = {
				tag = "QEM_highlight"
			}
		}
	}
}
