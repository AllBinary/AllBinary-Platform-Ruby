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

class StraightMultiProjectileWeaponPart < BasicWeaponPart
    attr_accessor :weaponLayerCircularStaticPool, :total, :noDecimalTrigTable

    def initialize_fields
        @weaponLayerCircularStaticPool = nil
        @total = nil
        @noDecimalTrigTable = NoDecimalTrigTable.getInstance()
    end
    

    def self.createStraightMultiProjectileWeaponPart(animationInterface, weaponLayerCircularStaticPool)
        return StraightMultiProjectileWeaponPart.new(animationInterface, AllBinaryLayer::NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, WeaponProperties::NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship::NULL_RELATIVE_RELATIONSHIP)
    end
    

    def initialize(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)
        super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        initialize_fields
        @total = total
        @weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    end
    

    # throws Exception
    def processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface)
        sourceLayerInterface = self.getOwnerLayerInterface()
        reducedWidth = (sourceLayerInterface.getWidth() * 8 / 10)
        halfWidth = (reducedWidth >> 1)
        x = @relativeRelationship.getX()
        y = @relativeRelationship.getY()
        sine = 0
        beamX = 0
        cosine = 0
        beamY = 0
        weaponLayer = nil
        increment = reducedWidth / (@total - 1)
        next_ = -halfWidth
        (0...@total).each do |index|
            sine = ((next_ * @noDecimalTrigTable.sin(angle))).to_i
            beamX = ((sine / @noDecimalTrigTable.SCALE)).to_i
            cosine = ((next_ * @noDecimalTrigTable.cos(angle))).to_i
            beamY = -((cosine / @noDecimalTrigTable.SCALE)).to_i
            weaponLayer = @weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x + beamX, y + beamY, 0, angle, otherAngle, weaponProperties, scoreableInterface)
            allbinaryLayerManager.append(weaponLayer)
            next_ += increment
        end
    end
end

autoload :Animation, "org/allbinary/animation/Animation"
autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties"
autoload :WeaponLayer, "org/allbinary/game/layer/weapon/WeaponLayer"
autoload :WeaponLayerCircularPool, "org/allbinary/game/layer/weapon/WeaponLayerCircularPool"
autoload :NoScoreable, "org/allbinary/game/score/NoScoreable"
autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface"
autoload :RelativeRelationship, "org/allbinary/graphics/RelativeRelationship"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :NoDecimalTrigTable, "org/allbinary/math/NoDecimalTrigTable"

