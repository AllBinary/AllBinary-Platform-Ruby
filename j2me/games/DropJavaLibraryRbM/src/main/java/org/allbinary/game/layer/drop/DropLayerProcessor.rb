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
end

require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/layer/drop/DropLayerInterface"

class DropLayerProcessor
    LAYER_PROCESSOR = DropLayerProcessor.new()
end

