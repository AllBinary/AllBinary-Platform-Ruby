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

autoload :CollidableInterfaceCompositeInterface, "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :AllBinaryCollisionManager, "org/allbinary/game/collision/layer/AllBinaryCollisionManager"
autoload :CollidableInterfaceLayerManager, "org/allbinary/game/collision/layer/CollidableInterfaceLayerManager"

