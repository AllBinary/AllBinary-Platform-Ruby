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
# package org.allbinary.game.ag.layer.pickup.life

require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory"
require "org/allbinary/game/layer/pickup/PickupProcessorInterface"

class LifePickedUpLayerInterfaceFactory < PickedUpLayerInterfaceFactory
    include PickupProcessorInterface
    attr_accessor :pool

    def initialize_fields
        @pool = LifeLayerCircularStaticPool.new(LifeLayerFactory.new(), 1)
    end
    

    # throws Exception
    def self.init()
        LifePickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = LifePickedUpLayerInterfaceFactory.new()
    end
    

    def initialize()
        super(PickedUpLayerTypeFactory.getInstance().LIFE, IconLayerFactory.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(LifeResources.getInstance().RESOURCE).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(LifeResources.getInstance().RESOURCE).getInstance(0))
        initialize_fields
    end
    

    def getTotal()
        return 1
    end
    

    def self.getInstance()
        return LifePickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface
    end
    

    # throws Exception
    def process(sourceLayerInterface)
        @pool.visit(sourceLayerInterface)
    end

    def self.pickedUpLayerInterfaceFactoryInterface()
        return defined?(@@pickedUpLayerInterfaceFactoryInterface) ? @@pickedUpLayerInterfaceFactoryInterface : nil
    end

    def self.pickedUpLayerInterfaceFactoryInterface=(value)
        @@pickedUpLayerInterfaceFactoryInterface = value
    end
end

require "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
require "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"
require "org/allbinary/game/layer/pickup/IconLayerFactory"
require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"
require "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/game/ag/layer/pickup/life/LifeLayerCircularStaticPool"
require "org/allbinary/game/ag/layer/pickup/life/LifeLayerFactory"
require "org/allbinary/game/ag/layer/pickup/life/LifeResources"

class LifePickedUpLayerInterfaceFactory
    @@pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY
end

