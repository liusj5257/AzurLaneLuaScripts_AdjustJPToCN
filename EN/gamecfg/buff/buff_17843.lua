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
	desc_get = "鱼雷防御盾",
	name = "鱼雷防御盾",
	init_effect = "",
	id = 17843,
	time = 8,
	picture = "",
	desc = "鱼雷防御盾",
	stack = 1,
	color = "red",
	icon = 17840,
	last_effect = "",
	effect_list = {
		{
			id = 1,
			type = "BattleBuffShieldWall",
			trigger = {
				"onUpdate"
			},
			arg_list = {
				effect = "shield05",
				count = 3,
				do_when_hit = "intercept",
				bulletType = 3,
				cld_list = {
					{
						box = {
							3,
							3,
							7
						},
						offset = {
							0,
							0,
							-1.3
						}
					}
				},
				centerPosFun = function (slot0)
					return Vector3(4, -1.8, 0.5)
				end,
				rotationFun = function (slot0)
					return Vector3(0, 192, 0)
				end
			}
		}
	}
}
