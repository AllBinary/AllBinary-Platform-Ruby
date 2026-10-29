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

require "java/lang/Object"

class BasicWeaponPartCircularPool
    attr_accessor :basicWeaponPart

    def initialize_fields
        @basicWeaponPart = BasicWeaponPart::NULL_BASIC_WEAPON_PART
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception
    def init(basicWeaponPartFactoryInterface)
        @basicWeaponPart = basicWeaponPartFactoryInterface.getInstance()
    end
    

    # throws Exception
    def getInstance(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        java_monitor.synchronize do
        @basicWeaponPart.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        return @basicWeaponPart
        end
    end
end

require "org/allbinary/game/combat/weapon/WeaponProperties"
require "org/allbinary/game/score/ScoreableInterface"
require "org/allbinary/graphics/RelativeRelationship"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/game/part/weapon/BasicWeaponPart"
require "org/allbinary/game/part/weapon/BasicWeaponPartFactoryInterface"

class BasicWeaponPartCircularPool
    NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = BasicWeaponPartCircularPool.new()
end

