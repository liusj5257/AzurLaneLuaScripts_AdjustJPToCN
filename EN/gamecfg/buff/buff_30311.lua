return {
	{
		desc = "主炮每进行12次攻击，触发专属弹幕-那不勒斯I"
	},
	desc_get = "主炮每进行12次攻击，触发专属弹幕-那不勒斯I",
	name = "专属弹幕-那不勒斯I",
	init_effect = "",
	id = 30311,
	time = 0,
	picture = "",
	desc = "主炮每进行12次攻击，触发专属弹幕-那不勒斯I",
	stack = 1,
	color = "red",
	icon = 30310,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCount",
			trigger = {
				"onFire"
			},
			arg_list = {
				countTarget = 12,
				countType = 30311,
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
				skill_id = 30311,
				target = "TargetSelf",
				countType = 30311
			}
		},
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onBattleBuffCount"
			},
			arg_list = {
				skill_id = 30313,
				target = "TargetSelf",
				countType = 19840
			}
		}
	}
}
