return {
	time = 0,
	name = "黑亚利桑那 扩散的哀伤",
	init_effect = "",
	picture = "",
	desc = "",
	stack = 1,
	id = 200218,
	icon = 200218,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onAttach",
				"onUpdate"
			},
			arg_list = {
				buff_id = 200219,
				time = 0.1
			}
		},
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onRemove"
			},
			arg_list = {
				buff_id = 200220
			}
		},
		{
			type = "BattleBuffCleanse",
			trigger = {
				"onAttach"
			},
			arg_list = {
				buff_id_list = {
					200220
				}
			}
		}
	}
}
