slot0 = class("StormSeaPtPage", import(".TemplatePage.PtTemplatePage"))

slot0.OnUpdateFlush = function(slot0)
	uv0.super.OnUpdateFlush(slot0)

	slot1, slot2, slot3 = slot0.ptData:GetResProgress()

	setText(slot0.progress, setColorStr(slot1 .. "/" .. slot2, "#a6afd3"))
	setActive(slot0.battleBtn, false)
end

return slot0
