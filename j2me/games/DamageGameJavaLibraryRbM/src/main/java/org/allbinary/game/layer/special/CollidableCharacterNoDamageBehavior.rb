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

class CollidableCharacterNoDamageBehavior < CollidableDestroyableDamageableBehavior
    

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
        end
    end
    

    # throws Exception
    def collideInterface(ownerLayer, collidableInterfaceCompositeInterface)
        ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
    end
end

autoload :CollidableInterfaceCompositeInterface, "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
autoload :CollisionType, "org/allbinary/game/collision/CollisionType"
autoload :CollisionTypeFactory, "org/allbinary/game/collision/CollisionTypeFactory"
autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer"
autoload :PickedUpLayerInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterface"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"

