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
        LifePickedUpLayerInterfaceFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@pickedUpLayerInterfaceFactoryInterface) ? @@pickedUpLayerInterfaceFactoryInterface : nil
    end

    def self.pickedUpLayerInterfaceFactoryInterface=(value)
        LifePickedUpLayerInterfaceFactory.java_static_fields unless @java_static_fields_started
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
        if name == "LifePickedUpLayerInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
autoload :CountedPickedUpLayerInterfaceFactory, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"
autoload :IconLayerFactory, "org/allbinary/game/layer/pickup/IconLayerFactory"
autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"
autoload :PickedUpLayerTypeFactory, "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :LifeLayerCircularStaticPool, "org/allbinary/game/ag/layer/pickup/life/LifeLayerCircularStaticPool"
autoload :LifeLayerFactory, "org/allbinary/game/ag/layer/pickup/life/LifeLayerFactory"
autoload :LifeResources, "org/allbinary/game/ag/layer/pickup/life/LifeResources"

begin
    LifePickedUpLayerInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

