return {
	time = 10,
	name = "",
	init_effect = "",
	picture = "",
	desc = "标记",
	stack = 1,
	id = 16592,
	icon = 16592,
	last_effect = "Darkness",
	effect_list = {
		{
			type = "BattleBuffAddTag",
			trigger = {
				"onAttach",
				"onRemove"
			},
			arg_list = {
				tag = "Kursk-Mark2"
			}
		}
	}
}
