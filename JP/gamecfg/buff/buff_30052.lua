return {
	{},
	time = 0,
	name = "专属弹幕",
	init_effect = "",
	id = 30052,
	picture = "",
	desc = "主炮每进行10次攻击，触发专属弹幕-舒尔茨II",
	stack = 1,
	color = "red",
	icon = 30040,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCount",
			trigger = {
				"onFire"
			},
			arg_list = {
				countTarget = 10,
				countType = 30050,
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
				skill_id = 30053,
				target = "TargetSelf",
				countType = 30050
			}
		}
	}
}
