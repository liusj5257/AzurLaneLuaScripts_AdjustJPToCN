return {
	id = 1641113,
	stages = {
		{
			stageIndex = 1,
			failCondition = 1,
			timeCount = 180,
			backGroundStageID = 1,
			passCondition = 1,
			totalArea = {
				-75,
				20,
				90,
				70
			},
			playerArea = {
				-75,
				20,
				42,
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
							monsterTemplateID = 15801011,
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
							monsterTemplateID = 15801111,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								0,
								0,
								55
							}
						},
						{
							monsterTemplateID = 15801011,
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
					waveIndex = 102,
					conditionType = 1,
					preWaves = {
						101,
						202
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 15801112,
							score = 0,
							reinforceDelay = 6,
							delay = 0,
							moveCast = true,
							corrdinate = {
								-5,
								0,
								55
							}
						}
					},
					reinforcement = {
						{
							monsterTemplateID = 15801012,
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
							monsterTemplateID = 15801013,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								3,
								0,
								65
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 15801013,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								3,
								0,
								45
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 15801012,
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
						bgm = "battle-inthememory"
					}
				},
				{
					triggerType = 3,
					waveIndex = 500,
					preWaves = {
						102,
						101
					},
					triggerParams = {
						id = "HONGCAIDEZHONGMUQU26"
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
							monsterTemplateID = 15801302,
							delay = 0,
							moveCast = true,
							corrdinate = {
								-5,
								0,
								55
							},
							buffList = {
								8671
							},
							bossData = {
								hpBarNum = 60,
								icon = ""
							},
							phase = {
								{
									dive = "STATE_RAID",
									switchParam = 1.5,
									index = 0,
									switchType = 1,
									switchTo = 15,
									setAI = 70086,
									addWeapon = {},
									removeWeapon = {}
								},
								{
									switchParam = 2,
									switchTo = 14,
									index = 15,
									switchType = 1,
									addWeapon = {
										891502
									},
									removeWeapon = {}
								},
								{
									switchParam = 2,
									switchTo = 13,
									index = 14,
									switchType = 1,
									addWeapon = {
										891501
									},
									removeWeapon = {
										891502
									}
								},
								{
									switchParam = 2,
									switchTo = 12,
									index = 13,
									switchType = 1,
									addWeapon = {
										891502
									},
									removeWeapon = {
										891501
									}
								},
								{
									switchParam = 2,
									switchTo = 11,
									index = 12,
									switchType = 1,
									setAI = 70126,
									addWeapon = {
										891501
									},
									removeWeapon = {
										891502
									}
								},
								{
									switchParam = 0.5,
									dive = "STATE_FLOAT",
									index = 11,
									switchType = 1,
									switchTo = 1,
									addWeapon = {},
									removeWeapon = {
										891501
									}
								},
								{
									switchParam = 3,
									switchTo = 2,
									index = 1,
									switchType = 1,
									addWeapon = {
										891503,
										891504,
										891505,
										891506
									},
									removeWeapon = {}
								},
								{
									switchParam = 2,
									switchTo = 3,
									index = 2,
									switchType = 1,
									addWeapon = {
										891509
									},
									removeWeapon = {
										891503,
										891504,
										891505,
										891506
									}
								},
								{
									switchParam = 4,
									switchTo = 99,
									index = 3,
									switchType = 1,
									setAI = 10001,
									addWeapon = {},
									removeWeapon = {}
								},
								{
									switchParam = 0.5,
									switchTo = 98,
									index = 99,
									switchType = 1,
									addWeapon = {
										891510
									},
									removeWeapon = {
										891509
									}
								},
								{
									switchParam = 5,
									switchTo = 5,
									index = 98,
									switchType = 1,
									addWeapon = {
										891511
									},
									removeWeapon = {}
								},
								{
									switchParam = 1,
									switchTo = 6,
									index = 5,
									switchType = 1,
									setAI = 70086,
									addWeapon = {},
									removeWeapon = {
										891511
									}
								},
								{
									switchParam = 5,
									switchTo = 8,
									index = 6,
									switchType = 1,
									addWeapon = {
										891514,
										891515,
										891516,
										891517
									},
									removeWeapon = {
										891510
									}
								},
								{
									switchParam = 3.5,
									switchTo = 16,
									index = 8,
									switchType = 1,
									setAI = 10001,
									addWeapon = {
										891512
									},
									removeWeapon = {
										891514,
										891515,
										891516,
										891517
									}
								},
								{
									switchParam = 3.5,
									switchTo = 17,
									index = 16,
									switchType = 1,
									addWeapon = {
										891513
									},
									removeWeapon = {
										891512
									}
								},
								{
									switchParam = 2.5,
									switchTo = 18,
									index = 17,
									switchType = 1,
									setAI = 70086,
									addWeapon = {
										891512
									},
									removeWeapon = {}
								},
								{
									switchParam = 2.5,
									switchTo = 19,
									index = 18,
									switchType = 1,
									addWeapon = {
										891520
									},
									removeWeapon = {
										891512
									}
								},
								{
									switchType = 1,
									switchTo = 1,
									index = 19,
									switchParam = 1,
									removeWeapon = {
										891513,
										891520
									}
								}
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
							monsterTemplateID = 15801017,
							delay = 5,
							moveCast = true,
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
									setAI = 20009
								}
							}
						},
						reinforceDuration = 180
					}
				},
				{
					triggerType = 8,
					key = true,
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
