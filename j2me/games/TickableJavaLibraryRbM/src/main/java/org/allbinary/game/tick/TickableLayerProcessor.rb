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

class TickableLayerProcessor < ::Org::Allbinary::Layer::LayerProcessor
    

    def initialize()
        super(TickableLayerManager.new())
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

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
autoload :TickableInterface, "org/allbinary/game/tick/TickableInterface" unless const_defined?(:TickableInterface, false)
autoload :TickableLayerManager, "org/allbinary/game/tick/TickableLayerManager" unless const_defined?(:TickableLayerManager, false)

end; end; end; end

