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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior"

module ::Org; module Allbinary; module Game; module Layer

class CollidableRTSBehavior < ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableBehavior
    

    def initialize(collidable)
        super(collidable)
    end
    

    def isCollision(ownerLayer, collidableInterfaceCompositeInterface)
        collisionTypeFactory = ::Org::Allbinary::Game::Collision::CollisionTypeFactory.getInstance()
        collisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer)
        if collisionType == collisionTypeFactory.PICKUP
        elsif collisionType == collisionTypeFactory.COLLISION
            return CollidableRTSBehavior.superclass.java_super_method(:isCollision, 2).bind(self).call(ownerLayer, collidableInterfaceCompositeInterface)
        else
            if collidableInterfaceCompositeInterface.getX2() <= ownerLayer.getXP() || collidableInterfaceCompositeInterface.getY2() <= ownerLayer.getYP() || collidableInterfaceCompositeInterface.getYP() >= ownerLayer.getY2() || collidableInterfaceCompositeInterface.getXP() >= ownerLayer.getX2()
                return false
            else
                return true
            end
        end
        return false
    end
    java_overload :isCollision, 2
    

    # throws Exception
    def collide(ownerLayer, collidableInterfaceCompositeInterface)
        collisionTypeFactory = ::Org::Allbinary::Game::Collision::CollisionTypeFactory.getInstance()
        collisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer)
        if collisionType == collisionTypeFactory.PICKUP
        elsif collisionType == collisionTypeFactory.COLLISION
            CollidableRTSBehavior.superclass.java_super_method(:collide, 2).bind(self).call(ownerLayer, collidableInterfaceCompositeInterface)
        else
            self.collideNone(ownerLayer, collidableInterfaceCompositeInterface)
        end
    end
    java_overload :collide, 2
    

    # throws Exception
    def collideNone(ownerLayer, collidableInterface)
    end
    java_overload :collideNone, 2
end

module ::Org; module Allbinary; module Game; module Collision; autoload :CollisionType, "org/allbinary/game/collision/CollisionType" unless const_defined?(:CollisionType, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollisionTypeFactory, "org/allbinary/game/collision/CollisionTypeFactory" unless const_defined?(:CollisionTypeFactory, false); end; end; end; end
autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false)

end; end; end; end

