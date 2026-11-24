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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior"

module ::Org; module Allbinary; module Game; module Layer; module Weapon

class CollidableDamageWeaponBehavior < ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableBehavior
    attr_accessor :collided, :collisionHelper

    def jfields_org_allbinary_game_layer_weapon_CollidableDamageWeaponBehavior
        @collided = false unless instance_variable_defined?(:@collided)
        @collisionHelper = nil unless instance_variable_defined?(:@collisionHelper)
    end
    

    def initialize(collidable)
        super(collidable)
        jfields_org_allbinary_game_layer_weapon_CollidableDamageWeaponBehavior
        self.setCollided(false)
        self.setCollidable(true)
        @collisionHelper = ::Org::Allbinary::Game::Collision::CollidableHelperFactory.getInstance()
    end
    

    def init(sourceLayerInterface)
        self.setCollided(false)
        @collisionHelper.setOwnerLayerInterface(sourceLayerInterface)
    end
    java_overload :init, 1
    

    def isCollision(ownerLayer, collisionLayer)
        if @collisionHelper.isCollidable(collisionLayer)
            if ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]
                return CollidableDamageWeaponBehavior.superclass.java_super_method(:isCollision, 2).bind(self).call(ownerLayer, collisionLayer)
            end
        end
        return false
    end
    java_overload :isCollision, 2
    

    # throws Exception
    def collide(ownerLayer, collisionLayer)
        CollidableDamageWeaponBehavior.superclass.java_super_method(:collide, 2).bind(self).call(ownerLayer, collisionLayer)
        @collided = true
    end
    java_overload :collide, 2
    

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
    java_overload :isCollisionInterface, 2
    

    # throws Exception
    def collideInterface(ownerLayer, collidableInterfaceCompositeInterface)
        @damageUtil.process(ownerLayer, collidableInterfaceCompositeInterface)
        @collided = true
    end
    java_overload :collideInterface, 2
    

    def getCollisionTypeWith(layerInterface)
        return ::Org::Allbinary::Game::Collision::CollisionTypeFactory.getInstance().COLLISION
    end
    java_overload :getCollisionTypeWith, 1
    

    def isCollided()
        return @collided
    end
    java_overload :isCollided, 0
    

    def setCollided(collided)
        @collided = collided
    end
    java_overload :setCollided, 1
end

module ::Org; module Allbinary; module Game; module Collision; autoload :CollidableHelperFactory, "org/allbinary/game/collision/CollidableHelperFactory" unless const_defined?(:CollidableHelperFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollidableInterfaceCompositeInterface, "org/allbinary/game/collision/CollidableInterfaceCompositeInterface" unless const_defined?(:CollidableInterfaceCompositeInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollisionHelper, "org/allbinary/game/collision/CollisionHelper" unless const_defined?(:CollisionHelper, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollisionType, "org/allbinary/game/collision/CollisionType" unless const_defined?(:CollisionType, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollisionTypeFactory, "org/allbinary/game/collision/CollisionTypeFactory" unless const_defined?(:CollisionTypeFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Damage; autoload :DamageableInterface, "org/allbinary/game/combat/damage/DamageableInterface" unless const_defined?(:DamageableInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end

end; end; end; end; end

