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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory"
require "org/allbinary/game/layer/pickup/PickupProcessorInterface"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Pickup; module Life

class LifePickedUpLayerInterfaceFactory < ::Org::Allbinary::Game::Layer::Pickup::PickedUpLayerInterfaceFactory
    include ::Org::Allbinary::Game::Layer::Pickup::PickupProcessorInterface
    attr_accessor :pool

    def jfields_org_allbinary_game_ag_layer_pickup_life_LifePickedUpLayerInterfaceFactory
        @pool = LifeLayerCircularStaticPool.new(LifeLayerFactory.new(), 1)
    end
    

    # throws Exception
    def self.init()
        @@pickedUpLayerInterfaceFactoryInterface = LifePickedUpLayerInterfaceFactory.new()
    end
    

    def initialize()
        super(::Org::Allbinary::Game::Layer::Pickup::PickedUpLayerTypeFactory.getInstance().LIFE, ::Org::Allbinary::Game::Layer::Pickup::IconLayerFactory.getInstance(::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(LifeResources.getInstance().RESOURCE).getInstance(0), 10, 10), ::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(LifeResources.getInstance().RESOURCE).getInstance(0))
        jfields_org_allbinary_game_ag_layer_pickup_life_LifePickedUpLayerInterfaceFactory
    end
    

    def getTotal()
        return 1
    end
    java_overload :getTotal, 0
    

    def self.getInstance()
        return @@pickedUpLayerInterfaceFactoryInterface
    end
    

    # throws Exception
    def process(sourceLayerInterface)
        @pool.visit(sourceLayerInterface)
    end
    java_overload :process, 1

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
            @@pickedUpLayerInterfaceFactoryInterface = ::Org::Allbinary::Game::Layer::Pickup::CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY
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

module ::Org; module Allbinary; module Animation; autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" unless const_defined?(:FeaturedAnimationInterfaceFactoryInterfaceFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :CountedPickedUpLayerInterfaceFactory, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" unless const_defined?(:CountedPickedUpLayerInterfaceFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :IconLayerFactory, "org/allbinary/game/layer/pickup/IconLayerFactory" unless const_defined?(:IconLayerFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" unless const_defined?(:PickedUpLayerInterfaceFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickedUpLayerTypeFactory, "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory" unless const_defined?(:PickedUpLayerTypeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :LifeLayerCircularStaticPool, "org/allbinary/game/ag/layer/pickup/life/LifeLayerCircularStaticPool" unless const_defined?(:LifeLayerCircularStaticPool, false)
autoload :LifeLayerFactory, "org/allbinary/game/ag/layer/pickup/life/LifeLayerFactory" unless const_defined?(:LifeLayerFactory, false)
autoload :LifeResources, "org/allbinary/game/ag/layer/pickup/life/LifeResources" unless const_defined?(:LifeResources, false)

begin
    LifePickedUpLayerInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

