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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Weapon; module Mine

class MineCountedPickedUpLayerInterfaceFactory < ::Org::Allbinary::Game::Layer::Pickup::CountedPickedUpLayerInterfaceFactory
    attr_accessor :weaponLayerCircularStaticPool, :weaponProperties, :smallIntegerSingletonFactory

    def jfields_org_allbinary_game_ag_layer_weapon_mine_MineCountedPickedUpLayerInterfaceFactory
        @weaponLayerCircularStaticPool = MineLayerCircularStaticPool.getInstance()
        @weaponProperties = ::Org::Allbinary::Game::Combat::Weapon::WeaponProperties.new(-1, -1, 0, 8000, (((10).to_i + 32768) % 65536 - 32768))
        @smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
    end
    

    # throws Exception
    def self.init()
        @@pickedUpLayerInterfaceFactoryInterface = MineCountedPickedUpLayerInterfaceFactory.new()
    end
    

    def initialize()
        super(::Org::Allbinary::Game::Layer::Pickup::PickedUpLayerTypeFactory.getInstance().MINE, ::Org::Allbinary::Game::Layer::Pickup::IconLayerFactory.getInstance(::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().DROP_ICON_RESOURCE).getInstance(0), 10, 10), ::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().DROP_RESOURCE).getInstance(0))
        jfields_org_allbinary_game_ag_layer_weapon_mine_MineCountedPickedUpLayerInterfaceFactory
    end
    

    def self.getInstance()
        return @@pickedUpLayerInterfaceFactoryInterface
    end
    

    def getTotal()
        return 3
    end
    java_overload :getTotal, 0
    

    # throws Exception
    def getNextInstance(hashtable, x, y, z)
        sourceLayerInterface = hashtable.get(@smallIntegerSingletonFactory.getAt(0))
        angle = hashtable.get(@smallIntegerSingletonFactory.getAt(1))
        scoreableInterface = sourceLayerInterface
        return @weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x, y, z, ((angle.to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }), 0, @weaponProperties, scoreableInterface)
    end
    java_overload :getNextInstance, 4

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
            @@pickedUpLayerInterfaceFactoryInterface = ::Org::Allbinary::Game::Layer::Pickup::CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY
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

module ::Org; module Allbinary; module Animation; autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" unless const_defined?(:FeaturedAnimationInterfaceFactoryInterfaceFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Weapon; autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties" unless const_defined?(:WeaponProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :IconLayerFactory, "org/allbinary/game/layer/pickup/IconLayerFactory" unless const_defined?(:IconLayerFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" unless const_defined?(:PickedUpLayerInterfaceFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickedUpLayerTypeFactory, "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory" unless const_defined?(:PickedUpLayerTypeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Weapon; autoload :WeaponLayerCircularPool, "org/allbinary/game/layer/weapon/WeaponLayerCircularPool" unless const_defined?(:WeaponLayerCircularPool, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface" unless const_defined?(:ScoreableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :MineLayerCircularStaticPool, "org/allbinary/game/ag/layer/weapon/mine/MineLayerCircularStaticPool" unless const_defined?(:MineLayerCircularStaticPool, false)
autoload :MineWeaponResources, "org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources" unless const_defined?(:MineWeaponResources, false)

begin
    MineCountedPickedUpLayerInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

