return {
	time = 30,
	name = "2023英系活动 审判机甲-战争 D3 召唤小怪",
	init_effect = "",
	id = 200341,
	picture = "",
	desc = "",
	stack = 1,
	color = "yellow",
	icon = 200341,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onAttach"
			},
			arg_list = {
				skill_id = 200341,
				target = "TargetSelf"
			}
		}
	}
}
