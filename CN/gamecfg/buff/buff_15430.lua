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
	desc_get = "",
	name = "",
	init_effect = "",
	id = 15430,
	time = 0,
	picture = "",
	desc = "",
	stack = 1,
	color = "red",
	icon = 15430,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onStartGame"
			},
			arg_list = {
				buff_id = 15431,
				target = "TargetSelf"
			}
		},
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onStartGame"
			},
			arg_list = {
				buff_id = 15433
			}
		},
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onStartGame"
			},
			arg_list = {
				buff_id = 15435
			}
		},
		{
			type = "BattleBuffAddAttrBloodrage",
			trigger = {
				"onAttach",
				"onHPRatioUpdate"
			},
			arg_list = {
				threshold = 1,
				value = -10,
				attr = "damageRatioBullet"
			}
		},
		{
			type = "BattleBuffAddAttrBloodrage",
			trigger = {
				"onAttach",
				"onHPRatioUpdate"
			},
			arg_list = {
				threshold = 1,
				value = -9,
				attr = "injureRatio"
			}
		}
	}
}
