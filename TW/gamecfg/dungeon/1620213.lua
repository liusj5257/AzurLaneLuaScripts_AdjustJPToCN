return {
	map_id = 10001,
	id = 1620213,
	stages = {
		{
			stageIndex = 1,
			failCondition = 1,
			timeCount = 180,
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
					triggerType = 1,
					waveIndex = 202,
					preWaves = {},
					triggerParams = {
						timeout = 18
					}
				},
				{
					triggerType = 1,
					waveIndex = 203,
					preWaves = {},
					triggerParams = {
						timeout = 33
					}
				},
				{
					triggerType = 1,
					waveIndex = 204,
					preWaves = {},
					triggerParams = {
						timeout = 44
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
							monsterTemplateID = 15600001,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								10,
								0,
								75
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 15600102,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								0,
								0,
								55
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 15600001,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								10,
								0,
								35
							},
							buffList = {
								8001,
								8007
							}
						}
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 301,
					conditionType = 1,
					preWaves = {
						100
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 15600007,
							delay = 0,
							moveCast = true,
							corrdinate = {
								5,
								0,
								85
							},
							buffList = {
								8001
							},
							phase = {
								{
									switchType = 1,
									dive = "STATE_RAID",
									switchTo = 1,
									index = 0,
									switchParam = 10,
									setAI = 20007
								},
								{
									switchType = 1,
									dive = "STATE_RAID",
									index = 1,
									switchParam = 10,
									setAI = 20009
								}
							}
						},
						{
							monsterTemplateID = 15600007,
							delay = 0,
							moveCast = true,
							corrdinate = {
								5,
								0,
								45
							},
							buffList = {
								8001
							},
							phase = {
								{
									switchType = 1,
									dive = "STATE_RAID",
									switchTo = 1,
									index = 0,
									switchParam = 10,
									setAI = 20007
								},
								{
									switchType = 1,
									dive = "STATE_RAID",
									index = 1,
									switchParam = 10,
									setAI = 20009
								}
							}
						}
					}
				},
				{
					triggerType = 0,
					waveIndex = 102,
					conditionType = 1,
					preWaves = {
						101,
						202
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 15600103,
							score = 0,
							delay = 0,
							moveCast = true,
							reinforceDelay = 6,
							corrdinate = {
								-5,
								0,
								55
							},
							buffList = {
								8001,
								8007
							}
						}
					},
					reinforcement = {
						{
							monsterTemplateID = 15600002,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								10,
								0,
								75
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 15600002,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								10,
								0,
								35
							},
							buffList = {
								8001,
								8007
							}
						}
					}
				},
				{
					triggerType = 5,
					waveIndex = 400,
					preWaves = {
						102,
						101
					},
					triggerParams = {
						bgm = "battle-hightech"
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 104,
					conditionType = 0,
					preWaves = {
						500,
						102,
						101
					},
					triggerParam = {},
					spawn = {
						{
							score = 0,
							reinforceDelay = 6,
							delay = 0,
							moveCast = true,
							monsterTemplateID = 15600303,
							corrdinate = {
								-15,
								0,
								55
							},
							bossData = {
								hpBarNum = 60,
								icon = "sairenqianting"
							},
							buffList = {
								8671
							},
							phase = {
								{
									switchParam = 1,
									dive = "STATE_RAID",
									switchTo = 2,
									index = 0,
									switchType = 1,
									setAI = 10001
								},
								{
									switchParam = 3,
									switchTo = 3,
									index = 2,
									switchType = 1,
									addWeapon = {
										870206
									},
									removeWeapon = {}
								},
								{
									switchParam = 2,
									switchTo = 4,
									index = 3,
									switchType = 1,
									addWeapon = {
										870207,
										870208
									},
									removeWeapon = {
										870206
									}
								},
								{
									switchParam = 5,
									switchTo = 5,
									index = 4,
									switchType = 1,
									addWeapon = {
										870205
									},
									removeWeapon = {
										870207,
										870208
									}
								},
								{
									switchParam = 0.5,
									dive = "STATE_FLOAT",
									switchTo = 6,
									index = 5,
									switchType = 1,
									setAI = 10001
								},
								{
									switchParam = 1.5,
									switchTo = 7,
									index = 6,
									switchType = 1,
									addWeapon = {
										870201
									},
									removeWeapon = {
										870205
									}
								},
								{
									switchParam = 3,
									switchTo = 8,
									index = 7,
									switchType = 1,
									addWeapon = {
										870202
									},
									removeWeapon = {}
								},
								{
									switchParam = 6,
									switchTo = 9,
									index = 8,
									switchType = 1,
									addWeapon = {
										870203
									},
									removeWeapon = {}
								},
								{
									switchParam = 3,
									switchTo = 10,
									index = 9,
									switchType = 1,
									addWeapon = {
										870204,
										870205
									},
									removeWeapon = {
										870201,
										870202,
										870203
									}
								},
								{
									switchParam = 0.5,
									switchTo = 6,
									index = 10,
									switchType = 1,
									addWeapon = {},
									removeWeapon = {
										870204,
										870205
									}
								}
							}
						}
					},
					reinforcement = {
						{
							monsterTemplateID = 15600002,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								0,
								0,
								75
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 15600007,
							delay = 0,
							moveCast = true,
							corrdinate = {
								5,
								0,
								65
							},
							buffList = {
								8001
							},
							phase = {
								{
									switchType = 1,
									dive = "STATE_RAID",
									index = 0,
									switchParam = 99,
									setAI = 20009
								}
							}
						},
						{
							monsterTemplateID = 15600002,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								0,
								0,
								35
							},
							buffList = {
								8001,
								8007
							}
						}
					}
				},
				{
					triggerType = 8,
					waveIndex = 900,
					preWaves = {
						104
					},
					triggerParams = {}
				}
			}
		}
	},
	fleet_prefab = {}
}
