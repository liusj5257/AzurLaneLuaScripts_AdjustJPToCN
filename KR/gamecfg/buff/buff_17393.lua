return {
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	time = 3,
	name = "",
	init_effect = "",
	picture = "",
	desc = "概率触发器",
	stack = 1,
	id = 17393,
	icon = 17390,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onAttach"
			},
			arg_list = {
				skill_id = 17391,
				target = "TargetSelf"
			}
		}
	}
}
