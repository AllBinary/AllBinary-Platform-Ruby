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

# require "javax/microedition/lcdui/Graphics"
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
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/game/combat/weapon/WeaponProperties"
require "org/allbinary/game/score/NoScoreable"
require "org/allbinary/game/score/ScoreableInterface"
require "org/allbinary/graphics/RelativeRelationship"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/view/ViewPositionBase"

class BasicWeaponPart
    NULL_BASIC_WEAPON_PART = BasicWeaponPart.createBasicWeaponPart(NullAnimationFactory.getFactoryInstance().getInstance(0))
end

