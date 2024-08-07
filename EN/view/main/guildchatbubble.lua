slot0 = class("GuildChatBubble", import(".ChatBubble"))

slot0.init = function(slot0)
	slot0.nameTF = findTF(slot0.tf, "name_bg/name"):GetComponent("Text")
	slot0.face = findTF(slot0.tf, "face/content")
	slot0.circle = findTF(slot0.tf, "shipicon/frame")
	slot0.timeTF = findTF(slot0.tf, "time"):GetComponent("Text")
	slot0.headTF = findTF(slot0.tf, "shipicon/icon"):GetComponent("Image")
	slot0.stars = findTF(slot0.tf, "shipicon/stars")
	slot0.star = findTF(slot0.stars, "star")
	slot0.frame = findTF(slot0.tf, "shipicon/frame"):GetComponent("Image")
	slot0.dutyTF = findTF(slot0.tf, "name_bg/duty")
	slot0.chatBgWidth = 550
end

slot0.OnChatFrameLoaded = function(slot0, slot1)
	slot2 = tf(slot1):Find("Text"):GetComponent(typeof(Text))

	if not slot0.prevChatFrameColor then
		slot0.prevChatFrameColor = slot2.color
	end

	slot0.charFrameTxt = slot2
end

slot0.dispose = function(slot0)
	uv0.super.dispose(slot0)

	if slot0.charFrameTxt and slot0.prevChatFrameColor then
		slot0.charFrameTxt.color = slot0.prevChatFrameColor
	end
end

return slot0
