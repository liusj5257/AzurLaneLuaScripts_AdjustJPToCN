return {
	time = 0,
	name = "2023 闪乱联动 地脉机关-缭 我方控制",
	init_effect = "",
	picture = "",
	desc = "",
	stack = 1,
	id = 200666,
	icon = 200666,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onAttach"
			},
			arg_list = {
				skill_id = 200666,
				target = "TargetSelf"
			}
		},
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onUpdate"
			},
			arg_list = {
				skill_id = 200666,
				time = 20,
				target = "TargetSelf"
			}
		}
	}
}
