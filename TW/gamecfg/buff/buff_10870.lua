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
	desc_get = "在队伍中(存活)时，队伍内所有驱逐、轻巡的雷击和装填属性提高5.0%（满级20.0%）",
	name = "华之二水战",
	init_effect = "",
	id = 10870,
	time = 0,
	picture = "",
	desc = "在队伍中(存活)时，队伍内所有驱逐、轻巡的雷击和装填属性提高5.0%（满级20.0%）",
	stack = 1,
	color = "yellow",
	icon = 10870,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onStartGame"
			},
			arg_list = {
				skill_id = 10870
			}
		},
		{
			type = "BattleBuffField",
			trigger = {},
			arg_list = {
				buff_id = 10871,
				shipType = 1,
				target = "TargetPlayerByType"
			}
		},
		{
			type = "BattleBuffField",
			trigger = {},
			arg_list = {
				buff_id = 10871,
				shipType = 2,
				target = "TargetPlayerByType"
			}
		},
		{
			type = "BattleBuffField",
			trigger = {},
			arg_list = {
				buff_id = 10871,
				shipType = 20,
				target = "TargetPlayerByType"
			}
		},
		{
			type = "BattleBuffField",
			trigger = {},
			arg_list = {
				buff_id = 10871,
				shipType = 21,
				target = "TargetPlayerByType"
			}
		}
	}
}
