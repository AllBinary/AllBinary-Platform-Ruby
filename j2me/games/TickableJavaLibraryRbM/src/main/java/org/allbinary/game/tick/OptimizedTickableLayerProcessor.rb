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

require "org/allbinary/layer/LayerProcessor"

class OptimizedTickableLayerProcessor < LayerProcessor
    

    def initialize()
        super(OptimizedTickableLayerManager.new())
    end
    

    # throws Exception
    def processAt(allBinaryLayerManager, layerInterface, index)
        tickableInterface = layerInterface
        tickableInterface.processTick(allBinaryLayerManager)
    end
    

    def isProcessorLayer(layerInterface)
        if layerInterface.implmentsTickableInterface()
            return true
        else
            return false
        end
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayer"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/game/tick/OptimizedTickableLayerManager"

