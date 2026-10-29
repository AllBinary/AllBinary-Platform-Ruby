# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.layer

require "org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior"

class CollidableRTSBehavior < CollidableDestroyableDamageableBehavior
    

    def initialize(collidable)
        super(collidable)
    end
    

    def isCollision(ownerLayer, collidableInterfaceCompositeInterface)
        collisionTypeFactory = CollisionTypeFactory.getInstance()
        collisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer)
        if collisionType == collisionTypeFactory.PICKUP
        elsif collisionType == collisionTypeFactory.COLLISION
            return super(ownerLayer, collidableInterfaceCompositeInterface)
        else
            if collidableInterfaceCompositeInterface.getX2() <= ownerLayer.getXP() || collidableInterfaceCompositeInterface.getY2() <= ownerLayer.getYP() || collidableInterfaceCompositeInterface.getYP() >= ownerLayer.getY2() || collidableInterfaceCompositeInterface.getXP() >= ownerLayer.getX2()
                return false
            else
                return true
            end
        end
        return false
    end
    

    # throws Exception
    def collide(ownerLayer, collidableInterfaceCompositeInterface)
        collisionTypeFactory = CollisionTypeFactory.getInstance()
        collisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer)
        if collisionType == collisionTypeFactory.PICKUP
        elsif collisionType == collisionTypeFactory.COLLISION
            super(ownerLayer, collidableInterfaceCompositeInterface)
        else
            self.collideNone(ownerLayer, collidableInterfaceCompositeInterface)
        end
    end
    

    # throws Exception
    def collideNone(ownerLayer, collidableInterface)
    end
end

require "org/allbinary/game/collision/CollisionType"
require "org/allbinary/game/collision/CollisionTypeFactory"
require "org/allbinary/game/layer/CollidableCompositeLayer"

