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

class CollidableWeaponBehavior < CollidableDestroyableDamageableBehavior
    attr_accessor :collided, :collisionHelper

    def initialize_fields
        @collided = false
        @collisionHelper = nil
    end
    

    def self.getNullInstance()
        if CollidableWeaponBehavior::NULL_COLLIDABLE_WEAPON_BEHAVIOR == NullUtil.getInstance().NULL_OBJECT
            (CollidableWeaponBehavior.send(:remove_const, :NULL_COLLIDABLE_WEAPON_BEHAVIOR) if CollidableWeaponBehavior.const_defined?(:NULL_COLLIDABLE_WEAPON_BEHAVIOR, false); CollidableWeaponBehavior.const_set(:NULL_COLLIDABLE_WEAPON_BEHAVIOR, CollidableWeaponBehavior.new(false)))
        end
        return CollidableWeaponBehavior::NULL_COLLIDABLE_WEAPON_BEHAVIOR
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
        ownerDamageableInterface = ownerLayer
        damageableInterface = collidableInterfaceCompositeInterface
        @damageUtil.process(ownerDamageableInterface, damageableInterface)
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_COLLIDABLE_WEAPON_BEHAVIOR, NullUtil.getInstance().NULL_OBJECT)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CollidableWeaponBehavior"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_COLLIDABLE_WEAPON_BEHAVIOR].include?(name)
        end
        super
    end
end

autoload :CollidableHelperFactory, "org/allbinary/game/collision/CollidableHelperFactory"
autoload :CollidableInterfaceCompositeInterface, "org/allbinary/game/collision/CollidableInterfaceCompositeInterface"
autoload :CollisionHelper, "org/allbinary/game/collision/CollisionHelper"
autoload :CollisionType, "org/allbinary/game/collision/CollisionType"
autoload :CollisionTypeFactory, "org/allbinary/game/collision/CollisionTypeFactory"
autoload :DamageableInterface, "org/allbinary/game/combat/damage/DamageableInterface"
autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :NullUtil, "org/allbinary/logic/NullUtil"

begin
    CollidableWeaponBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

