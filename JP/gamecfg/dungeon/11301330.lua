return {
	map_id = 10001,
	id = 11301330,
	stages = {
		{
			stageIndex = 1,
			failCondition = 1,
			timeCount = 180,
			backGroundStageID = 1,
			passCondition = 1,
			totalArea = {
				-70,
				20,
				90,
				70
			},
			playerArea = {
				-70,
				20,
				37,
				68
			},
			enemyArea = {},
			mainUnitPosition = {
				{
					Vector3(-105, 0, 58),
					Vector3(-105, 0, 78),
					Vector3(-105, 0, 38)
				},
				[-1] = {
					Vector3(15, 0, 58),
					Vector3(15, 0, 78),
					Vector3(15, 0, 38)
				}
			},
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
						timeout = 15
					}
				},
				{
					triggerType = 1,
					waveIndex = 203,
					preWaves = {},
					triggerParams = {
						timeout = 30
					}
				},
				{
					triggerType = 1,
					waveIndex = 204,
					preWaves = {},
					triggerParams = {
						timeout = 50
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
							monsterTemplateID = 113002,
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
							monsterTemplateID = 113021,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								-15,
								0,
								55
							},
							buffList = {
								8050,
								8051
							}
						},
						{
							monsterTemplateID = 113005,
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
							monsterTemplateID = 113002,
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
					},
					airFighter = {
						{
							interval = 3,
							onceNumber = 6,
							formation = 10008,
							templateID = 1340030,
							delay = 0,
							totalNumber = 18,
							weaponID = {
								1340010,
								1340011
							},
							attr = {
								airPower = 40,
								maxHP = 768,
								attackRating = 23
							}
						},
						{
							interval = 3,
							onceNumber = 2,
							formation = 10007,
							templateID = 1340301,
							delay = 3,
							totalNumber = 6,
							weaponID = {
								1340301
							},
							attr = {
								airPower = 40,
								maxHP = 1250,
								attackRating = 23
							}
						}
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 102,
					conditionType = 1,
					preWaves = {
						101,
						202
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 113042,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								10,
								0,
								70
							},
							buffList = {
								8001,
								8007,
								50210,
								8631
							}
						},
						{
							monsterTemplateID = 113015,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								-15,
								0,
								70
							}
						},
						{
							monsterTemplateID = 113014,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								-15,
								0,
								40
							}
						},
						{
							monsterTemplateID = 113006,
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
							monsterTemplateID = 113044,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								10,
								0,
								40
							},
							buffList = {
								8001,
								8007,
								8625,
								8630
							}
						}
					},
					airFighter = {
						{
							interval = 3,
							onceNumber = 5,
							formation = 10013,
							templateID = 1340030,
							delay = 0,
							totalNumber = 15,
							weaponID = {
								1340010,
								1340011
							},
							attr = {
								airPower = 40,
								maxHP = 768,
								attackRating = 23
							}
						},
						{
							interval = 3,
							onceNumber = 3,
							formation = 10007,
							templateID = 1340301,
							delay = 3,
							totalNumber = 9,
							weaponID = {
								1340301
							},
							attr = {
								airPower = 40,
								maxHP = 1250,
								attackRating = 23
							}
						}
					}
				},
				{
					key = true,
					triggerType = 0,
					waveIndex = 103,
					conditionType = 1,
					preWaves = {
						102,
						203
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 113003,
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
							monsterTemplateID = 113026,
							score = 0,
							reinforceDelay = 6,
							delay = 0,
							moveCast = true,
							corrdinate = {
								-15,
								0,
								55
							}
						},
						{
							monsterTemplateID = 113003,
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
					},
					reinforcement = {
						{
							monsterTemplateID = 113006,
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
							monsterTemplateID = 113006,
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
					},
					airFighter = {
						{
							interval = 3,
							onceNumber = 4,
							formation = 10012,
							templateID = 1340030,
							delay = 0,
							totalNumber = 12,
							weaponID = {
								1340010,
								1340011
							},
							attr = {
								airPower = 40,
								maxHP = 768,
								attackRating = 23
							}
						},
						{
							interval = 3,
							onceNumber = 4,
							formation = 10005,
							templateID = 1340020,
							delay = 2,
							totalNumber = 12,
							weaponID = {
								1340009
							},
							attr = {
								airPower = 40,
								maxHP = 1008,
								attackRating = 23
							}
						},
						{
							interval = 3,
							onceNumber = 2,
							formation = 10007,
							templateID = 1340301,
							delay = 3,
							totalNumber = 6,
							weaponID = {
								1340301
							},
							attr = {
								airPower = 40,
								maxHP = 1250,
								attackRating = 23
							}
						}
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 105,
					conditionType = 0,
					preWaves = {
						103,
						102,
						101
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 113032,
							reinforceDelay = 7,
							delay = 0,
							moveCast = true,
							score = 0,
							corrdinate = {
								-15,
								0,
								70
							},
							buffList = {
								8050,
								8051
							}
						},
						{
							monsterTemplateID = 113043,
							reinforceDelay = 7,
							delay = 0,
							moveCast = true,
							score = 0,
							corrdinate = {
								15,
								0,
								55
							},
							buffList = {
								8001,
								8007,
								50010
							}
						},
						{
							monsterTemplateID = 113033,
							score = 0,
							delay = 0,
							moveCast = true,
							reinforceDelay = 7,
							corrdinate = {
								-15,
								0,
								40
							},
							buffList = {
								8050,
								8051
							}
						}
					},
					reinforcement = {
						{
							monsterTemplateID = 113047,
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
								8007,
								8625,
								8630
							}
						},
						{
							monsterTemplateID = 113047,
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
								8007,
								8625,
								8630
							}
						}
					}
				},
				{
					triggerType = 8,
					waveIndex = 900,
					preWaves = {
						105
					},
					triggerParams = {}
				}
			}
		}
	},
	fleet_prefab = {}
}
