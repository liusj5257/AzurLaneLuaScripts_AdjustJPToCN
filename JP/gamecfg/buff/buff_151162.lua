return {
	time = 0,
	name = "",
	init_effect = "",
	id = 151162,
	picture = "",
	desc = "主炮每进行8次攻击，触发弹幕",
	stack = 1,
	color = "red",
	icon = 151160,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCount",
			trigger = {
				"onFire"
			},
			arg_list = {
				countTarget = 8,
				countType = 151160,
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
				skill_id = 151161,
				target = "TargetSelf",
				countType = 151160
			}
		},
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onBattleBuffCount"
			},
			arg_list = {
				skill_id = 151162,
				target = "TargetSelf",
				countType = 151160
			}
		}
	}
}
