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


class AllBinaryCollisionManager
    

    def initialize()
    end
    

    def self.getInstance()
        return AllBinaryCollisionManager.allBinaryCollisionManager
    end
    

    # throws Exception
    def process(layerManager, collidableInterfaceCompositeInterface, startIndex)
        size = layerManager.getSize()
        (startIndex + 1...size).each do |index|
            collidableInterfaceCompositeInterface2 = layerManager.getLayerAt(index)
            self.collide(layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
        end
    end
    

    # throws Exception
    def collide(layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
        collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface()
        collidableBase = collidableInterfaceCompositeInterface.getCollidableInferface()
        if collidableBase2.isCollidable(collidableInterfaceCompositeInterface)
            if collidableBase.isCollisionInterface(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                collidableBase.collideInterface(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                collidableBase2.collideInterface(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface)
            end
        end
    end

    def self.allBinaryCollisionManager()
        return defined?(@@allBinaryCollisionManager) ? @@allBinaryCollisionManager : nil
    end

    def self.allBinaryCollisionManager=(value)
        @@allBinaryCollisionManager = value
    end
end

require "org/allbinary/game/collision/CollidableBaseBehavior"
require "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/layer/LayerManager"

class AllBinaryCollisionManager
    @@allBinaryCollisionManager = AllBinaryCollisionManager.new()
end

