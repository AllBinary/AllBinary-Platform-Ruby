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

require "java/lang/JavaOverload"
require "org/allbinary/game/part/weapon/BasicWeaponPart"

module ::Org; module Allbinary; module Game; module Part; module Weapon

class StraightMultiProjectileWeaponPart < BasicWeaponPart
    attr_accessor :weaponLayerCircularStaticPool, :total, :noDecimalTrigTable

    def jfields_org_allbinary_game_part_weapon_StraightMultiProjectileWeaponPart
        @weaponLayerCircularStaticPool = nil unless instance_variable_defined?(:@weaponLayerCircularStaticPool)
        @total = nil unless instance_variable_defined?(:@total)
        @noDecimalTrigTable = ::Org::Allbinary::MathPackage::NoDecimalTrigTable.getInstance()
    end
    

    def self.createStraightMultiProjectileWeaponPart(animationInterface, weaponLayerCircularStaticPool)
        return StraightMultiProjectileWeaponPart.new(animationInterface, ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, ::Org::Allbinary::Game::Combat::Weapon::WeaponProperties::NULL_WEAPON_PROPERTIES, ::Org::Allbinary::Game::Score::NoScoreable.getInstance(), ::Org::Allbinary::Graphics::RelativeRelationship::NULL_RELATIVE_RELATIONSHIP)
    end
    

    def initialize(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)
        super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        jfields_org_allbinary_game_part_weapon_StraightMultiProjectileWeaponPart
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
            sine = (((next_ * @noDecimalTrigTable.sin(angle))).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            beamX = (((sine / @noDecimalTrigTable.SCALE)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            cosine = (((next_ * @noDecimalTrigTable.cos(angle))).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            beamY = -(((cosine / @noDecimalTrigTable.SCALE)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            weaponLayer = @weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x + beamX, y + beamY, 0, angle, otherAngle, weaponProperties, scoreableInterface)
            allbinaryLayerManager.append(weaponLayer)
            next_ += increment
        end
    end
    java_overload :processScore, 5
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Weapon; autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties" unless const_defined?(:WeaponProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Weapon; autoload :WeaponLayer, "org/allbinary/game/layer/weapon/WeaponLayer" unless const_defined?(:WeaponLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Weapon; autoload :WeaponLayerCircularPool, "org/allbinary/game/layer/weapon/WeaponLayerCircularPool" unless const_defined?(:WeaponLayerCircularPool, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :NoScoreable, "org/allbinary/game/score/NoScoreable" unless const_defined?(:NoScoreable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface" unless const_defined?(:ScoreableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RelativeRelationship, "org/allbinary/graphics/RelativeRelationship" unless const_defined?(:RelativeRelationship, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :NoDecimalTrigTable, "org/allbinary/math/NoDecimalTrigTable" unless const_defined?(:NoDecimalTrigTable, false); end; end; end

end; end; end; end; end

