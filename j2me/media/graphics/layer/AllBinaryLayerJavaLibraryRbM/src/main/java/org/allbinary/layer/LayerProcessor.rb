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
# package org.allbinary.layer

require "org/allbinary/layer/LayerProcessorInterface"

class LayerProcessor
    include LayerProcessorInterface
    attr_accessor :commonStrings, :layerManager

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @layerManager = nil
    end
    

    def initialize(layerManager)
        initialize_fields
        @layerManager = layerManager
    end
    

    # throws Exception
    def processAt(allBinaryLayerManager, layerInterface, index)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def isProcessorLayer(layerInterface)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def getLayerManager()
        return @layerManager
    end
    

    # throws Exception
    def process(allBinaryLayerManager)
        layerManager = self.getLayerManager()
        size = layerManager.getSize()
        (0...size).each do |index|
            self.processAt(allBinaryLayerManager, layerManager.getLayerAt(index), index)
        end
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/layer/LayerManager"

