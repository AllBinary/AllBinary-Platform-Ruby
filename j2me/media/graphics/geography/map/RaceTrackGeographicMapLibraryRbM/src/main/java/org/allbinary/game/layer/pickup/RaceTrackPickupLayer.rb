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

require "org/allbinary/game/layer/pickup/PickupLayer"

class RaceTrackPickupLayer < PickupLayer
    attr_accessor :viewPositionEventHandler

    def initialize_fields
        @viewPositionEventHandler = ViewPositionEventHandler.getInstance()
    end
    

    def initialize()
        super(NAME, RemoteInfo::REMOTE_INFO, 0, CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY, NullAnimationFactory.getFactoryInstance().getInstance(0), Rectangle.new(PointFactory.getInstance().ZERO_ZERO, 0, 0), TileLayerPositionIntoViewPosition.new())
        initialize_fields
    end
    

    def setTiledLayer(tiledLayer)
        viewPosition = self.getViewPosition()
        viewPosition.setTiledLayer(tiledLayer)
        @viewPositionEventHandler.addListener(self)
    end
    

    def setDestroyed(destroyed)
        super(destroyed)
        if self.isDestroyed()
            @viewPositionEventHandler.removeListener(self)
        end
    end
end

require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/game/identification/BasicGroupFactory"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"
require "org/allbinary/game/view/TileLayerPositionIntoViewPosition"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/view/ViewPosition"
require "org/allbinary/view/event/ViewPositionEventHandler"
require "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"

class RaceTrackPickupLayer
    NAME = "RaceTrackPickupLayer"
end

