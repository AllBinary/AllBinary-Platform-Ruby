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

require "org/allbinary/game/part/PartInterface"
require "org/allbinary/game/part/weapon/SalvoInterface"

class BasicWeaponPart
    include PartInterface
    include SalvoInterface
    attr_accessor :animationInterface, :ownerLayerInterface, :weaponProperties, :scoreableInterface, :relativeRelationship

    def initialize_fields
        @animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
        @ownerLayerInterface = AllBinaryLayer::NULL_ALLBINARY_LAYER
        @weaponProperties = WeaponProperties::NULL_WEAPON_PROPERTIES
        @scoreableInterface = NoScoreable.getInstance()
        @relativeRelationship = RelativeRelationship::NULL_RELATIVE_RELATIONSHIP
    end
    

    def self.createBasicWeaponPart(animationInterface)
        return BasicWeaponPart.new(animationInterface, AllBinaryLayer::NULL_ALLBINARY_LAYER, WeaponProperties::NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship::NULL_RELATIVE_RELATIONSHIP)
    end
    

    def initialize(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        initialize_fields
        self.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        self.setAnimationInterface(animationInterface)
    end
    

    def init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        self.setOwnerLayerInterface(sourceLayerInterface)
        self.setWeaponProperties(weaponProperties)
        @scoreableInterface = scoreableInterface
        @relativeRelationship = relativeRelationship
    end
    

    # throws Exception
    def process(allbinaryLayerManager, angle, otherAngle)
        self.processScore(allbinaryLayerManager, angle, otherAngle, self.getWeaponProperties(), @scoreableInterface)
    end
    

    # throws Exception
    def processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface)
        raise StandardError.new(CommonStrings.getInstance().NOT_IMPLEMENTED)
    end
    

    def getOwnerLayerInterface()
        return @ownerLayerInterface
    end
    

    def setOwnerLayerInterface(ownerLayerInterface)
        @ownerLayerInterface = ownerLayerInterface
    end
    

    def getAnimationInterface()
        return @animationInterface
    end
    

    def setAnimationInterface(animationInterface)
        @animationInterface = animationInterface
    end
    

    def paint(graphics)
        viewPosition = self.getOwnerLayerInterface().getViewPosition()
        viewX = viewPosition.getX()
        viewY = viewPosition.getY()
        @animationInterface.paintXY(graphics, viewX, viewY)
    end
    

    def paintThreed(graphics)
    end
    

    def getWeaponProperties()
        return @weaponProperties
    end
    

    def setWeaponProperties(weaponProperties)
        @weaponProperties = weaponProperties
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_BASIC_WEAPON_PART, BasicWeaponPart.createBasicWeaponPart(NullAnimationFactory.getFactoryInstance().getInstance(0)))
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

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory"
autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties"
autoload :NoScoreable, "org/allbinary/game/score/NoScoreable"
autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface"
autoload :RelativeRelationship, "org/allbinary/graphics/RelativeRelationship"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase"

begin
    BasicWeaponPart.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

