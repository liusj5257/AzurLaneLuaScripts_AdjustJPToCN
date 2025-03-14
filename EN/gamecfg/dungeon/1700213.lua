return {
	id = 1700213,
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
							monsterTemplateID = 16400001,
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
								8007
							}
						},
						{
							monsterTemplateID = 16400003,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								-5,
								0,
								50
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 16400001,
							score = 0,
							delay = 0,
							moveCast = true,
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
					triggerType = 0,
					waveIndex = 102,
					conditionType = 1,
					preWaves = {
						101
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 16400006,
							score = 0,
							delay = 0,
							moveCast = true,
							reinforceDelay = 6,
							corrdinate = {
								-5,
								0,
								50
							},
							buffList = {
								8001,
								8007
							}
						}
					},
					reinforcement = {
						{
							monsterTemplateID = 16400001,
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
							monsterTemplateID = 16400002,
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
							monsterTemplateID = 16400002,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								3,
								0,
								35
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 16400001,
							score = 0,
							delay = 0,
							moveCast = true,
							corrdinate = {
								10,
								0,
								25
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
						bgm = "battle-starsea-elec"
					}
				},
				{
					triggerType = 3,
					waveIndex = 500,
					preWaves = {
						100
					},
					triggerParams = {
						id = "DINGXIANGZHEDIE11"
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
							monsterTemplateID = 16400303,
							delay = 0,
							corrdinate = {
								-10,
								0,
								45
							},
							bossData = {
								hpBarNum = 60,
								icon = ""
							},
							buffList = {
								8001
							},
							phase = {
								{
									switchType = 1,
									dive = "STATE_RAID",
									switchTo = 21,
									index = 0,
									switchParam = 1.5,
									setAI = 20006
								},
								{
									switchParam = 2,
									switchTo = 22,
									index = 21,
									switchType = 1,
									addWeapon = {
										3040201
									},
									removeWeapon = {}
								},
								{
									switchParam = 2,
									switchTo = 23,
									index = 22,
									switchType = 1,
									addWeapon = {
										3040202
									},
									removeWeapon = {
										3040201
									}
								},
								{
									switchParam = 0.5,
									switchTo = 1,
									index = 23,
									switchType = 1,
									dive = "STATE_FLOAT",
									addWeapon = {},
									removeWeapon = {
										3040202
									},
									addBuff = {
										8976
									}
								},
								{
									switchParam = 8,
									switchTo = 2,
									index = 1,
									switchType = 1,
									addWeapon = {
										3040204,
										3040205,
										3040206,
										3040207
									},
									removeWeapon = {}
								},
								{
									dive = "STATE_RAID",
									switchParam = 1,
									index = 2,
									switchType = 1,
									setAI = 20006,
									switchTo = 3,
									addWeapon = {},
									removeWeapon = {
										3040204,
										3040205,
										3040206,
										3040207
									},
									removeBuff = {
										8976
									}
								},
								{
									switchParam = 5,
									switchTo = 4,
									index = 3,
									switchType = 1,
									setAI = 70175,
									addWeapon = {
										3040203
									},
									removeWeapon = {}
								},
								{
									dive = "STATE_FLOAT",
									switchParam = 0.5,
									index = 4,
									switchType = 1,
									setAI = 20006,
									switchTo = 5,
									addWeapon = {},
									removeWeapon = {
										3040203
									},
									addBuff = {
										8976
									}
								},
								{
									switchParam = 6,
									switchTo = 6,
									index = 5,
									switchType = 1,
									addWeapon = {
										3040206,
										3040207,
										3040208
									},
									removeWeapon = {}
								},
								{
									dive = "STATE_RAID",
									switchParam = 0.5,
									index = 6,
									switchType = 1,
									setAI = 20006,
									switchTo = 7,
									addWeapon = {},
									removeWeapon = {
										3040206,
										3040207,
										3040208
									},
									removeBuff = {
										8976
									}
								},
								{
									switchParam = 5,
									switchTo = 8,
									index = 7,
									switchType = 1,
									setAI = 70176,
									addWeapon = {
										3040203
									},
									removeWeapon = {}
								},
								{
									dive = "STATE_FLOAT",
									switchParam = 0.5,
									index = 8,
									switchType = 1,
									setAI = 20006,
									switchTo = 9,
									addWeapon = {},
									removeWeapon = {
										3040203
									},
									addBuff = {
										8976
									}
								},
								{
									switchParam = 6,
									switchTo = 10,
									index = 9,
									switchType = 1,
									addWeapon = {
										3040206,
										3040207,
										3040209
									},
									removeWeapon = {}
								},
								{
									dive = "STATE_RAID",
									switchParam = 0.5,
									index = 10,
									switchType = 1,
									setAI = 20006,
									switchTo = 11,
									addWeapon = {},
									removeWeapon = {
										3040206,
										3040207,
										3040209
									},
									removeBuff = {
										8976
									}
								},
								{
									switchParam = 5,
									switchTo = 12,
									index = 11,
									switchType = 1,
									setAI = 70177,
									addWeapon = {
										3040203
									},
									removeWeapon = {}
								},
								{
									dive = "STATE_FLOAT",
									switchParam = 0.5,
									index = 12,
									switchType = 1,
									setAI = 20006,
									switchTo = 1,
									addWeapon = {},
									removeWeapon = {
										3040203
									},
									addBuff = {
										8976
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
							monsterTemplateID = 16400009,
							delay = 8,
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
									switchParam = 20,
									setAI = 20005
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
							monsterTemplateID = 16400009,
							delay = 8,
							moveCast = true,
							corrdinate = {
								0,
								0,
								41
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
									switchParam = 8,
									setAI = 20021
								},
								{
									switchType = 1,
									dive = "STATE_FLOAT",
									switchTo = 2,
									index = 1,
									switchParam = 5,
									setAI = 20006,
									addBuff = {
										8976
									}
								},
								{
									switchType = 1,
									dive = "STATE_RAID",
									switchTo = 1,
									index = 2,
									switchParam = 8,
									setAI = 20006,
									removeBuff = {
										8976
									}
								}
							}
						},
						{
							monsterTemplateID = 16400009,
							delay = 8,
							moveCast = true,
							corrdinate = {
								0,
								0,
								61
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
									switchParam = 8,
									setAI = 20021
								},
								{
									switchType = 1,
									dive = "STATE_FLOAT",
									switchTo = 2,
									index = 1,
									switchParam = 5,
									setAI = 20006,
									addBuff = {
										8976
									}
								},
								{
									switchType = 1,
									dive = "STATE_RAID",
									switchTo = 1,
									index = 2,
									switchParam = 8,
									setAI = 20006,
									removeBuff = {
										8976
									}
								}
							}
						},
						reinforceDuration = 180
					}
				},
				{
					triggerType = 0,
					waveIndex = 2003,
					conditionType = 1,
					preWaves = {
						100
					},
					triggerParam = {},
					spawn = {},
					reinforcement = {
						{
							monsterTemplateID = 16400008,
							delay = 4,
							corrdinate = {
								18,
								0,
								70
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
									switchParam = 6,
									setAI = 20005
								},
								{
									switchType = 1,
									dive = "STATE_FLOAT",
									switchTo = 0,
									index = 1,
									switchParam = 300,
									addBuff = {
										8002,
										8976
									}
								}
							}
						},
						{
							monsterTemplateID = 16400008,
							delay = 4,
							corrdinate = {
								18,
								0,
								30
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
									switchParam = 6,
									setAI = 20005
								},
								{
									switchType = 1,
									dive = "STATE_FLOAT",
									switchTo = 0,
									index = 1,
									switchParam = 300,
									addBuff = {
										8002,
										8976
									}
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
