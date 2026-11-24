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
require "org/allbinary/layer/BasicLayerProcessorInterface"

module ::Org; module Allbinary; module Layer

module LayerProcessorInterface
    include BasicLayerProcessorInterface
    

    def getLayerManager()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getLayerManager, 0
    

    # throws Exception
    def processAt(allBinaryLayerManager, layerInterface, index)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :processAt, 3
    

    # throws Exception
    def isProcessorLayer(layerInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isProcessorLayer, 1
end

autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false)
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false)
autoload :LayerManager, "org/allbinary/layer/LayerManager" unless const_defined?(:LayerManager, false)

end; end; end

