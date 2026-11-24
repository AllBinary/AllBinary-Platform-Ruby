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

require "java/lang/JavaOverload"
require "org/allbinary/layer/event/LayerManagerEventListener"

module ::Org; module Allbinary; module Game; module Layer; module Identification

class GroupLayerManagerListener < ::Org::Allbinary::Layer::Event::LayerManagerEventListener
    attr_accessor :logUtil, :list

    def jfields_org_allbinary_game_layer_identification_GroupLayerManagerListener
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def self.getInstance()
        return GroupLayerManagerListener::SINGLETON
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_layer_identification_GroupLayerManagerListener
        ::Org::Allbinary::Layer::Event::LayerManagerEventHandler.getInstance().addListener(self)
    end
    

    def clear()
        groupList = nil
        size = @list.size()
        (size - 1).step(0, -(1)) do |index|
            groupList = @list.objectArray[index]
            groupList.clear()
        end
    end
    java_overload :clear, 0
    

    def getGroupSizeFromInterface(groupInterfaceCompositeInterface)
        groupInterfaceArray = groupInterfaceCompositeInterface.getGroupInterface()
        return self.getGroupSize(groupInterfaceArray[0])
    end
    java_overload :getGroupSizeFromInterface, 1
    

    def getGroupSize(groupInterface)
        id = ((groupInterface.getGroupId()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        return self.getGroupSizeById(id)
    end
    java_overload :getGroupSize, 1
    

    def getList(groupInterface)
        id = ((groupInterface.getGroupId()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        return self.getListById(id)
    end
    java_overload :getList, 1
    

    def getListById(groupId)
        groupList = @list.objectArray[groupId]
        return groupList
    end
    java_overload :getListById, 1
    

    def getGroupSizeById(groupId)
        groupList = @list.objectArray[groupId]
        size = groupList.size()
        return size
    end
    java_overload :getGroupSizeById, 1
    

    def areAllOtherGroupsEmpty(groupInterface)
        id = ((groupInterface.getGroupId()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        size = @list.size()
        (size - 1).step(0, -(1)) do |index|
            if id != index
                groupSize = self.getGroupSizeById(index)
                if groupSize != 0
                    @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Group Size: ").appendint(groupSize).to_s, self, "areAllOtherGroupsEmpty")
                    return false
                end
            end
        end
        return true
    end
    java_overload :areAllOtherGroupsEmpty, 1
    

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
                groupId = ((groupInterface.getGroupId()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
                if groupId == id
                    return true
                end
            end
        end
        return false
    end
    java_overload :isIdInList, 2
    

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
    java_overload :areAllOtherGroupsLessThan, 2
    

    def init(total)
        while @list.size() <= total + 1
            @list.add(::Org::Allbinary::Util::BasicArrayListD.new())
        end
    end
    java_overload :init, 1
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    # throws Exception
    def onCreateLayerManagerEvent(layerManagerEvent)
        layerInterface = layerManagerEvent.getLayerInterface()
        groupInterfaceArray = layerInterface.getGroupInterface()
        size = groupInterfaceArray.length
        id = 0
        groupList = nil
        (0...size).each do |index|
            id = ((groupInterfaceArray[index].getGroupId()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            groupList = @list.objectArray[id]
            if groupList == nil
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("id: ").appendint(id).to_s, self, "onCreateLayerManagerEvent")
            end
            if !groupList.contains(layerInterface)
                groupList.add(layerInterface)
            else
            end
        end
    end
    java_overload :onCreateLayerManagerEvent, 1
    

    # throws Exception
    def onDeleteLayerManagerEvent(layerManagerEvent)
        layerInterface = layerManagerEvent.getLayerInterface()
        groupInterfaceArray = layerInterface.getGroupInterface()
        size = groupInterfaceArray.length
        id = 0
        groupList = nil
        (0...size).each do |index|
            id = ((groupInterfaceArray[index].getGroupId()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            groupList = @list.objectArray[id]
            groupList.remove(layerInterface)
        end
    end
    java_overload :onDeleteLayerManagerEvent, 1
    

    def log()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        _GROUP = "Group: "
        _SPACE = ::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE
        _TOTAL_LABEL = ::Org::Allbinary::StringPackage::CommonLabels.getInstance().TOTAL_LABEL
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
    java_overload :log, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, GroupLayerManagerListener.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GroupLayerManagerListener"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :GroupInterfaceCompositeInterface, "org/allbinary/game/identification/GroupInterfaceCompositeInterface" unless const_defined?(:GroupInterfaceCompositeInterface, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; module Event; autoload :LayerManagerEvent, "org/allbinary/layer/event/LayerManagerEvent" unless const_defined?(:LayerManagerEvent, false); end; end; end; end
module ::Org; module Allbinary; module Layer; module Event; autoload :LayerManagerEventHandler, "org/allbinary/layer/event/LayerManagerEventHandler" unless const_defined?(:LayerManagerEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    GroupLayerManagerListener.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

