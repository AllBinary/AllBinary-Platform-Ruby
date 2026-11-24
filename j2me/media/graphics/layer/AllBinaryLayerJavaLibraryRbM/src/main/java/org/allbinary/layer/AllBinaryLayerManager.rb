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
require "java/lang/JavaOverload"
require "org/allbinary/layer/LayerManager"

module ::Org; module Allbinary; module Layer

class AllBinaryLayerManager < LayerManager
    attr_accessor :layerManagerEventHandler, :createLayerManagerEvent, :deleteLayerManagerEvent, :basicLayerProcessorArray

    def jfields_org_allbinary_layer_AllBinaryLayerManager
        @layerManagerEventHandler = ::Org::Allbinary::Layer::Event::LayerManagerEventHandler.getInstance()
        @createLayerManagerEvent = ::Org::Allbinary::Layer::Event::LayerManagerEvent.new(self, @layerManagerEventHandler.CREATE)
        @deleteLayerManagerEvent = ::Org::Allbinary::Layer::Event::LayerManagerEvent.new(self, @layerManagerEventHandler.DELETE)
        @basicLayerProcessorArray = Array.new(0, nil)
    end
    

    def initialize()
        super(LayerManagerNoDebug.getInstance())
        jfields_org_allbinary_layer_AllBinaryLayerManager
    end
    

    def getLayerProcessorArray()
        return @basicLayerProcessorArray
    end
    java_overload :getLayerProcessorArray, 0
    

    def setLayerProcessorArray(layerProcessorArray)
        @basicLayerProcessorArray = layerProcessorArray
    end
    java_overload :setLayerProcessorArray, 1
    

    def log()
        size = @basicLayerProcessorArray.length
        (0...size).each do |index|
            layerProcessorInterface = @basicLayerProcessorArray[index]
        end
    end
    java_overload :log, 0
    

    # throws Exception
    def append(layerInterface)
        if !self.contains(layerInterface)
            self.appendProcessors(layerInterface)
            AllBinaryLayerManager.superclass.java_super_method(:append, 1).bind(self).call(layerInterface)
        end
    end
    java_overload :append, 1
    

    # throws Exception
    def appendAt(layerInterface, index)
        if !self.contains(layerInterface)
            self.appendProcessors(layerInterface)
            AllBinaryLayerManager.superclass.java_super_method(:appendAt, 2).bind(self).call(layerInterface, index)
        end
    end
    java_overload :appendAt, 2
    

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
    java_overload :appendProcessors, 1
    

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
        AllBinaryLayerManager.superclass.java_super_method(:remove, 1).bind(self).call(layerInterface)
        end
    end
    java_overload :remove, 1
    

    # throws Exception
    def process()
        layerProcessorInterface = nil
        size = @basicLayerProcessorArray.length
        (0...size).each do |index|
            layerProcessorInterface = @basicLayerProcessorArray[index]
            layerProcessorInterface.process(self)
        end
    end
    java_overload :process, 0
    

    # throws Exception
    def cleanup()
        layerProcessorInterface = nil
        size = @basicLayerProcessorArray.length
        (0...size).each do |index|
            layerProcessorInterface = @basicLayerProcessorArray[index]
            layerProcessorInterface.getLayerManager().cleanup()
        end
        AllBinaryLayerManager.superclass.java_super_method(:cleanup, 0).bind(self).call()
    end
    java_overload :cleanup, 0
end

module ::Org; module Allbinary; module Layer; module Event; autoload :LayerManagerEvent, "org/allbinary/layer/event/LayerManagerEvent" unless const_defined?(:LayerManagerEvent, false); end; end; end; end
module ::Org; module Allbinary; module Layer; module Event; autoload :LayerManagerEventHandler, "org/allbinary/layer/event/LayerManagerEventHandler" unless const_defined?(:LayerManagerEventHandler, false); end; end; end; end
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false)
autoload :LayerManagerNoDebug, "org/allbinary/layer/LayerManagerNoDebug" unless const_defined?(:LayerManagerNoDebug, false)
autoload :LayerProcessor, "org/allbinary/layer/LayerProcessor" unless const_defined?(:LayerProcessor, false)

end; end; end

