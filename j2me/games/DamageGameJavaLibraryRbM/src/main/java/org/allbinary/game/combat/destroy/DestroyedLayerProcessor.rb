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
        (DestroyedLayerProcessor.send(:remove_const, :DESTROYED_LAYER_PROCESSOR) if DestroyedLayerProcessor.const_defined?(:DESTROYED_LAYER_PROCESSOR, false); DestroyedLayerProcessor.const_set(:DESTROYED_LAYER_PROCESSOR, DestroyedLayerProcessor.new()))
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:DESTROYED_LAYER_PROCESSOR, BasicLayerProcessor::NULL_LAYER_PROCESSOR)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DestroyedLayerProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:DESTROYED_LAYER_PROCESSOR].include?(name)
        end
        super
    end
end

autoload :DestroyEventCircularStaticPool, "org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool"
autoload :DestroyedEvent, "org/allbinary/game/combat/destroy/event/DestroyedEvent"
autoload :DestroyedEventHandler, "org/allbinary/game/combat/destroy/event/DestroyedEventHandler"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"

begin
    DestroyedLayerProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

