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
# package org.allbinary.game.combat.destroy

require "org/allbinary/layer/BasicLayerProcessor"

class DestroyedLayerProcessor < BasicLayerProcessor
    

    def initialize()
        super()
    end
    

    def self.init()
        DestroyedLayerProcessor::DESTROYED_LAYER_PROCESSOR = DestroyedLayerProcessor.new()
    end
    

    def self.getInstance()
        return DestroyedLayerProcessor::DESTROYED_LAYER_PROCESSOR
    end
    

    # throws Exception
    def process(allBinaryLayerManager)
        list = self.getList()
        size = list.size()
        destroyedEventHandler = DestroyedEventHandler.getInstance()
        destroyEventCircularStaticPool = DestroyEventCircularStaticPool.getInstance()
        destroyedEvent = nil
        layerInterface = nil
        (0...size).each do |index|
            layerInterfaceCanBeNull = list.objectArray[index]
            if layerInterfaceCanBeNull != nil
                layerInterface = layerInterfaceCanBeNull
                allBinaryLayerManager.remove(layerInterface)
                destroyedEvent = destroyEventCircularStaticPool.getInstanceForLayer(layerInterface)
                destroyedEventHandler.fireEvent(destroyedEvent)
            else
                commonStrings = CommonStrings.getInstance()
            end
        end
        list.clear()
    end
end

require "org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool"
require "org/allbinary/game/combat/destroy/event/DestroyedEvent"
require "org/allbinary/game/combat/destroy/event/DestroyedEventHandler"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"

class DestroyedLayerProcessor
    DESTROYED_LAYER_PROCESSOR = BasicLayerProcessor::NULL_LAYER_PROCESSOR
end

