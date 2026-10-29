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

require "java/lang/Object"
require "org/allbinary/layer/LayerManager"

class AllBinaryLayerManager < LayerManager
    attr_accessor :layerManagerEventHandler, :createLayerManagerEvent, :deleteLayerManagerEvent, :basicLayerProcessorArray

    def initialize_fields
        @layerManagerEventHandler = LayerManagerEventHandler.getInstance()
        @createLayerManagerEvent = LayerManagerEvent.new(self, @layerManagerEventHandler.CREATE)
        @deleteLayerManagerEvent = LayerManagerEvent.new(self, @layerManagerEventHandler.DELETE)
        @basicLayerProcessorArray = Array.new(0, nil)
    end
    

    def initialize()
        super(LayerManagerNoDebug.getInstance())
        initialize_fields
    end
    

    def getLayerProcessorArray()
        return @basicLayerProcessorArray
    end
    

    def setLayerProcessorArray(layerProcessorArray)
        @basicLayerProcessorArray = layerProcessorArray
    end
    

    def log()
        size = @basicLayerProcessorArray.length
        (0...size).each do |index|
            layerProcessorInterface = @basicLayerProcessorArray[index]
        end
    end
    

    # throws Exception
    def append(layerInterface)
        if !self.contains(layerInterface)
            self.appendProcessors(layerInterface)
            super(layerInterface)
        end
    end
    

    # throws Exception
    def appendAt(layerInterface, index)
        if !self.contains(layerInterface)
            self.appendProcessors(layerInterface)
            super(layerInterface, index)
        end
    end
    

    # throws Exception
    def appendProcessors(layerInterface)
        @createLayerManagerEvent.setLayerInterface(layerInterface)
        @layerManagerEventHandler.fireEvent(@createLayerManagerEvent)
        layerProcessorInterface = nil
        index = @basicLayerProcessorArray.length
        while (index -= 1) >= 0
            layerProcessorInterface = @basicLayerProcessorArray[index]
            if layerProcessorInterface.isProcessorLayer(layerInterface)
                layerProcessorInterface.getLayerManager().append(layerInterface)
            end
        end
    end
    

    # throws Exception
    def remove(layerInterface)
        java_monitor.synchronize do
        @deleteLayerManagerEvent.setLayerInterface(layerInterface)
        @layerManagerEventHandler.fireDeleteEvent(@deleteLayerManagerEvent)
        layerProcessorInterface = nil
        index = @basicLayerProcessorArray.length
        while (index -= 1) >= 0
            layerProcessorInterface = @basicLayerProcessorArray[index]
            layerProcessorInterface.getLayerManager().remove(layerInterface)
        end
        super(layerInterface)
        end
    end
    

    # throws Exception
    def process()
        layerProcessorInterface = nil
        size = @basicLayerProcessorArray.length
        (0...size).each do |index|
            layerProcessorInterface = @basicLayerProcessorArray[index]
            layerProcessorInterface.process(self)
        end
    end
    

    # throws Exception
    def cleanup()
        layerProcessorInterface = nil
        size = @basicLayerProcessorArray.length
        (0...size).each do |index|
            layerProcessorInterface = @basicLayerProcessorArray[index]
            layerProcessorInterface.getLayerManager().cleanup()
        end
        super()
    end
end

require "org/allbinary/layer/event/LayerManagerEvent"
require "org/allbinary/layer/event/LayerManagerEventHandler"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/LayerManagerNoDebug"
require "org/allbinary/layer/LayerProcessor"

