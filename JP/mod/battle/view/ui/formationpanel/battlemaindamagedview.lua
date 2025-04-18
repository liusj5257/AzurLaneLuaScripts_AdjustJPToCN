ys = ys or {}
slot0 = ys
slot1 = slot0.Battle.BattleConfig
slot0.Battle.BattleMainDamagedView = class("BattleMainDamagedView")
slot2 = class("BattleMainDamagedView")
slot0.Battle.BattleMainDamagedView = slot2
slot2.__name = "BattleMainDamagedView"

slot2.Ctor = function(slot0, slot1)
	slot0._go = slot1

	slot0:Init()
end

slot2.Init = function(slot0)
	slot0._tf = slot0._go.transform
	slot0._bleedView = findTF(slot0._tf, "mainUnitDamaged")
	slot0._bleedAnimation = slot0._bleedView:GetComponent(typeof(Animator))

	slot0._bleedView:GetComponent(typeof(DftAniEvent)):SetEndEvent(function (slot0)
		setActive(uv0._bleedView, false)

		uv0._isPlaying = false
	end)
	setActive(slot0._bleedView, false)

	slot0._isPlaying = false
end

slot2.Play = function(slot0)
	if not slot0._isPlaying then
		setActive(slot0._bleedView, true)
	end

	slot0._isPlaying = true
end

slot2.Dispose = function(slot0)
	slot0._bleedView = nil
	slot0._bleedAnimation = nil
	slot0._tf = nil
	slot0._go = nil
end
