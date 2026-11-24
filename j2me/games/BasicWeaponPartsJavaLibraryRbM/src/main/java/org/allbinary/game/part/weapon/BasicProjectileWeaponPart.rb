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

class BasicProjectileWeaponPart < BasicWeaponPart
    attr_accessor :weaponLayerCircularStaticPool

    def jfields_org_allbinary_game_part_weapon_BasicProjectileWeaponPart
        @weaponLayerCircularStaticPool = nil unless instance_variable_defined?(:@weaponLayerCircularStaticPool)
    end
    

    def self.createBasicProjectileWeaponPart(animationInterface, weaponLayerCircularStaticPool)
        return BasicProjectileWeaponPart.new(animationInterface, ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, ::Org::Allbinary::Game::Combat::Weapon::WeaponProperties::NULL_WEAPON_PROPERTIES, ::Org::Allbinary::Game::Score::NoScoreable.getInstance(), ::Org::Allbinary::Graphics::RelativeRelationship::NULL_RELATIVE_RELATIONSHIP)
    end
    

    def initialize(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, weaponProperties, scoreableInterface, relativeRelationship)
        super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        jfields_org_allbinary_game_part_weapon_BasicProjectileWeaponPart
        @weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    end
    

    # throws Exception
    def processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface)
        weaponLayer = @weaponLayerCircularStaticPool.getInstanceWeaponLayer(self.getOwnerLayerInterface(), @relativeRelationship.getX(), @relativeRelationship.getY(), @relativeRelationship.getZ(), angle, otherAngle, weaponProperties, scoreableInterface)
        allbinaryLayerManager.append(weaponLayer)
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

end; end; end; end; end

