slot0 = class("JiqilifuSkinPermanentPage", import(".TemplatePage.SkinTemplatePage"))

slot0.OnUpdateFlush = function(slot0)
	uv0.super.OnUpdateFlush(slot0)
	setText(slot0.dayTF, setColorStr(slot0.nday, "#6CF7C1FF") .. "/" .. #slot0.taskGroup)
end

return slot0
