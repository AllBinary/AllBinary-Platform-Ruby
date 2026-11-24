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

module ::Org; module Allbinary; module Game; module Part; module Weapon

class BasicWeaponPartCircularPool
    attr_accessor :basicWeaponPart

    def jfields_org_allbinary_game_part_weapon_BasicWeaponPartCircularPool
        @basicWeaponPart = BasicWeaponPart::NULL_BASIC_WEAPON_PART
    end

    def initialize
        jfields_org_allbinary_game_part_weapon_BasicWeaponPartCircularPool
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

module ::Org; module Allbinary; module Game; module Combat; module Weapon; autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties" unless const_defined?(:WeaponProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface" unless const_defined?(:ScoreableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RelativeRelationship, "org/allbinary/graphics/RelativeRelationship" unless const_defined?(:RelativeRelationship, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :BasicWeaponPart, "org/allbinary/game/part/weapon/BasicWeaponPart" unless const_defined?(:BasicWeaponPart, false)
autoload :BasicWeaponPartFactoryInterface, "org/allbinary/game/part/weapon/BasicWeaponPartFactoryInterface" unless const_defined?(:BasicWeaponPartFactoryInterface, false)

begin
    BasicWeaponPartCircularPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

