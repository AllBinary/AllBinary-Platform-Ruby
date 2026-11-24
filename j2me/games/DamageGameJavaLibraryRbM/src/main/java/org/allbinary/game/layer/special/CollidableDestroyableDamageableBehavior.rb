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
require "org/allbinary/game/collision/CollidableBaseBehavior"

module ::Org; module Allbinary; module Game; module Layer; module Special

class CollidableDestroyableDamageableBehavior < ::Org::Allbinary::Game::Collision::CollidableBaseBehavior
    attr_accessor :damageUtil

    def jfields_org_allbinary_game_layer_special_CollidableDestroyableDamageableBehavior
        @damageUtil = ::Org::Allbinary::Game::Combat::Damage::DamageUtil.getInstance()
    end
    

    def initialize(collidable)
        super(collidable)
        jfields_org_allbinary_game_layer_special_CollidableDestroyableDamageableBehavior
    end
    

    def isCollision(ownerLayer, collisionLayer)
        if ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]
            return CollidableDestroyableDamageableBehavior.superclass.java_super_method(:isCollision, 2).bind(self).call(ownerLayer, collisionLayer)
        end
        return false
    end
    java_overload :isCollision, 2
    

    # throws Exception
    def collide(ownerLayer, collidableInterfaceCompositeInterface)
        ownerCollidableDestroyableDamageableLayer = ownerLayer
        collidableDestroyableDamageableLayer = collidableInterfaceCompositeInterface
        ownerCollidableDestroyableDamageableLayer.damage(collidableDestroyableDamageableLayer.getDamage(0), 0)
    end
    java_overload :collide, 2
    

    def isCollisionInterface(ownerLayer, collidableInterfaceCompositeInterface)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log("No Longer Used", self)
        return false
    end
    java_overload :isCollisionInterface, 2
    

    # throws Exception
    def collideInterface(ownerLayer, collidableInterfaceCompositeInterface)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log("No Longer Used", self)
    end
    java_overload :collideInterface, 2
end

module ::Org; module Allbinary; module Game; module Collision; autoload :CollidableInterfaceCompositeInterface, "org/allbinary/game/collision/CollidableInterfaceCompositeInterface" unless const_defined?(:CollidableInterfaceCompositeInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Damage; autoload :DamageUtil, "org/allbinary/game/combat/damage/DamageUtil" unless const_defined?(:DamageUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false)

end; end; end; end; end

