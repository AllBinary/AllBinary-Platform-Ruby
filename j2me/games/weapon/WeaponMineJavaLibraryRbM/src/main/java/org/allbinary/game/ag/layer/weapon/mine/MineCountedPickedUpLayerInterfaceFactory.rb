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
# package org.allbinary.game.ag.layer.weapon.mine

require "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"

class MineCountedPickedUpLayerInterfaceFactory < CountedPickedUpLayerInterfaceFactory
    attr_accessor :weaponLayerCircularStaticPool, :weaponProperties, :smallIntegerSingletonFactory

    def initialize_fields
        @weaponLayerCircularStaticPool = MineLayerCircularStaticPool.getInstance()
        @weaponProperties = WeaponProperties.new(-1, -1, 0, 8000, (((10).to_i + 32768) % 65536 - 32768))
        @smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
    end
    

    # throws Exception
    def self.init()
        MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = MineCountedPickedUpLayerInterfaceFactory.new()
    end
    

    def initialize()
        super(PickedUpLayerTypeFactory.getInstance().MINE, IconLayerFactory.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().DROP_ICON_RESOURCE).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().DROP_RESOURCE).getInstance(0))
        initialize_fields
    end
    

    def self.getInstance()
        return MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface
    end
    

    def getTotal()
        return 3
    end
    

    # throws Exception
    def getNextInstance(hashtable, x, y, z)
        sourceLayerInterface = hashtable.get(@smallIntegerSingletonFactory.getAt(0))
        angle = hashtable.get(@smallIntegerSingletonFactory.getAt(1))
        scoreableInterface = sourceLayerInterface
        return @weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x, y, z, (angle.to_i).to_i, 0, @weaponProperties, scoreableInterface)
    end

    def self.pickedUpLayerInterfaceFactoryInterface()
        MineCountedPickedUpLayerInterfaceFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@pickedUpLayerInterfaceFactoryInterface) ? @@pickedUpLayerInterfaceFactoryInterface : nil
    end

    def self.pickedUpLayerInterfaceFactoryInterface=(value)
        MineCountedPickedUpLayerInterfaceFactory.java_static_fields unless @java_static_fields_started
        @@pickedUpLayerInterfaceFactoryInterface = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MineCountedPickedUpLayerInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties"
autoload :IconLayerFactory, "org/allbinary/game/layer/pickup/IconLayerFactory"
autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"
autoload :PickedUpLayerTypeFactory, "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory"
autoload :WeaponLayerCircularPool, "org/allbinary/game/layer/weapon/WeaponLayerCircularPool"
autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :MineLayerCircularStaticPool, "org/allbinary/game/ag/layer/weapon/mine/MineLayerCircularStaticPool"
autoload :MineWeaponResources, "org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources"

begin
    MineCountedPickedUpLayerInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

