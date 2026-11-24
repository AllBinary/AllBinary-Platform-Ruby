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
# package org.allbinary.game.layer.pickup

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/pickup/PickupLayer"

module ::Org; module Allbinary; module Game; module Layer; module Pickup

class RaceTrackPickupLayer < PickupLayer
    attr_accessor :viewPositionEventHandler

    def jfields_org_allbinary_game_layer_pickup_RaceTrackPickupLayer
        @viewPositionEventHandler = ::Org::Allbinary::View::Event::ViewPositionEventHandler.getInstance()
    end
    

    def initialize()
        super(NAME, ::Org::Allbinary::Game::Multiplayer::Layer::RemoteInfo::REMOTE_INFO, 0, CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY, ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0), ::Org::Allbinary::Graphics::Rectangle.new(::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO, 0, 0), ::Org::Allbinary::Game::View::TileLayerPositionIntoViewPosition.new())
        jfields_org_allbinary_game_layer_pickup_RaceTrackPickupLayer
    end
    

    def setTiledLayer(tiledLayer)
        viewPosition = self.getViewPosition()
        viewPosition.setTiledLayer(tiledLayer)
        @viewPositionEventHandler.addListener(self)
    end
    java_overload :setTiledLayer, 1
    

    def setDestroyed(destroyed)
        RaceTrackPickupLayer.superclass.java_super_method(:setDestroyed, 1).bind(self).call(destroyed)
        if self.isDestroyed()
            @viewPositionEventHandler.removeListener(self)
        end
    end
    java_overload :setDestroyed, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "RaceTrackPickupLayer")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RaceTrackPickupLayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :BasicGroupFactory, "org/allbinary/game/identification/BasicGroupFactory" unless const_defined?(:BasicGroupFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Multiplayer; module Layer; autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module View; autoload :TileLayerPositionIntoViewPosition, "org/allbinary/game/view/TileLayerPositionIntoViewPosition" unless const_defined?(:TileLayerPositionIntoViewPosition, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPosition, "org/allbinary/view/ViewPosition" unless const_defined?(:ViewPosition, false); end; end; end
module ::Org; module Allbinary; module View; module Event; autoload :ViewPositionEventHandler, "org/allbinary/view/event/ViewPositionEventHandler" unless const_defined?(:ViewPositionEventHandler, false); end; end; end; end
autoload :CountedPickedUpLayerInterfaceFactory, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" unless const_defined?(:CountedPickedUpLayerInterfaceFactory, false)

begin
    RaceTrackPickupLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

