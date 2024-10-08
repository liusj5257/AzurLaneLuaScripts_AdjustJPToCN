slot0 = class("AttachmentLBCoastalGunCell", import("view.level.cell.StaticCellView"))
slot0.StateLive = 1
slot0.StateDead = 2

slot0.GetOrder = function(slot0)
	return ChapterConst.CellPriorityAttachment
end

slot0.Update = function(slot0)
	slot1 = slot0.info

	if IsNil(slot0.go) then
		slot0:PrepareBase("landbase_" .. slot1.attachmentId)
	end

	slot2 = slot0.state

	if slot1.flag == ChapterConst.CellFlagActive and slot0.state ~= uv0.StateLive then
		slot0.state = uv0.StateLive
		slot0.dead = nil

		slot0:ClearLoader()
		assert(pg.land_based_template[slot1.attachmentId], "land_based_template not exist: " .. slot1.attachmentId)

		slot4 = slot0:GetLoader()

		slot4:GetPrefab("leveluiview/Tpl_Enemy", "Tpl_Enemy", function (slot0)
			setParent(slot0, uv0.tf)

			tf(slot0).anchoredPosition = Vector2(0, 10)

			uv0:GetLoader():GetSprite("enemies/" .. uv1.prefab, "", findTF(slot0, "icon"))
			setActive(findTF(slot0, "lv"), false)
			setActive(findTF(slot0, "titleContain/bg_boss"), false)
			setActive(findTF(slot0, "damage_count"), false)
			setActive(findTF(slot0, "fighting"), false)

			uv0.enemy = slot0

			uv0:Update()
		end)
	elseif slot1.flag == ChapterConst.CellFlagDisabled and slot0.state ~= uv0.StateDead then
		slot0.state = uv0.StateDead

		if not IsNil(slot0.enemy) then
			slot3 = slot0.enemy

			setActive(findTF(slot3, "lv"), true)
			setActive(findTF(slot3, "titleContain"), true)
			setActive(findTF(slot3, "damage_count"), true)
			setActive(findTF(slot3, "fighting"), true)
		end

		slot0.enemy = nil

		slot0:ClearLoader()
		assert(pg.land_based_template[slot1.attachmentId], "land_based_template not exist: " .. slot1.attachmentId)

		slot4 = slot0:GetLoader()

		slot4:GetPrefab("leveluiview/Tpl_Dead", "Tpl_Dead", function (slot0)
			setParent(slot0, uv0.tf)

			tf(slot0).anchoredPosition = Vector2(0, 10)

			uv0:GetLoader():GetSprite("enemies/" .. uv1.prefab .. "_d_blue", "", findTF(slot0, "icon"))
			setActive(findTF(slot0, "effect_not_open"), false)
			setActive(findTF(slot0, "effect_open"), false)
			setActive(findTF(slot0, "huoqiubaozha"), uv2 == uv3.StateLive)

			uv0.dead = slot0

			uv0:ResetCanvasOrder()
			uv0:Update()
		end)
	end

	if slot1.flag == ChapterConst.CellFlagActive and slot0.enemy then
		setActive(findTF(slot0.enemy, "effect_found"), slot1.trait == ChapterConst.TraitVirgin)

		if slot1.trait == ChapterConst.TraitVirgin then
			pg.CriMgr.GetInstance():PlaySoundEffect_V3(SFX_UI_WEIGHANCHOR_ENEMY)
		end
	end
end

slot0.DestroyGO = function(slot0)
	if not IsNil(slot0.enemy) then
		slot1 = slot0.enemy

		setActive(findTF(slot1, "lv"), true)
		setActive(findTF(slot1, "titleContain"), true)
		setActive(findTF(slot1, "damage_count"), true)
		setActive(findTF(slot1, "fighting"), true)
	end

	uv0.super.DestroyGO(slot0)
end

return slot0
