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
	name = "自由随性的骑士",
	init_effect = "",
	id = 800790,
	time = 0,
	picture = "",
	desc = "",
	stack = 1,
	color = "red",
	icon = 800790,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onSubmarineRaid"
			},
			arg_list = {
				buff_id = 800791,
				minTargetNumber = 2,
				isBuffStackByCheckTarget = true,
				check_target = {
					"TargetShipTypeFriendly"
				},
				ship_type_list = {
					8
				}
			}
		},
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onSubmarineFloat"
			},
			arg_list = {
				skill_id = 800791,
				target = "TargetSelf"
			}
		}
	}
}
