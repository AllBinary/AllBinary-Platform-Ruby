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
# package org.allbinary.game.layer.waypoint

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/EventListenerInterface"

module ::Org; module Allbinary; module Game; module Layer; module Waypoint

class WaypointBase
    include ::Org::Allbinary::Logic::Util::Event::EventListenerInterface
    attr_accessor :connectedWaypointList, :sound, :allBinaryGameLayerManagerP

    def jfields_org_allbinary_game_layer_waypoint_WaypointBase
        @connectedWaypointList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @sound = nil unless instance_variable_defined?(:@sound)
        @allBinaryGameLayerManagerP = ::Org::Allbinary::Game::Layer::AllBinaryGameLayerManager.getNullInstance()
    end
    

    def initialize(sound)
        jfields_org_allbinary_game_layer_waypoint_WaypointBase
        @sound = sound
    end
    

    def getSound()
        return @sound
    end
    java_overload :getSound, 0
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        @allBinaryGameLayerManagerP = allBinaryGameLayerManager
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    def getConnectedWaypointList()
        return @connectedWaypointList
    end
    java_overload :getConnectedWaypointList, 0
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    # throws Exception
    def getPathFindingInfo(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    java_overload :getPathFindingInfo, 1
    

    # throws Exception
    def getPathsList(geographicMapCellPosition, pathFindingInfo, multipassState)
        raise RuntimeError.new()
    end
    java_overload :getPathsList, 3
    

    # throws Exception
    def getPathsListRunnable(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    java_overload :getPathsListRunnable, 1
    

    # throws Exception
    def getPathsListFromCacheOnly(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    java_overload :getPathsListFromCacheOnly, 1
    

    # throws Exception
    def visit(unitLayer)
    end
    java_overload :visit, 1
    

    def reset()
    end
    java_overload :reset, 0
    

    def getType()
        return 0
    end
    java_overload :getType, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_WAYPOINT_BASE, WaypointBase.new(::Org::Allbinary::Media::Audio::NoSound.getInstance()))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WaypointBase"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_WAYPOINT_BASE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :NoSound, "org/allbinary/media/audio/NoSound" unless const_defined?(:NoSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :MultipassState, "org/allbinary/media/graphics/geography/pathfinding/MultipassState" unless const_defined?(:MultipassState, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo" unless const_defined?(:PathFindingInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    WaypointBase.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

