return {
	id = 1910009,
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
							monsterTemplateID = 16720001,
							delay = 0,
							corrdinate = {
								5,
								0,
								75
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 16720003,
							delay = 0,
							corrdinate = {
								-5,
								0,
								65
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 16720003,
							delay = 0,
							corrdinate = {
								-5,
								0,
								45
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 16720001,
							delay = 0,
							corrdinate = {
								5,
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
							interval = 10,
							onceNumber = 6,
							formation = 10006,
							templateID = 1000660,
							delay = 0,
							totalNumber = 12,
							weaponID = {
								1000670,
								1100750
							},
							attr = {
								airPower = 40,
								maxHP = 15,
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
							monsterTemplateID = 16720001,
							delay = 0,
							corrdinate = {
								10,
								0,
								80
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 16720003,
							delay = 0,
							corrdinate = {
								3,
								0,
								70
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 16720102,
							delay = 0,
							corrdinate = {
								-5,
								0,
								55
							},
							buffList = {}
						},
						{
							monsterTemplateID = 16720003,
							delay = 0,
							corrdinate = {
								3,
								0,
								40
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 16720001,
							delay = 0,
							corrdinate = {
								10,
								0,
								30
							},
							buffList = {
								8001,
								8007
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
							monsterTemplateID = 16720005,
							reinforceDelay = 6,
							delay = 0,
							corrdinate = {
								10,
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
							monsterTemplateID = 16720003,
							delay = 0,
							corrdinate = {
								-8,
								0,
								80
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 16720006,
							delay = 0,
							corrdinate = {
								30,
								0,
								65
							},
							buffList = {
								8001,
								8002
							}
						},
						{
							monsterTemplateID = 16720006,
							delay = 0,
							corrdinate = {
								30,
								0,
								45
							},
							buffList = {
								8001,
								8002
							}
						},
						{
							monsterTemplateID = 16720003,
							delay = 0,
							corrdinate = {
								-8,
								0,
								30
							},
							buffList = {
								8001,
								8007
							}
						}
					},
					airFighter = {
						{
							interval = 10,
							onceNumber = 6,
							formation = 10006,
							templateID = 1000655,
							delay = 0,
							totalNumber = 12,
							weaponID = {
								1000665
							},
							attr = {
								airPower = 40,
								maxHP = 15,
								attackRating = 23
							}
						}
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 104,
					conditionType = 1,
					preWaves = {
						103,
						204
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 16720105,
							reinforceDelay = 6,
							delay = 0,
							corrdinate = {
								-10,
								0,
								65
							},
							buffList = {}
						},
						{
							monsterTemplateID = 16720104,
							delay = 0,
							corrdinate = {
								-10,
								0,
								45
							},
							buffList = {}
						}
					},
					reinforcement = {
						{
							monsterTemplateID = 16720003,
							delay = 0,
							corrdinate = {
								5,
								0,
								75
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 16720006,
							delay = 0,
							corrdinate = {
								30,
								0,
								55
							},
							buffList = {
								8001,
								8002
							}
						},
						{
							monsterTemplateID = 16720003,
							delay = 0,
							corrdinate = {
								5,
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
					waveIndex = 2001,
					conditionType = 1,
					preWaves = {
						100
					},
					triggerParam = {},
					spawn = {},
					reinforcement = {
						{
							monsterTemplateID = 16720007,
							delay = 10,
							corrdinate = {
								5,
								0,
								68
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
									switchParam = 20,
									setAI = 20015
								},
								{
									index = 1,
									switchType = 1,
									switchTo = 1,
									switchParam = 180
								}
							}
						},
						{
							monsterTemplateID = 16720007,
							delay = 10,
							corrdinate = {
								5,
								0,
								48
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
									switchParam = 20,
									setAI = 20015
								},
								{
									index = 1,
									switchType = 1,
									switchTo = 1,
									switchParam = 180
								}
							}
						},
						reinforceDuration = 180
					}
				},
				{
					triggerType = 0,
					waveIndex = 2002,
					conditionType = 1,
					preWaves = {
						100
					},
					triggerParam = {},
					spawn = {},
					reinforcement = {
						{
							monsterTemplateID = 16720007,
							delay = 8,
							corrdinate = {
								5,
								0,
								58
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
									switchParam = 180,
									setAI = 20005
								}
							}
						},
						reinforceDuration = 180
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
