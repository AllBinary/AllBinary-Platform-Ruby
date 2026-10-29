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

class ArcedMultiBeamWeaponPart < BasicWeaponPart
    attr_accessor :weaponLayerCircularStaticPool, :total, :TOTAL_ANGLE

    def initialize_fields
        @weaponLayerCircularStaticPool = nil
        @total = nil
        @TOTAL_ANGLE = (AngleFactory.getInstance().TOTAL_ANGLE).to_i
    end
    

    def initialize(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)
        super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        initialize_fields
        @total = total
        @weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    end
    

    # throws Exception
    def processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface)
        increment = (((((@total - 1) / @TOTAL_ANGLE)).to_i + 32768) % 65536 - 32768)
        minAngle = ((((angle - ((increment * @total) >> 1))).to_i + 32768) % 65536 - 32768)
        next_ = 0
        weaponLayer = nil
        (0...@total).each do |index|
            weaponLayer = @weaponLayerCircularStaticPool.getInstanceWeaponLayer(self.getOwnerLayerInterface(), @relativeRelationship.getX(), @relativeRelationship.getY(), 0, (minAngle + increment), otherAngle, weaponProperties, scoreableInterface)
            allbinaryLayerManager.append(weaponLayer)
            next_ += increment
        end
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/game/combat/weapon/WeaponProperties"
require "org/allbinary/game/layer/weapon/WeaponLayer"
require "org/allbinary/game/layer/weapon/WeaponLayerCircularPool"
require "org/allbinary/game/score/ScoreableInterface"
require "org/allbinary/graphics/RelativeRelationship"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/math/AngleFactory"

