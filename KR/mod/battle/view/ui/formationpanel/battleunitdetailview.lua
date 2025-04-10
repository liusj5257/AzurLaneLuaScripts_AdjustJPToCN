ys = ys or {}
slot0 = ys
slot1 = slot0.Battle.BattleAttr
slot2 = slot0.Battle.BattleDataFunction
slot3 = slot0.Battle.BattleConst
slot4 = slot0.Battle.BattleUnitEvent
slot5 = slot0.Battle.BattleConst.EquipmentType
slot6 = class("BattleUnitDetailView")
slot0.Battle.BattleUnitDetailView = slot6
slot6.__name = "BattleUnitDetailView"
slot6.DefaultActive = {
	"attr_panels",
	"attr_panels/buff"
}
slot6.EnemyMarkList = {}
slot6.HIGH_LIGHT_BUFF = {}
slot6.PrimalAttr = {
	"cannonPower",
	"torpedoPower",
	"airPower",
	"antiAirPower",
	"antiSubPower",
	"loadSpeed",
	"dodgeRate",
	"attackRating",
	"velocity"
}
slot6.BaseEnhancement = {
	damageRatioByBulletTorpedo = "damage/damageRatioByBulletTorpedo",
	injureRatioByBulletTorpedo = "injure/injureRatioByBulletTorpedo",
	damageRatioByCannon = "damage/damageRatioByCannon",
	injureRatioByCannon = "injure/injureRatioByCannon",
	damageRatioBullet = "damage/damageRatioBullet",
	injureRatio = "injure/injureRatio",
	injureRatioByAir = "injure/injureRatioByAir",
	damageRatioByAir = "damage/damageRatioByAir"
}
slot6.SecondaryAttrListener = {}

slot6.Ctor = function(slot0)
	pg.DelegateInfo.New(slot0)
end

slot6.SetUnit = function(slot0, slot1)
	uv0.EventListener.AttachEventListener(slot0)

	slot0._unit = slot1

	if slot0._unit:GetUnitType() == uv1.UnitType.PLAYER_UNIT then
		setImageSprite(slot0._icon, uv0.Battle.BattleResourceManager.GetInstance():GetCharacterQIcon(slot0._unit:GetTemplate().painting))

		for slot7 = 1, slot0._unit:GetTemplate().star do
			setActive(cloneTplTo(slot0._starTpl, slot0._stars), true)
		end
	end

	setText(slot0._templateID, slot0._unit:GetTemplate().id)
	setText(slot0._name, slot0._unit:GetTemplate().name)

	slot4 = slot0._unit
	slot5 = slot4
	slot6 = "level"

	setText(slot0._lv, slot4.GetAttrByName(slot5, slot6))

	slot0._preAttrList = {}

	for slot5, slot6 in ipairs(uv2.PrimalAttr) do
		slot7 = uv3.GetBase(slot0._unit, slot6)

		setText(slot0._attrView:Find(slot6 .. "/base"), slot7)

		slot0._preAttrList[slot6] = slot7
	end

	slot0._baseEhcList = {}

	for slot5, slot6 in pairs(uv2.BaseEnhancement) do
		slot0._baseEhcList[slot5] = 0
	end

	slot0._secondaryAttrList = {}
	slot0._buffList = {}
	slot0._aaList = {}
	slot0._weaponList = {}
	slot0._skillList = {}

	slot0:updateWeaponList()
end

slot6.Update = function(slot0)
	for slot4, slot5 in ipairs(uv0.PrimalAttr) do
		slot0:updatePrimalAttr(slot5)
	end

	for slot4, slot5 in pairs(uv0.BaseEnhancement) do
		slot0:updateBaseEnhancement(slot4, slot5)
	end

	for slot5, slot6 in pairs(slot0._unit:GetAttr()) do
		if string.find(slot5, "DMG_TAG_EHC_") or string.find(slot5, "DMG_FROM_TAG_") or table.contains(uv0.SecondaryAttrListener, slot5) then
			slot0:updateSecondaryAttr(slot5, slot6)
		end
	end

	slot0:updateHP()
	slot0:updateBuffList()
	slot0:updateWeaponProgress()
	slot0:updateSkillList()
end

slot6.ConfigSkin = function(slot0, slot1)
	slot0._go = slot1
	slot2 = slot1.transform
	slot0._tf = slot2
	slot0._iconView = slot2:Find("icon")
	slot0._icon = slot0._iconView:Find("icon")
	slot0._stars = slot0._iconView:Find("stars")
	slot0._starTpl = slot0._stars:Find("star_tpl")
	slot0._templateView = slot2:Find("template")
	slot0._templateID = slot0._templateView:Find("template/text")
	slot0._name = slot0._templateView:Find("name/text")
	slot0._lv = slot0._templateView:Find("level/text")
	slot0._totalHP = slot0._templateView:Find("totalHP/text")
	slot0._currentHP = slot0._templateView:Find("currentHP/text")
	slot0._shield = slot0._templateView:Find("shield/text")
	slot0._attrView = slot2:Find("attr_panels/primal_attr")
	slot0._baseEnhanceView = slot2:Find("attr_panels/basic_ehc")
	slot0._secondaryAttrView = slot2:Find("attr_panels/tag_ehc")
	slot0._secondaryAttrContainer = slot0._secondaryAttrView:Find("tag_container")
	slot0._secondaryAttrTpl = slot0._secondaryAttrView:Find("tag_attr_tpl")
	slot0._buffView = slot2:Find("attr_panels/buff")
	slot0._buffContainer = slot0._buffView:Find("buff_container")
	slot0._buffTpl = slot0._buffView:Find("buff_tpl")
	slot0._weaponView = slot2:Find("panel_container/weapon_panels")
	slot0._weaponContainer = slot0._weaponView:Find("weapon_container")
	slot0._weaponTpl = slot0._weaponView:Find("weapon_tpl")
	slot0._skillView = slot2:Find("panel_container/skill_panel")
	slot0._skillContainer = slot0._skillView:Find("skill_container")
	slot0._skillTpl = slot0._skillView:Find("skill_tpl")

	SetActive(slot0._go, true)

	for slot6, slot7 in ipairs(uv0.DefaultActive) do
		SetActive(slot2:Find(slot7), true)
	end
end

slot6.updateHP = function(slot0)
	slot1, slot2 = slot0._unit:GetHP()
	slot3 = slot0._unit:GetHPRate()

	setText(slot0._totalHP, slot2)
	setText(slot0._currentHP, slot1)

	slot5 = 0

	for slot9, slot10 in pairs(slot0._unit:GetBuffList()) do
		for slot14, slot15 in ipairs(slot10:GetEffectList()) do
			if slot15.__name == "BattleBuffShield" or slot15.__name == "BattleBuffRecordShield" then
				slot5 = slot5 + math.max(0, slot15:GetEffectAttachData())
			end
		end
	end

	setText(slot0._shield, slot5)
end

slot6.updatePrimalAttr = function(slot0, slot1)
	slot2 = slot0._unit:GetAttrByName(slot1)

	setText(slot0._attrView:Find(slot1 .. "/current"), slot2)

	if slot2 - slot0._preAttrList[slot1] ~= 0 then
		uv0.setDeltaText(slot0._attrView:Find(slot1 .. "/change"), slot3)

		slot0._preAttrList[slot1] = slot2
	end

	if slot2 - uv1.GetBase(slot0._unit, slot1) ~= 0 then
		uv0.setDeltaText(slot0._attrView:Find(slot1 .. "/delta"), slot5)
	end
end

slot6.updateBaseEnhancement = function(slot0, slot1, slot2)
	slot4 = slot0._unit:GetAttrByName(slot1)

	setText(slot0._baseEnhanceView:Find(slot2):Find("current"), slot4)

	if slot4 - slot0._baseEhcList[slot1] ~= 0 then
		uv0.setDeltaText(slot3:Find("change"), slot5)
	end
end

slot6.updateSecondaryAttr = function(slot0, slot1, slot2)
	if not slot0._secondaryAttrList[slot1] then
		slot3 = cloneTplTo(slot0._secondaryAttrTpl, slot0._secondaryAttrContainer)

		Canvas.ForceUpdateCanvases()
		setText(slot3:Find("tag_name"), slot1)
		setActive(slot3, true)

		slot0._secondaryAttrList[slot1] = {
			value = 0,
			tf = slot3
		}
	end

	slot3 = slot0._secondaryAttrList[slot1].tf
	slot4 = slot0._unit:GetAttrByName(slot1)

	if slot0._secondaryAttrList[slot1].value ~= slot2 then
		setText(slot3:Find("current"), slot2)
		uv0.setDeltaText(slot3:Find("delta"), slot4 - slot5)
	end
end

slot6.updateBuffList = function(slot0)
	slot1 = slot0._unit:GetBuffList()

	for slot5, slot6 in pairs(slot0._buffList) do
		if not slot1[slot5] then
			GameObject.Destroy(slot6.gameObject)

			slot0._buffList[slot5] = nil
		end
	end

	for slot5, slot6 in pairs(slot1) do
		if not slot0._buffList[slot5] then
			slot0:addBuff(slot5, slot6)
		else
			slot7 = slot0._buffList[slot5]

			if slot6._stack > 1 then
				slot8 = slot7:Find("buff_stack")

				setActive(slot8, true)
				setText(slot8, "x" .. slot6._stack)
			end
		end
	end

	for slot5, slot6 in pairs(slot1) do
		for slot11, slot12 in ipairs(slot6:GetEffectList()) do
			if slot12.__name == uv0.Battle.BattleBuffCastSkill.__name and (not slot0._skillList[slot12._skill_id] or not table.contains(slot0._skillList[slot12._skill_id].effectList, slot12)) then
				slot0:addSkillCaster(slot12)
			end
		end
	end
end

slot6.updateWeaponList = function(slot0)
	if slot0._unit:GetAirAssistList() then
		for slot5, slot6 in ipairs(slot1) do
			slot7 = cloneTplTo(slot0._weaponTpl, slot0._weaponContainer)

			Canvas.ForceUpdateCanvases()
			GetImageSpriteFromAtlasAsync("skillicon/2130", "", slot7:Find("common/icon"))
			setText(slot7:Find("common/index"), "空袭")
			setText(slot7:Find("common/templateID"), slot6:GetStrikeSkillID())

			slot0._aaList[slot6] = slot7
		end
	end

	for slot6, slot7 in ipairs(slot0._unit:GetAllWeapon()) do
		if slot7:GetType() ~= uv0.STRIKE_AIRCRAFT and slot8 ~= uv0.FLEET_ANTI_AIR then
			slot9 = cloneTplTo(slot0._weaponTpl, slot0._weaponContainer)

			Canvas.ForceUpdateCanvases()
			setText(slot9:Find("common/index"), slot7:GetEquipmentIndex())
			setText(slot9:Find("common/templateID"), slot7:GetTemplateData().id)

			slot11 = slot9:Find("common/icon")

			if slot7:GetSrcEquipmentID() then
				GetImageSpriteFromAtlasAsync("equips/" .. uv1.GetWeaponDataFromID(slot10).icon, "", slot11)
			else
				setActive(slot11, false)
			end

			slot0._weaponList[slot7] = {
				tf = slot9,
				data = {}
			}

			onToggle(slot0, slot9:Find("common/sector"), function (slot0)
				uv0._unit:ActiveWeaponSectorView(uv1, slot0)
			end)
			slot0:updateBulletAttrBuff(slot7)
		end
	end

	if slot0._unit:GetFleetRangeAAWeapon() then
		slot4 = cloneTplTo(slot0._weaponTpl, slot0._weaponContainer)

		Canvas.ForceUpdateCanvases()
		GetImageSpriteFromAtlasAsync("skillicon/2130", "", slot4:Find("common/icon"))
		setText(slot4:Find("common/index"), "远程防空")
		setText(slot4:Find("common/templateID"), "N/A")
		onToggle(slot0, slot4:Find("common/sector"), function (slot0)
			uv0._unit:ActiveWeaponSectorView(uv1, slot0)
		end)
	end
end

slot6.updateWeaponProgress = function(slot0)
	for slot4, slot5 in pairs(slot0._weaponList) do
		slot6 = slot5.tf

		slot0.updateBarProgress(slot6, slot4:GetReloadRate())
		setText(slot6:Find("sum/damageSum"), slot4:GetDamageSUM())
		setText(slot6:Find("sum/CTRate"), string.format("%.2f", slot4:GetCTRate() * 100) .. "%")
		setText(slot6:Find("sum/ACCRate"), string.format("%.2f", slot4:GetACCRate() * 100) .. "%")
		slot0:updateBulletAttrBuff(slot4)
	end

	for slot4, slot5 in pairs(slot0._aaList) do
		slot0.updateBarProgress(slot5, slot4:GetReloadRate())

		slot7, slot8 = slot4:GetDamageSUM()

		setText(slot5:Find("sum/damageSum"), slot7 .. " + " .. slot8)
	end
end

slot6.updateBarProgress = function(slot0, slot1)
	slot0:Find("common/reload_progress/blood"):GetComponent(typeof(Image)).fillAmount = 1 - slot1

	if slot1 == 0 then
		slot2.color = Color.green
	else
		slot2.color = Color.red
	end
end

slot6.updateBulletAttrBuff = function(slot0, slot1)
	slot2 = slot0._weaponList[slot1]
	slot3 = slot2.tf
	slot5 = slot3:Find("weapon_attr_tpl")
	slot6 = slot3:Find("weapon_attr_container")
	slot7 = {}

	for slot11, slot12 in pairs(slot2.data) do
		slot7[slot11] = true
	end

	for slot11, slot12 in pairs(slot0._unit:GetBuffList()) do
		for slot16, slot17 in ipairs(slot12:GetEffectList()) do
			if slot17.__name == uv0.Battle.BattleBuffAddBulletAttr.__name and slot17:equipIndexRequire(slot1:GetEquipmentIndex()) then
				if not slot4[slot17] then
					slot19 = cloneTplTo(slot5, slot6)

					setText(slot19:Find("tag_name"), slot17._attr)
					setText(slot19:Find("src_buff"), slot12:GetID())
					Canvas.ForceUpdateCanvases()

					slot19:Find("src_buff"):GetComponent(typeof(Text)).color = Color.green
					slot4[slot17] = slot19
				end

				setText(slot19:Find("current"), slot17._number)

				slot7[slot17] = false
			end
		end
	end

	for slot11, slot12 in pairs(slot7) do
		if slot12 then
			SetActive(slot4[slot11]:Find("expire"), true)
		end
	end
end

slot6.addBuff = function(slot0, slot1, slot2)
	Canvas.ForceUpdateCanvases()
	setText(cloneTplTo(slot0._buffTpl, slot0._buffContainer):Find("buff_id"), "buff_" .. slot1)

	if table.contains(uv0.HIGH_LIGHT_BUFF, slot1) then
		setActive(slot3:Find("high_light"), true)
	end

	if slot2._stack > 1 then
		slot4 = slot3:Find("buff_stack")

		setActive(slot4, true)
		setText(slot4, "x" .. slot2._stack)
	end

	setActive(slot3, true)

	slot0._buffList[slot1] = slot3
end

slot6.addSkillCaster = function(slot0, slot1)
	if not uv0.Battle.BattleSkillUnit.IsFireSkill(slot1._skill_id, slot1._srcBuff:GetLv()) then
		return
	end

	if not slot0._skillList[slot2] then
		slot5 = cloneTplTo(slot0._skillTpl, slot0._skillContainer)

		setText(slot5:Find("common"):Find("skillID"), slot1._skill_id)
		GetImageSpriteFromAtlasAsync("skillicon/" .. (slot1._srcBuff._tempData.icon or 10120), "", slot5:Find("common/icon"))
		Canvas.ForceUpdateCanvases()

		slot0._skillList[slot2] = {
			tf = slot5,
			effectList = {}
		}
	end

	table.insert(slot4.effectList, slot1)
	slot0:updateCastEffectTpl(slot2)
end

slot6.updateSkillList = function(slot0)
	for slot4, slot5 in pairs(slot0._skillList) do
		slot0:updateCastEffectTpl(slot4)
	end
end

slot6.updateCastEffectTpl = function(slot0, slot1)
	slot2 = slot0._skillList[slot1]
	slot3 = slot2.tf
	slot5 = 0
	slot6 = 0

	for slot10, slot11 in ipairs(slot2.effectList) do
		slot5 = slot5 + slot11:GetCastCount()
		slot6 = slot6 + slot11:GetSkillFireDamageSum()
	end

	slot7 = slot3:Find("common")

	setText(slot7:Find("count"), slot5)
	setText(slot7:Find("damageSum"), slot6)
end

slot6.Dispose = function(slot0)
	pg.DelegateInfo.Dispose(slot0)

	slot0._unit = nil
	slot0._secondaryAttrList = nil
	slot0._buffList = nil
	slot0._weaponList = nil

	GameObject.Destroy(slot0._go)
	uv0.EventListener.DetachEventListener(slot0)
end

slot6.setDeltaText = function(slot0, slot1)
	setText(slot0, slot1)

	slot0:GetComponent(typeof(Text)).color = slot1 > 0 and Color.green or Color.red
end

slot6.WeaponForger = {}
slot6.BulletForger = {}
slot6.BarrageForger = {}
slot6.AircraftForger = {}
