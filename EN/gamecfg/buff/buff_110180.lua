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
	time = 0,
	name = "",
	init_effect = "",
	id = 110180,
	picture = "",
	desc = "",
	stack = 1,
	color = "red",
	icon = 110180,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onStartGame"
			},
			pop = {},
			arg_list = {
				buff_id = 110189,
				target = "TargetSelf"
			}
		},
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onStartGame"
			},
			arg_list = {
				skill_id = 110170
			}
		},
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onFleetAttrUpdate"
			},
			arg_list = {
				fleetAttrDelta = ">0",
				fleetAttr = "huohun=5",
				skill_id = 110182
			}
		},
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onAllInStrikeSteady"
			},
			arg_list = {
				buff_id = 110181,
				target = "TargetSelf"
			}
		},
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onAllInStrike"
			},
			arg_list = {
				skill_id = 110173
			}
		},
		{
			type = "BattleBuffCleanse",
			trigger = {
				"onAllInStrike"
			},
			arg_list = {
				buff_id_list = {
					110181
				}
			}
		}
	}
}
