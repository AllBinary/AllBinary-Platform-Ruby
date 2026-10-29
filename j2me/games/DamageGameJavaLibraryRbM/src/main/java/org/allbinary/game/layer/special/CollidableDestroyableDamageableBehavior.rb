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
# package org.allbinary.game.layer.special

require "org/allbinary/game/collision/CollidableBaseBehavior"

class CollidableDestroyableDamageableBehavior < CollidableBaseBehavior
    attr_accessor :damageUtil

    def initialize_fields
        @damageUtil = DamageUtil.getInstance()
    end
    

    def initialize(collidable)
        super(collidable)
        initialize_fields
    end
    

    def isCollision(ownerLayer, collisionLayer)
        if ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]
            return super(ownerLayer, collisionLayer)
        end
        return false
    end
    

    # throws Exception
    def collide(ownerLayer, collidableInterfaceCompositeInterface)
        ownerCollidableDestroyableDamageableLayer = ownerLayer
        collidableDestroyableDamageableLayer = collidableInterfaceCompositeInterface
        ownerCollidableDestroyableDamageableLayer.damage(collidableDestroyableDamageableLayer.getDamage(0), 0)
    end
    

    def isCollisionInterface(ownerLayer, collidableInterfaceCompositeInterface)
        ForcedLogUtil.log("No Longer Used", self)
        return false
    end
    

    # throws Exception
    def collideInterface(ownerLayer, collidableInterfaceCompositeInterface)
        ForcedLogUtil.log("No Longer Used", self)
    end
end

require "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
require "org/allbinary/game/combat/damage/DamageUtil"
require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"

