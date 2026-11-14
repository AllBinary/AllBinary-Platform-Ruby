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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "FallingPickupLayer")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FallingPickupLayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory"
autoload :CountedPickedUpLayerInterfaceFactory, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"
autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo"
autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :ViewPosition, "org/allbinary/view/ViewPosition"

begin
    FallingPickupLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

