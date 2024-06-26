return {
	map_id = 10001,
	id = 1645001,
	stages = {
		{
			stageIndex = 1,
			failCondition = 1,
			timeCount = 300,
			backGroundStageID = 1,
			passCondition = 1,
			totalArea = {
				-80,
				20,
				90,
				70
			},
			playerArea = {
				-80,
				20,
				45,
				68
			},
			enemyArea = {},
			fleetCorrdinate = {
				-80,
				0,
				75
			},
			waves = {
				{
					triggerType = 1,
					waveIndex = 100,
					preWaves = {},
					triggerParams = {
						timeout = 0.5
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 101,
					conditionType = 1,
					preWaves = {
						100
					},
					triggerParam = {},
					spawn = {
						{
							score = 0,
							monsterTemplateID = 15805001,
							delay = 0,
							moveCast = true,
							corrdinate = {
								-10,
								0,
								55
							},
							buffList = {},
							bossData = {
								hpBarNum = 100,
								icon = "unknown5"
							},
							phase = {
								{
									dive = "STATE_RAID",
									switchParam = 1.5,
									index = 0,
									switchType = 1,
									switchTo = 11,
									setAI = 70086,
									addWeapon = {},
									removeWeapon = {}
								},
								{
									switchParam = 0.5,
									dive = "STATE_FLOAT",
									index = 11,
									switchType = 1,
									switchTo = 1,
									addWeapon = {},
									removeWeapon = {}
								},
								{
									switchParam = 16,
									switchTo = 2,
									index = 1,
									switchType = 1,
									setAI = 70086,
									addWeapon = {
										892801,
										892802
									},
									removeWeapon = {}
								},
								{
									switchParam = 1,
									switchTo = 3,
									index = 2,
									switchType = 1,
									addWeapon = {
										892803
									},
									removeWeapon = {
										892801,
										892802
									}
								},
								{
									switchParam = 7,
									switchTo = 88,
									index = 3,
									switchType = 1,
									setAI = 10001,
									addWeapon = {},
									removeWeapon = {
										892803
									}
								},
								{
									switchParam = 1,
									switchTo = 4,
									index = 88,
									switchType = 1,
									setAI = 70086,
									addWeapon = {},
									removeWeapon = {}
								},
								{
									switchType = 1,
									switchParam = 3,
									index = 4,
									switchTo = 5,
									setAI = 20006,
									addBuff = {
										9722
									},
									addWeapon = {
										892812
									},
									removeWeapon = {}
								},
								{
									switchParam = 1,
									switchTo = 6,
									index = 5,
									switchType = 1,
									addWeapon = {},
									removeWeapon = {}
								},
								{
									switchParam = 1,
									switchTo = 99,
									index = 6,
									switchType = 1,
									addWeapon = {
										892813
									},
									removeWeapon = {
										892812
									}
								},
								{
									switchParam = 10,
									switchTo = 7,
									index = 99,
									switchType = 1,
									setAI = 10001,
									addWeapon = {},
									removeWeapon = {}
								},
								{
									switchParam = 2,
									switchTo = 77,
									index = 7,
									switchType = 1,
									setAI = 70091,
									addWeapon = {},
									removeWeapon = {
										892813
									}
								},
								{
									switchParam = 1,
									switchTo = 8,
									index = 77,
									switchType = 1,
									addBuff = {
										8831
									},
									addWeapon = {}
								},
								{
									switchType = 1,
									switchParam = 3,
									index = 8,
									switchTo = 9,
									addBuff = {
										9723
									},
									addWeapon = {
										892816
									},
									removeWeapon = {
										892813
									}
								},
								{
									switchParam = 15,
									switchTo = 10,
									index = 9,
									switchType = 1,
									setAI = 30000,
									addWeapon = {},
									removeWeapon = {
										892816
									}
								},
								{
									switchType = 1,
									switchParam = 1,
									index = 10,
									switchTo = 1,
									setAI = 30000,
									addBuff = {
										8831
									},
									addWeapon = {},
									removeWeapon = {}
								}
							}
						}
					}
				},
				{
					triggerType = 8,
					waveIndex = 900,
					preWaves = {
						101
					},
					triggerParams = {}
				}
			}
		}
	},
	fleet_prefab = {}
}
