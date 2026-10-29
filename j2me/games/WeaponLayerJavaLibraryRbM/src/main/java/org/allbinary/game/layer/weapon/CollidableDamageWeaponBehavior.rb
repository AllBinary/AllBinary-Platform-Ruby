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
# package org.allbinary.game.layer.weapon

require "org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior"

class CollidableDamageWeaponBehavior < CollidableDestroyableDamageableBehavior
    attr_accessor :collided, :collisionHelper

    def initialize_fields
        @collided = false
        @collisionHelper = nil
    end
    

    def initialize(collidable)
        super(collidable)
        initialize_fields
        self.setCollided(false)
        self.setCollidable(true)
        @collisionHelper = CollidableHelperFactory.getInstance()
    end
    

    def init(sourceLayerInterface)
        self.setCollided(false)
        @collisionHelper.setOwnerLayerInterface(sourceLayerInterface)
    end
    

    def isCollision(ownerLayer, collisionLayer)
        if @collisionHelper.isCollidable(collisionLayer)
            if ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]
                return super(ownerLayer, collisionLayer)
            end
        end
        return false
    end
    

    # throws Exception
    def collide(ownerLayer, collisionLayer)
        super(ownerLayer, collisionLayer)
        @collided = true
    end
    

    def isCollisionInterface(ownerLayer, collidableInterfaceCompositeInterface)
        if @collisionHelper.isCollidable(collidableInterfaceCompositeInterface)
            layerInterface = collidableInterfaceCompositeInterface
            if ownerLayer.getGroupInterface()[0] != layerInterface.getGroupInterface()[0]
                if @layerCollisionUtil.isCollision(ownerLayer, layerInterface)
                    return true
                end
            end
        end
        return false
    end
    

    # throws Exception
    def collideInterface(ownerLayer, collidableInterfaceCompositeInterface)
        @damageUtil.process(ownerLayer, collidableInterfaceCompositeInterface)
        @collided = true
    end
    

    def getCollisionTypeWith(layerInterface)
        return CollisionTypeFactory.getInstance().COLLISION
    end
    

    def isCollided()
        return @collided
    end
    

    def setCollided(collided)
        @collided = collided
    end
end

require "org/allbinary/game/collision/CollidableHelperFactory"
require "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
require "org/allbinary/game/collision/CollisionHelper"
require "org/allbinary/game/collision/CollisionType"
require "org/allbinary/game/collision/CollisionTypeFactory"
require "org/allbinary/game/combat/damage/DamageableInterface"
require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/layer/AllBinaryLayer"

