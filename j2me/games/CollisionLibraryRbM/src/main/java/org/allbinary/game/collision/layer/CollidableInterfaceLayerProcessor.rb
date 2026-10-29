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
# package org.allbinary.game.collision.layer

require "org/allbinary/layer/LayerProcessor"

class CollidableInterfaceLayerProcessor < LayerProcessor
    

    def initialize()
        super(CollidableInterfaceLayerManager.new())
    end
    

    # throws Exception
    def processAt(allBinaryLayerManager, layerInterface, index)
        collidableInterfaceCompositeInterface = layerInterface
        if collidableInterfaceCompositeInterface.getCollidableInferface().isCollidable(collidableInterfaceCompositeInterface)
            AllBinaryCollisionManager.getInstance().process(self.getLayerManager(), collidableInterfaceCompositeInterface, index)
        end
    end
    

    def isProcessorLayer(layerInterface)
        if layerInterface.implmentsCollidableInterface()
            return true
        else
            return false
        end
    end
end

require "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/game/collision/layer/AllBinaryCollisionManager"
require "org/allbinary/game/collision/layer/CollidableInterfaceLayerManager"

