slot0 = class("TotalTaskProxy", import(".NetProxy"))
slot0.act_task_onece_type = {
	6,
	26
}
slot0.avatar_task_type = {
	ActivityConst.ACTIVITY_TYPE_PT_OTHER
}
slot0.activity_task_type = {
	ActivityConst.ACTIVITY_TYPE_TASK_RYZA,
	ActivityConst.ACTIVITY_TYPE_HOTSPRING_2,
	ActivityConst.ACTIVITY_TYPE_NOT_TRACEABLE
}
slot0.normal_task_type = {
	ActivityConst.ACTIVITY_TYPE_TASKS,
	ActivityConst.ACTIVITY_TYPE_PT_CRUSING
}

slot0.register = function(slot0)
	slot0.avatarFrames = {}
	slot0.actTasks = {}

	slot0:on(20201, function (slot0)
		getProxy(AvatarFrameProxy):clearData()
		getProxy(ActivityTaskProxy):clearData()

		for slot4, slot5 in ipairs(slot0.info) do
			slot7 = slot5.tasks
			slot8 = slot5.finish_ids

			if table.contains(TotalTaskProxy.avatar_task_type, pg.activity_template[slot5.act_id].type) then
				getProxy(AvatarFrameProxy):initListData(slot6, slot7, slot8)
			elseif table.contains(TotalTaskProxy.activity_task_type, slot9) then
				getProxy(ActivityTaskProxy):initActList(slot6, slot7, slot8)
			elseif table.contains(TotalTaskProxy.normal_task_type, slot9) then
				getProxy(TaskProxy):initActData(slot6, slot7, slot8)
			end
		end
	end)
	slot0:on(20202, function (slot0)
		for slot4, slot5 in ipairs(slot0.info) do
			slot7 = slot5.tasks

			if table.contains(TotalTaskProxy.avatar_task_type, pg.activity_template[slot5.act_id].type) then
				getProxy(AvatarFrameProxy):update(slot6, slot7)
			elseif table.contains(TotalTaskProxy.activity_task_type, slot8) then
				getProxy(ActivityTaskProxy):updateActList(slot6, slot7)
			elseif table.contains(TotalTaskProxy.normal_task_type, slot8) then
				getProxy(TaskProxy):updateActProgress(slot6, slot7)
			end
		end

		uv0.facade:sendNotification(GAME.TOTAL_TASK_UPDATED)
	end)
	slot0:on(20203, function (slot0)
		for slot4, slot5 in ipairs(slot0.info) do
			slot7 = slot5.tasks

			if table.contains(TotalTaskProxy.avatar_task_type, pg.activity_template[slot5.act_id].type) then
				getProxy(AvatarFrameProxy):addData(slot6, slot7)
			elseif table.contains(TotalTaskProxy.activity_task_type, slot8) then
				getProxy(ActivityTaskProxy):addActList(slot6, slot7)
			elseif table.contains(TotalTaskProxy.normal_task_type, slot8) then
				getProxy(TaskProxy):addActData(slot6, slot7)
			end

			uv0:sendNotification(ActivityProxy.ACTIVITY_UPDATED, getProxy(ActivityProxy):getActivityById(slot6):clone())
		end

		uv0.facade:sendNotification(GAME.TOTAL_TASK_UPDATED)
	end)
	slot0:on(20204, function (slot0)
		for slot4, slot5 in ipairs(slot0.info) do
			slot7 = slot5.tasks

			if table.contains(TotalTaskProxy.avatar_task_type, pg.activity_template[slot5.act_id].type) then
				getProxy(AvatarFrameProxy):removeData(slot6, slot7)
			elseif table.contains(TotalTaskProxy.activity_task_type, slot8) then
				getProxy(ActivityTaskProxy):removeActList(slot6, slot7)
			elseif table.contains(TotalTaskProxy.normal_task_type, slot8) then
				getProxy(TaskProxy):removeActData(slot6, slot7)
			end
		end

		uv0.facade:sendNotification(GAME.TOTAL_TASK_UPDATED)
	end)
end

slot0.timeCall = function(slot0)
	return {
		[ProxyRegister.DayCall] = function (slot0)
			uv0:clearTimeOut()
		end
	}
end

slot0.clearTimeOut = function(slot0)
	getProxy(AvatarFrameProxy):clearTimeOut()
	getProxy(TaskProxy):clearTimeOut()
end

return slot0
