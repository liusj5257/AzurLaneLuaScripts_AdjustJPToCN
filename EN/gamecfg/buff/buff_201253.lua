return {
	time = 0.1,
	name = "2025拉斐尔活动 新EX模式我方判定更改",
	init_effect = "",
	picture = "",
	desc = "",
	stack = 1,
	id = 201253,
	icon = 201233,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onAttach"
			},
			arg_list = {
				fleetPos = "Leader",
				buff_id = 201265,
				target = "TargetFleetIndex"
			}
		},
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onAttach"
			},
			arg_list = {
				fleetPos = "Rear",
				buff_id = 201255,
				target = "TargetFleetIndex"
			}
		}
	}
}
