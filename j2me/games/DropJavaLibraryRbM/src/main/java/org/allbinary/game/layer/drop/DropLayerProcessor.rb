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
# package org.allbinary.game.layer.drop

require "org/allbinary/layer/BasicLayerProcessor"

class DropLayerProcessor < BasicLayerProcessor
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        return DropLayerProcessor::LAYER_PROCESSOR
    end
    

    # throws Exception
    def process(allBinaryLayerManager)
        list = self.getList()
        size = list.size()
        layerInterface = nil
        dropLayerInterface = nil
        (0...size).each do |index|
            layerInterface = list.objectArray[index]
            dropLayerInterface = layerInterface
            layerInterface = dropLayerInterface.getDroppedLayer()
            allBinaryLayerManager.append(layerInterface)
        end
        list.clear()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:LAYER_PROCESSOR, DropLayerProcessor.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DropLayerProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:LAYER_PROCESSOR].include?(name)
        end
        super
    end
end

autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :DropLayerInterface, "org/allbinary/game/layer/drop/DropLayerInterface"

begin
    DropLayerProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

