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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_BASIC_WEAPON_PART_CIRCULAR_POOL, BasicWeaponPartCircularPool.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicWeaponPartCircularPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_BASIC_WEAPON_PART_CIRCULAR_POOL].include?(name)
        end
        super
    end
end

autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties"
autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface"
autoload :RelativeRelationship, "org/allbinary/graphics/RelativeRelationship"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :BasicWeaponPart, "org/allbinary/game/part/weapon/BasicWeaponPart"
autoload :BasicWeaponPartFactoryInterface, "org/allbinary/game/part/weapon/BasicWeaponPartFactoryInterface"

begin
    BasicWeaponPartCircularPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

