return {
	desc_get = "",
	name = "",
	init_effect = "",
	id = 17417,
	time = 0,
	picture = "",
	desc = "",
	stack = 1,
	color = "yellow",
	icon = 17410,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onAttach"
			},
			arg_list = {
				buff_id = 17428,
				minTargetNumber = 1,
				target = "TargetSelf",
				check_target = {
					"TargetSelf",
					"TargetShipTag"
				},
				ship_tag_list = {
					"Flasher_debuff"
				}
			}
		},
		{
			type = "BattleBuffCleanse",
			trigger = {
				"onAttach"
			},
			arg_list = {
				buff_id_list = {
					17417
				}
			}
		}
	}
}
