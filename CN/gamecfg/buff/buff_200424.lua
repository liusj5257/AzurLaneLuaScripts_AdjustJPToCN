return {
	init_effect = "",
	name = "2023俾斯麦Z活动 TS2女灶神meta 召唤小怪 随机列表",
	time = 1,
	picture = "",
	desc = "",
	stack = 1,
	id = 200424,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCleanse",
			trigger = {
				"onAttach"
			},
			arg_list = {
				target = "TargetSelf",
				buff_id_list = {
					200422,
					200423
				}
			}
		},
		{
			type = "BattleBuffCastSkillRandom",
			trigger = {
				"onAttach"
			},
			arg_list = {
				target = "TargetSelf",
				skill_id_list = {
					200421,
					200422,
					200423
				},
				range = {
					{
						0,
						0.33
					},
					{
						0.33,
						0.67
					},
					{
						0.67,
						1
					}
				}
			}
		}
	}
}
