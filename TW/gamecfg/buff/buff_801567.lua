return {
	time = 0,
	name = "",
	init_effect = "",
	id = 801567,
	picture = "",
	desc = "",
	stack = 1,
	color = "red",
	icon = 801560,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onStartGame"
			},
			arg_list = {
				skill_id = 801567,
				dungeonTypeList = {
					98,
					99
				}
			}
		},
		{
			type = "BattleBuffCount",
			trigger = {
				"onFire"
			},
			arg_list = {
				countTarget = 6,
				countType = 801560,
				index = {
					1
				}
			}
		},
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onBattleBuffCount"
			},
			arg_list = {
				skill_id = 801562,
				target = "TargetSelf",
				countType = 801560
			}
		}
	}
}
