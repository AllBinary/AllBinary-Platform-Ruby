# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.behavior.topview

require "java/lang/JavaOverload"
require "org/allbinary/game/behavior/topview/TopViewCharacterBehavior"

module ::Org; module Allbinary; module Game; module Behavior; module Topview

class PlayerTopViewCharacterBehavior < TopViewCharacterBehavior
    attr_accessor :logUtil

    def jfields_org_allbinary_game_behavior_topview_PlayerTopViewCharacterBehavior
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_game_behavior_topview_PlayerTopViewCharacterBehavior
    end
    

    # throws Exception
    def terrainEvent(layer, direction, x, y, geographicMapInterfaceArray, geographicMapCellPosition)
        ::Org::Allbinary::Game::Tracking::TrackingEventHandler.getInstance().fireEvent(::Org::Allbinary::Game::Tracking::TrackingEventCircularStaticPool.getInstance().getNextInstance(layer))
    end
    java_overload :terrainEvent, 6
    

    def terrainMove(layer, geographicMapInterfaceArray, x, y)
        basicGeographicMapUtil = ::Org::Allbinary::Media::Graphics::Geography::Map::BasicGeographicMapUtil.getInstance()
        basicGeographicMapUtil.setPosition(geographicMapInterfaceArray, x, y)
    end
    java_overload :terrainMove, 4
    

    def moveIfOnScreen(layer, ax, ay)
    end
    java_overload :moveIfOnScreen, 3
    

    def isTiledLayerMoveable(terrainTiledLayer, x, y)
        return (terrainTiledLayer.getXP() + ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().getLastWidth() < terrainTiledLayer.getWidth() || x < 0) && (terrainTiledLayer.getXP() > 0 || x > 0)
    end
    java_overload :isTiledLayerMoveable, 3
end

module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEventCircularStaticPool, "org/allbinary/game/tracking/TrackingEventCircularStaticPool" unless const_defined?(:TrackingEventCircularStaticPool, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEventHandler, "org/allbinary/game/tracking/TrackingEventHandler" unless const_defined?(:TrackingEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapUtil, "org/allbinary/media/graphics/geography/map/BasicGeographicMapUtil" unless const_defined?(:BasicGeographicMapUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end

end; end; end; end; end

