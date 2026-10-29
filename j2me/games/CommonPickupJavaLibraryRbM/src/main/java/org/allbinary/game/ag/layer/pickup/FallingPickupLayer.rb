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
# package org.allbinary.game.ag.layer.pickup

require "org/allbinary/game/layer/pickup/PickupLayer"
require "org/allbinary/game/tick/TickableInterface"

class FallingPickupLayer < PickupLayer
    include TickableInterface
    

    def initialize(remoteInfo)
        super(FallingPickupLayer::NAME, remoteInfo, 0, CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY, NullAnimationFactory.getFactoryInstance().getInstance(0), Rectangle.new(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD())
    end
    

    def processTick(allBinaryLayerManager)
        self.setPosition(@x, @y + 1, @z)
    end
    

    def implmentsTickableInterface()
        return true
    end
end

require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/view/ViewPosition"

class FallingPickupLayer
    NAME = "FallingPickupLayer"
end

