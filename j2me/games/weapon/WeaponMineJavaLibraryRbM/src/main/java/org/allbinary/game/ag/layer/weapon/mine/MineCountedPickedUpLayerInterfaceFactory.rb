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
        return defined?(@@pickedUpLayerInterfaceFactoryInterface) ? @@pickedUpLayerInterfaceFactoryInterface : nil
    end

    def self.pickedUpLayerInterfaceFactoryInterface=(value)
        @@pickedUpLayerInterfaceFactoryInterface = value
    end
end

require "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
require "org/allbinary/game/combat/weapon/WeaponProperties"
require "org/allbinary/game/layer/pickup/IconLayerFactory"
require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"
require "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory"
require "org/allbinary/game/layer/weapon/WeaponLayerCircularPool"
require "org/allbinary/game/score/ScoreableInterface"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/ag/layer/weapon/mine/MineLayerCircularStaticPool"
require "org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources"

class MineCountedPickedUpLayerInterfaceFactory
    @@pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY
end

