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

class ArcedMultiBeamWeaponPart < BasicWeaponPart
    attr_accessor :weaponLayerCircularStaticPool, :total, :TOTAL_ANGLE

    def jfields_org_allbinary_game_part_weapon_ArcedMultiBeamWeaponPart
        @weaponLayerCircularStaticPool = nil unless instance_variable_defined?(:@weaponLayerCircularStaticPool)
        @total = nil unless instance_variable_defined?(:@total)
        @TOTAL_ANGLE = ((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
    end
    

    def initialize(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)
        super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        jfields_org_allbinary_game_part_weapon_ArcedMultiBeamWeaponPart
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
    java_overload :processScore, 5
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Weapon; autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties" unless const_defined?(:WeaponProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Weapon; autoload :WeaponLayer, "org/allbinary/game/layer/weapon/WeaponLayer" unless const_defined?(:WeaponLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Weapon; autoload :WeaponLayerCircularPool, "org/allbinary/game/layer/weapon/WeaponLayerCircularPool" unless const_defined?(:WeaponLayerCircularPool, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface" unless const_defined?(:ScoreableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RelativeRelationship, "org/allbinary/graphics/RelativeRelationship" unless const_defined?(:RelativeRelationship, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end

end; end; end; end; end

