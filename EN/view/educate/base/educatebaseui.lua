slot0 = class("EducateBaseUI", import("view.base.BaseUI"))
slot0.EDUCATE_GO_SCENE = "EDUCATE_GO_SCENE"
slot0.EDUCATE_CHANGE_SCENE = "EDUCATE_CHANGE_SCENE"
slot0.EDUCATE_GO_SUBLAYER = "EDUCATE_GO_SUBLAYER"
slot0.EDUCATE_ON_AWARD = "EDUCATE_ON_AWARD"
slot0.EDUCATE_ON_ITEM = "EDUCATE_ON_ITEM"
slot0.EDUCATE_ON_MSG_TIP = "EDUCATE_ON_MSG_TIP"
slot0.EDUCATE_ON_UNLOCK_TIP = "EDUCATE_ON_UNLOCK_TIP"

slot0.getGroupName = function(slot0)
	return LayerWeightConst.GROUP_EDUCATE
end

return slot0
