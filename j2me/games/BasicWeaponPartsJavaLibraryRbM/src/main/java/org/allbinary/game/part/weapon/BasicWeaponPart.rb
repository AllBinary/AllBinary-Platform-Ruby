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
require "org/allbinary/game/part/PartInterface"
require "org/allbinary/game/part/weapon/SalvoInterface"

module ::Org; module Allbinary; module Game; module Part; module Weapon

class BasicWeaponPart
    include ::Org::Allbinary::Game::Part::PartInterface
    include SalvoInterface
    attr_accessor :animationInterface, :ownerLayerInterface, :weaponProperties, :scoreableInterface, :relativeRelationship

    def jfields_org_allbinary_game_part_weapon_BasicWeaponPart
        @animationInterface = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        @ownerLayerInterface = ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
        @weaponProperties = ::Org::Allbinary::Game::Combat::Weapon::WeaponProperties::NULL_WEAPON_PROPERTIES
        @scoreableInterface = ::Org::Allbinary::Game::Score::NoScoreable.getInstance()
        @relativeRelationship = ::Org::Allbinary::Graphics::RelativeRelationship::NULL_RELATIVE_RELATIONSHIP
    end
    

    def self.createBasicWeaponPart(animationInterface)
        return BasicWeaponPart.new(animationInterface, ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER, ::Org::Allbinary::Game::Combat::Weapon::WeaponProperties::NULL_WEAPON_PROPERTIES, ::Org::Allbinary::Game::Score::NoScoreable.getInstance(), ::Org::Allbinary::Graphics::RelativeRelationship::NULL_RELATIVE_RELATIONSHIP)
    end
    

    def initialize(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        jfields_org_allbinary_game_part_weapon_BasicWeaponPart
        self.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        self.setAnimationInterface(animationInterface)
    end
    

    def init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        self.setOwnerLayerInterface(sourceLayerInterface)
        self.setWeaponProperties(weaponProperties)
        @scoreableInterface = scoreableInterface
        @relativeRelationship = relativeRelationship
    end
    java_overload :init, 4
    

    # throws Exception
    def process(allbinaryLayerManager, angle, otherAngle)
        self.processScore(allbinaryLayerManager, angle, otherAngle, self.getWeaponProperties(), @scoreableInterface)
    end
    java_overload :process, 3
    

    # throws Exception
    def processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface)
        raise StandardError.new(::Org::Allbinary::StringPackage::CommonStrings.getInstance().NOT_IMPLEMENTED)
    end
    java_overload :processScore, 5
    

    def getOwnerLayerInterface()
        return @ownerLayerInterface
    end
    java_overload :getOwnerLayerInterface, 0
    

    def setOwnerLayerInterface(ownerLayerInterface)
        @ownerLayerInterface = ownerLayerInterface
    end
    java_overload :setOwnerLayerInterface, 1
    

    def getAnimationInterface()
        return @animationInterface
    end
    java_overload :getAnimationInterface, 0
    

    def setAnimationInterface(animationInterface)
        @animationInterface = animationInterface
    end
    java_overload :setAnimationInterface, 1
    

    def paint(graphics)
        viewPosition = self.getOwnerLayerInterface().getViewPosition()
        viewX = viewPosition.getX()
        viewY = viewPosition.getY()
        @animationInterface.paintXY(graphics, viewX, viewY)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
    

    def getWeaponProperties()
        return @weaponProperties
    end
    java_overload :getWeaponProperties, 0
    

    def setWeaponProperties(weaponProperties)
        @weaponProperties = weaponProperties
    end
    java_overload :setWeaponProperties, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_BASIC_WEAPON_PART, BasicWeaponPart.createBasicWeaponPart(::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicWeaponPart"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_BASIC_WEAPON_PART].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Weapon; autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties" unless const_defined?(:WeaponProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :NoScoreable, "org/allbinary/game/score/NoScoreable" unless const_defined?(:NoScoreable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface" unless const_defined?(:ScoreableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RelativeRelationship, "org/allbinary/graphics/RelativeRelationship" unless const_defined?(:RelativeRelationship, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end

begin
    BasicWeaponPart.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

