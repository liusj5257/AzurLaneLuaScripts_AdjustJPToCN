return {
	time = 0,
	name = "毛系V3 精神同步机制对敌方单位伤害倍率（增伤效果，通过TAG实现）",
	init_effect = "",
	picture = "",
	desc = "标记",
	stack = 1,
	id = 8925,
	icon = 8925,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffAddAttr",
			trigger = {
				"onAttach",
				"onRemove"
			},
			arg_list = {
				number = -0.3,
				attr = "DMG_TAG_EHC_MAOXI"
			}
		}
	}
}
