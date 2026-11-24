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

require "java/lang/JavaOverload"
require "org/allbinary/layer/LayerProcessorInterface"

module ::Org; module Allbinary; module Layer

class LayerProcessor
    include LayerProcessorInterface
    attr_accessor :commonStrings, :layerManager

    def jfields_org_allbinary_layer_LayerProcessor
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @layerManager = nil unless instance_variable_defined?(:@layerManager)
    end
    

    def initialize(layerManager)
        jfields_org_allbinary_layer_LayerProcessor
        @layerManager = layerManager
    end
    

    # throws Exception
    def processAt(allBinaryLayerManager, layerInterface, index)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :processAt, 3
    

    # throws Exception
    def isProcessorLayer(layerInterface)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :isProcessorLayer, 1
    

    def getLayerManager()
        return @layerManager
    end
    java_overload :getLayerManager, 0
    

    # throws Exception
    def process(allBinaryLayerManager)
        layerManager = self.getLayerManager()
        size = layerManager.getSize()
        (0...size).each do |index|
            self.processAt(allBinaryLayerManager, layerManager.getLayerAt(index), index)
        end
    end
    java_overload :process, 1
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false)
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false)
autoload :LayerManager, "org/allbinary/layer/LayerManager" unless const_defined?(:LayerManager, false)

end; end; end

