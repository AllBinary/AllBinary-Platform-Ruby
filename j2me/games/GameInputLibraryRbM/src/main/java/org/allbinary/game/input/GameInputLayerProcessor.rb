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
# package org.allbinary.game.input

require "org/allbinary/layer/LayerProcessor"

class GameInputLayerProcessor < LayerProcessor
    

    def initialize()
        super(GameInputLayerManager.new())
    end
    

    # throws Exception
    def processAt(allBinaryLayerManager, layerInterface, index)
        gameInputInterface = layerInterface
        gameInputInterface.processInput(allBinaryLayerManager)
    end
    

    def isProcessorLayer(layerInterface)
        if layerInterface.implmentsGameInputInterface()
            return true
        else
            return false
        end
    end
end

require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/game/input/GameInputInterface"
require "org/allbinary/game/input/GameInputLayerManager"

