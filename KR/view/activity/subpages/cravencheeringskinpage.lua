slot0 = class("CravenCheeringSkinPage", import(".TemplatePage.SkinTemplatePage"))

slot0.OnInit = function(slot0)
	uv0.super.OnInit(slot0)

	slot0.step_txt = slot0:findTF("step_text", slot0.bg)
end

slot0.OnUpdateFlush = function(slot0)
	uv0.super.OnUpdateFlush(slot0)
	setText(slot0.step_txt, setColorStr(slot0.nday, "#89FF59FF") .. "/" .. #slot0.taskGroup)
end

return slot0
