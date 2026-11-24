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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior"

module ::Org; module Allbinary; module Game; module Layer; module Special

class CollidableCharacterNoDamageBehavior < CollidableDestroyableDamageableBehavior
    

    def initialize(collidable)
        super(collidable)
    end
    

    # throws Exception
    def collide(ownerLayer, collidableInterfaceCompositeInterface)
        collisionTypeFactory = ::Org::Allbinary::Game::Collision::CollisionTypeFactory.getInstance()
        collisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer)
        if collisionType == collisionTypeFactory.PICKUP
            collidableDestroyableDamageableLayer = ownerLayer
            collidableDestroyableDamageableLayer.getPickupBehavior().doPickupLayer(collidableInterfaceCompositeInterface)
        else
        end
    end
    java_overload :collide, 2
    

    # throws Exception
    def collideInterface(ownerLayer, collidableInterfaceCompositeInterface)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
    end
    java_overload :collideInterface, 2
end

module ::Org; module Allbinary; module Game; module Collision; autoload :CollidableInterfaceCompositeInterface, "org/allbinary/game/collision/CollidableInterfaceCompositeInterface" unless const_defined?(:CollidableInterfaceCompositeInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollisionType, "org/allbinary/game/collision/CollisionType" unless const_defined?(:CollisionType, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollisionTypeFactory, "org/allbinary/game/collision/CollisionTypeFactory" unless const_defined?(:CollisionTypeFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickedUpLayerInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterface" unless const_defined?(:PickedUpLayerInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false)

end; end; end; end; end

