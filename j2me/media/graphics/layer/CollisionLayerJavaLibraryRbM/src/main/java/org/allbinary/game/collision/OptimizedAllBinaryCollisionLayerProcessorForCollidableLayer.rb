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
# package org.allbinary.game.collision

require "org/allbinary/layer/LayerProcessor"

class OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer < LayerProcessor
    

    def initialize()
        super(OptimizedAllBinaryCollisionLayerManager.new())
    end
    

    # throws Exception
    def processAt(allBinaryLayerManager, layerInterface, startIndex)
        collidableInterfaceCompositeInterface = layerInterface
        collidableBase = collidableInterfaceCompositeInterface.getCollidableInferface()
        if collidableBase.isCollidable(collidableInterfaceCompositeInterface)
            layerManager = self.getLayerManager()
            size = layerManager.getSize()
            collidableInterfaceCompositeInterface2 = nil
            collidableBase2 = nil
            (startIndex + 1...size).each do |index|
                collidableInterfaceCompositeInterface2 = layerManager.getLayerAt(index)
                collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface()
                if collidableBase2.isCollidable(collidableInterfaceCompositeInterface) && collidableBase.isCollision(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                    collidableBase.collide(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                    collidableBase2.collide(collidableInterfaceCompositeInterface2, collidableInterfaceCompositeInterface)
                end
            end
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

require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/layer/LayerManager"
require "org/allbinary/game/collision/CollidableBaseBehavior"
require "org/allbinary/game/collision/OptimizedAllBinaryCollisionLayerManager"

