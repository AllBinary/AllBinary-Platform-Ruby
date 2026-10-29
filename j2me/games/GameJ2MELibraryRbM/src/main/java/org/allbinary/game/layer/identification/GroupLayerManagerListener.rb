#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer.identification

require "org/allbinary/layer/event/LayerManagerEventListener"

class GroupLayerManagerListener < LayerManagerEventListener
    attr_accessor :logUtil, :list

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        return GroupLayerManagerListener::SINGLETON
    end
    

    def initialize()
        super()
        initialize_fields
        LayerManagerEventHandler.getInstance().addListener(self)
    end
    

    def clear()
        groupList = nil
        size = @list.size()
        (size - 1).step(0, -(1)) do |index|
            groupList = @list.objectArray[index]
            groupList.clear()
        end
    end
    

    def getGroupSizeFromInterface(groupInterfaceCompositeInterface)
        groupInterfaceArray = groupInterfaceCompositeInterface.getGroupInterface()
        return self.getGroupSize(groupInterfaceArray[0])
    end
    

    def getGroupSize(groupInterface)
        id = (groupInterface.getGroupId()).to_i
        return self.getGroupSizeById(id)
    end
    

    def getList(groupInterface)
        id = (groupInterface.getGroupId()).to_i
        return self.getListById(id)
    end
    

    def getListById(groupId)
        groupList = @list.objectArray[groupId]
        return groupList
    end
    

    def getGroupSizeById(groupId)
        groupList = @list.objectArray[groupId]
        size = groupList.size()
        return size
    end
    

    def areAllOtherGroupsEmpty(groupInterface)
        id = (groupInterface.getGroupId()).to_i
        size = @list.size()
        (size - 1).step(0, -(1)) do |index|
            if id != index
                groupSize = self.getGroupSizeById(index)
                if groupSize != 0
                    @logUtil.putF(StringMaker.new().append("Group Size: ").appendint(groupSize).to_s, self, "areAllOtherGroupsEmpty")
                    return false
                end
            end
        end
        return true
    end
    

    def isIdInList(id, excludeGroupList)
        size = excludeGroupList.size()
        groupInterfaceArray = nil
        groupInterface = nil
        groupId = 0
        (size - 1).step(0, -(1)) do |index|
            groupInterfaceArray = excludeGroupList.objectArray[index]
            size2 = groupInterfaceArray.length
            (0...size2).each do |index2|
                groupInterface = groupInterfaceArray[index2]
                groupId = (groupInterface.getGroupId()).to_i
                if groupId == id
                    return true
                end
            end
        end
        return false
    end
    

    def areAllOtherGroupsLessThan(excludeGroupList, maxSize)
        size = @list.size()
        (size - 1).step(0, -(1)) do |index|
            if !self.isIdInList(index, excludeGroupList)
                groupSize = self.getGroupSizeById(index)
                if groupSize >= maxSize
                    return false
                end
            end
        end
        return true
    end
    

    def init(total)
        while @list.size() <= total + 1
            @list.add(BasicArrayListD.new())
        end
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    # throws Exception
    def onCreateLayerManagerEvent(layerManagerEvent)
        layerInterface = layerManagerEvent.getLayerInterface()
        groupInterfaceArray = layerInterface.getGroupInterface()
        size = groupInterfaceArray.length
        id = 0
        groupList = nil
        (0...size).each do |index|
            id = (groupInterfaceArray[index].getGroupId()).to_i
            groupList = @list.objectArray[id]
            if groupList == nil
                @logUtil.putF(StringMaker.new().append("id: ").appendint(id).to_s, self, "onCreateLayerManagerEvent")
            end
            if !groupList.contains(layerInterface)
                groupList.add(layerInterface)
            else
            end
        end
    end
    

    # throws Exception
    def onDeleteLayerManagerEvent(layerManagerEvent)
        layerInterface = layerManagerEvent.getLayerInterface()
        groupInterfaceArray = layerInterface.getGroupInterface()
        size = groupInterfaceArray.length
        id = 0
        groupList = nil
        (0...size).each do |index|
            id = (groupInterfaceArray[index].getGroupId()).to_i
            groupList = @list.objectArray[id]
            groupList.remove(layerInterface)
        end
    end
    

    def log()
        stringBuffer = StringMaker.new()
        _GROUP = "Group: "
        _SPACE = CommonSeps.getInstance().SPACE
        _TOTAL_LABEL = CommonLabels.getInstance().TOTAL_LABEL
        size = @list.size()
        (size - 1).step(0, -(1)) do |index|
            groupList = @list.objectArray[index]
            stringBuffer.append(_GROUP)
            stringBuffer.appendint(index)
            stringBuffer.append(_SPACE)
            stringBuffer.append(_TOTAL_LABEL)
            stringBuffer.appendint(groupList.size())
            stringBuffer.append(_SPACE)
        end
        @logUtil.putF(stringBuffer.to_s, self, "log")
    end
end

require "org/allbinary/game/identification/Group"
require "org/allbinary/game/identification/GroupInterfaceCompositeInterface"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/event/LayerManagerEvent"
require "org/allbinary/layer/event/LayerManagerEventHandler"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class GroupLayerManagerListener
    SINGLETON = GroupLayerManagerListener.new()
end

