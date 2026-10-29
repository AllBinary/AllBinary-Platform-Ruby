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
# package org.allbinary.game.ag.layer.pickup.points

require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory"
require "org/allbinary/game/layer/pickup/PickupProcessorInterface"

class Points20kPickedUpLayerInterfaceFactory < PickedUpLayerInterfaceFactory
    include PickupProcessorInterface
    attr_accessor :pool

    def initialize_fields
        @pool = PointsLayerCircularStaticPool.new(PointsLayerFactory.new(GameConfigurationUtil.getInstance().getCompetitionValue() * 20000), 1)
    end
    

    # throws Exception
    def self.init()
        Points20kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = Points20kPickedUpLayerInterfaceFactory.new()
    end
    

    def initialize()
        super(PickedUpLayerTypeFactory.getInstance().POINTS, IconLayerFactory.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(PointsResources.getInstance().RESOURCE_2).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(PointsResources.getInstance().RESOURCE_2).getInstance(0))
        initialize_fields
    end
    

    def getTotal()
        return 1
    end
    

    def self.getInstance()
        return Points20kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface
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
require "org/allbinary/game/configuration/GameConfigurationUtil"
require "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"
require "org/allbinary/game/layer/pickup/IconLayerFactory"
require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"
require "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/game/ag/layer/pickup/points/PointsLayerCircularStaticPool"
require "org/allbinary/game/ag/layer/pickup/points/PointsLayerFactory"
require "org/allbinary/game/ag/layer/pickup/points/PointsResources"

class Points20kPickedUpLayerInterfaceFactory
    @@pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY
end

