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
# package org.allbinary.game.part.weapon

require "org/allbinary/game/part/weapon/BasicWeaponPart"

class BasicProjectileWeaponPart < BasicWeaponPart
    attr_accessor :weaponLayerCircularStaticPool

    def initialize_fields
        @weaponLayerCircularStaticPool = nil
    end
    

    def self.createBasicProjectileWeaponPart(animationInterface, weaponLayerCircularStaticPool)
        return BasicProjectileWeaponPart.new(animationInterface, AllBinaryLayer::NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, WeaponProperties::NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship::NULL_RELATIVE_RELATIONSHIP)
    end
    

    def initialize(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, weaponProperties, scoreableInterface, relativeRelationship)
        super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        initialize_fields
        @weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    end
    

    # throws Exception
    def processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface)
        weaponLayer = @weaponLayerCircularStaticPool.getInstanceWeaponLayer(self.getOwnerLayerInterface(), @relativeRelationship.getX(), @relativeRelationship.getY(), @relativeRelationship.getZ(), angle, otherAngle, weaponProperties, scoreableInterface)
        allbinaryLayerManager.append(weaponLayer)
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/game/combat/weapon/WeaponProperties"
require "org/allbinary/game/layer/weapon/WeaponLayer"
require "org/allbinary/game/layer/weapon/WeaponLayerCircularPool"
require "org/allbinary/game/score/NoScoreable"
require "org/allbinary/game/score/ScoreableInterface"
require "org/allbinary/graphics/RelativeRelationship"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"

