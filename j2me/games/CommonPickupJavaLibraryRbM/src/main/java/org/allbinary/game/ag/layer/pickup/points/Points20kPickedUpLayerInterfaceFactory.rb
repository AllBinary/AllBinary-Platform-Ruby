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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory"
require "org/allbinary/game/layer/pickup/PickupProcessorInterface"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Pickup; module Points

class Points20kPickedUpLayerInterfaceFactory < ::Org::Allbinary::Game::Layer::Pickup::PickedUpLayerInterfaceFactory
    include ::Org::Allbinary::Game::Layer::Pickup::PickupProcessorInterface
    attr_accessor :pool

    def jfields_org_allbinary_game_ag_layer_pickup_points_Points20kPickedUpLayerInterfaceFactory
        @pool = PointsLayerCircularStaticPool.new(PointsLayerFactory.new(::Org::Allbinary::Game::Configuration::GameConfigurationUtil.getInstance().getCompetitionValue() * 20000), 1)
    end
    

    # throws Exception
    def self.init()
        @@pickedUpLayerInterfaceFactoryInterface = Points20kPickedUpLayerInterfaceFactory.new()
    end
    

    def initialize()
        super(::Org::Allbinary::Game::Layer::Pickup::PickedUpLayerTypeFactory.getInstance().POINTS, ::Org::Allbinary::Game::Layer::Pickup::IconLayerFactory.getInstance(::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(PointsResources.getInstance().RESOURCE_2).getInstance(0), 10, 10), ::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(PointsResources.getInstance().RESOURCE_2).getInstance(0))
        jfields_org_allbinary_game_ag_layer_pickup_points_Points20kPickedUpLayerInterfaceFactory
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
        Points20kPickedUpLayerInterfaceFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@pickedUpLayerInterfaceFactoryInterface) ? @@pickedUpLayerInterfaceFactoryInterface : nil
    end

    def self.pickedUpLayerInterfaceFactoryInterface=(value)
        Points20kPickedUpLayerInterfaceFactory.java_static_fields unless @java_static_fields_started
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
        if name == "Points20kPickedUpLayerInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Animation; autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" unless const_defined?(:FeaturedAnimationInterfaceFactoryInterfaceFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationUtil, "org/allbinary/game/configuration/GameConfigurationUtil" unless const_defined?(:GameConfigurationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :CountedPickedUpLayerInterfaceFactory, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" unless const_defined?(:CountedPickedUpLayerInterfaceFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :IconLayerFactory, "org/allbinary/game/layer/pickup/IconLayerFactory" unless const_defined?(:IconLayerFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" unless const_defined?(:PickedUpLayerInterfaceFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickedUpLayerTypeFactory, "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory" unless const_defined?(:PickedUpLayerTypeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :PointsLayerCircularStaticPool, "org/allbinary/game/ag/layer/pickup/points/PointsLayerCircularStaticPool" unless const_defined?(:PointsLayerCircularStaticPool, false)
autoload :PointsLayerFactory, "org/allbinary/game/ag/layer/pickup/points/PointsLayerFactory" unless const_defined?(:PointsLayerFactory, false)
autoload :PointsResources, "org/allbinary/game/ag/layer/pickup/points/PointsResources" unless const_defined?(:PointsResources, false)

begin
    Points20kPickedUpLayerInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

