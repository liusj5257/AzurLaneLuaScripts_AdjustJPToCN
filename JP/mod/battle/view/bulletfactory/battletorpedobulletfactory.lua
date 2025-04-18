ys = ys or {}
slot0 = ys
slot0.Battle.BattleTorpedoBulletFactory = singletonClass("BattleTorpedoBulletFactory", slot0.Battle.BattleBulletFactory)
slot0.Battle.BattleTorpedoBulletFactory.__name = "BattleTorpedoBulletFactory"
slot1 = slot0.Battle.BattleTorpedoBulletFactory

slot1.Ctor = function(slot0)
	uv0.super.Ctor(slot0)
end

slot1.MakeBullet = function(slot0)
	return uv0.Battle.BattleTorpedoBullet.New()
end

slot1.onBulletHitFunc = function(slot0, slot1, slot2)
	slot6 = uv0.GetDataProxy()
	slot7 = slot0:GetBulletData()
	slot8 = slot7:GetTemplate()

	uv1.Battle.PlayBattleSFX(slot7:GetHitSFX())
	slot7:BuffTrigger(uv1.Battle.BattleConst.BuffEffectType.ON_TORPEDO_BULLET_BANG, {
		_bullet = slot7,
		equipIndex = slot7:GetWeapon():GetEquipmentIndex(),
		bulletTag = slot7:GetExtraTag()
	})

	slot11 = nil

	slot12 = function(slot0)
		if uv0.decay then
			uv1:UpdateDistanceInfo()
		end

		for slot5, slot6 in ipairs(slot0) do
			if slot6.Active then
				slot7 = slot6.UID
				slot8 = 0

				if slot1 then
					slot8 = uv1:GetDistance(slot7) / (uv0.range * 0.5) * slot1
				end

				uv3:HandleDamage(uv4, uv2:GetSceneMediator():GetCharacter(slot7):GetUnitData(), slot8)
			end
		end
	end

	((not slot0:GetBulletData():GetTemplate().hit_type.range or slot6:SpawnColumnArea(slot7:GetEffectField(), slot7:GetIFF(), pg.Tool.FilterY(slot0:GetPosition():Clone()), slot5.range, slot5.time, slot12)) and slot6:SpawnCubeArea(slot7:GetEffectField(), slot7:GetIFF(), pg.Tool.FilterY(slot0:GetPosition():Clone()), slot5.width, slot5.height, slot5.time, slot12)):SetDiveFilter(slot7:GetDiveFilter())

	slot13, slot14 = uv0.GetFXPool():GetFX(slot0:GetFXID())

	pg.EffectMgr.GetInstance():PlayBattleEffect(slot13, slot14:Add(slot0:GetTf().localPosition), true)

	if slot7:GetPierceCount() <= 0 then
		slot6:RemoveBulletUnit(slot7:GetUniqueID())
	end
end

slot1.onBulletMissFunc = function(slot0)
	uv0.onBulletHitFunc(slot0)
end

slot1.MakeModel = function(slot0, slot1, slot2)
	slot3 = slot1:GetBulletData()
	slot4 = slot3:GetTemplate()
	slot5 = slot0:GetDataProxy()

	if not slot0:GetBulletPool():InstBullet(slot1:GetModleID(), function (slot0)
		uv0:AddModel(slot0)
	end) then
		slot1:AddTempModel(slot0:GetTempGOPool():GetObject())
	end

	slot1:SetSpawn(slot2)
	slot1:SetFXFunc(slot0.onBulletHitFunc, slot0.onBulletMissFunc)
	slot0:GetSceneMediator():AddBullet(slot1)

	if slot3:GetIFF() ~= slot5:GetFriendlyCode() and slot4.alert_fx ~= "" then
		slot1:MakeAlert(slot0:GetFXPool():GetFX(slot4.alert_fx))
	end
end
