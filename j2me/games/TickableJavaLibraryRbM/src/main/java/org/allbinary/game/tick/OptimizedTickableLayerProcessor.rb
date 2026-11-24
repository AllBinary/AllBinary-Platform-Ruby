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
# package org.allbinary.game.tick

require "java/lang/JavaOverload"
require "org/allbinary/layer/LayerProcessor"

module ::Org; module Allbinary; module Game; module Tick

class OptimizedTickableLayerProcessor < ::Org::Allbinary::Layer::LayerProcessor
    

    def initialize()
        super(OptimizedTickableLayerManager.new())
    end
    

    # throws Exception
    def processAt(allBinaryLayerManager, layerInterface, index)
        tickableInterface = layerInterface
        tickableInterface.processTick(allBinaryLayerManager)
    end
    java_overload :processAt, 3
    

    def isProcessorLayer(layerInterface)
        if layerInterface.implmentsTickableInterface()
            return true
        else
            return false
        end
    end
    java_overload :isProcessorLayer, 1
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayer, "org/allbinary/game/layer/AllBinaryGameLayer" unless const_defined?(:AllBinaryGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
autoload :OptimizedTickableLayerManager, "org/allbinary/game/tick/OptimizedTickableLayerManager" unless const_defined?(:OptimizedTickableLayerManager, false)

end; end; end; end

