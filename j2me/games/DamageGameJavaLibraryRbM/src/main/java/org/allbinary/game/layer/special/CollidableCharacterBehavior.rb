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

require "org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior"

class CollidableCharacterBehavior < CollidableDestroyableDamageableBehavior
    

    def initialize(collidable)
        super(collidable)
    end
    

    # throws Exception
    def collide(ownerLayer, collidableInterfaceCompositeInterface)
        collisionTypeFactory = CollisionTypeFactory.getInstance()
        collisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer)
        if collisionType == collisionTypeFactory.PICKUP
            collidableDestroyableDamageableLayer = ownerLayer
            collidableDestroyableDamageableLayer.getPickupBehavior().doPickupLayer(collidableInterfaceCompositeInterface)
        else
            super(ownerLayer, collidableInterfaceCompositeInterface)
        end
    end
    

    # throws Exception
    def collideInterface(ownerLayer, collidableInterfaceCompositeInterface)
        ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
    end
end

require "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
require "org/allbinary/game/collision/CollisionType"
require "org/allbinary/game/collision/CollisionTypeFactory"
require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/game/layer/pickup/PickedUpLayerInterface"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"

