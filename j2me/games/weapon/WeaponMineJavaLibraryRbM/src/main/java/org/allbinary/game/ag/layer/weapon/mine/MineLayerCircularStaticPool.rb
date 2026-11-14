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


class MineLayerCircularStaticPool
    

    # throws Exception
    def self.init(viewPositionFactoryInterface)
        MineCountedPickedUpLayerInterfaceFactory.init()
        MineLayerCircularStaticPool::WEAPON_LAYER_CIRCULAR_STATIC_POOL.initAllBinaryLayerCircularPool(MineLayerFactory.new(viewPositionFactoryInterface), 20)
    end
    

    def self.getInstance()
        return MineLayerCircularStaticPool::WEAPON_LAYER_CIRCULAR_STATIC_POOL
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:WEAPON_LAYER_CIRCULAR_STATIC_POOL, WeaponLayerCircularPool.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MineLayerCircularStaticPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:WEAPON_LAYER_CIRCULAR_STATIC_POOL].include?(name)
        end
        super
    end
end

autoload :WeaponLayerCircularPool, "org/allbinary/game/layer/weapon/WeaponLayerCircularPool"
autoload :ViewPositionFactoryInterface, "org/allbinary/view/ViewPositionFactoryInterface"
autoload :MineCountedPickedUpLayerInterfaceFactory, "org/allbinary/game/ag/layer/weapon/mine/MineCountedPickedUpLayerInterfaceFactory"
autoload :MineLayerFactory, "org/allbinary/game/ag/layer/weapon/mine/MineLayerFactory"

begin
    MineLayerCircularStaticPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

