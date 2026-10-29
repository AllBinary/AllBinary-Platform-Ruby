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
end

require "org/allbinary/game/layer/weapon/WeaponLayerCircularPool"
require "org/allbinary/view/ViewPositionFactoryInterface"
require "org/allbinary/game/ag/layer/weapon/mine/MineCountedPickedUpLayerInterfaceFactory"
require "org/allbinary/game/ag/layer/weapon/mine/MineLayerFactory"

class MineLayerCircularStaticPool
    WEAPON_LAYER_CIRCULAR_STATIC_POOL = WeaponLayerCircularPool.new()
end

