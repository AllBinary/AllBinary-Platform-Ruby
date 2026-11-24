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
# package org.allbinary.game.media.graphics.geography.map.racetrack

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/racetrack/BasePathFindingInfoFactory"

module ::Org; module Allbinary; module Game; module Media; module Graphics; module Geography; module Map; module Racetrack

class PathFindingInfoFactory < ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::BasePathFindingInfoFactory
    

    def self.getInstance()
        return PathFindingInfoFactory.instance
    end
    

    def initialize()
        super()
    end
    

    # throws Exception
    def getInstancePathFindingInfo(geographicMapInterface, graphArray)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(commonStrings.START, self, commonStrings.GET_INSTANCE)
        pathFindingInfo = ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFindingInfo.new(::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFindingNodeCostInfoFactoryBase.new(), ::Org::Allbinary::Util::BasicArrayListS.new(1), ::Org::Allbinary::Util::BasicArrayListS.new(1))
        ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().init()
        self.init(geographicMapInterface, pathFindingInfo, graphArray)
        return pathFindingInfo
    end
    java_overload :getInstancePathFindingInfo, 2

    def self.instance()
        PathFindingInfoFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PathFindingInfoFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PathFindingInfoFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PathFindingInfoFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackRoadsGeographicMapCellHistoryFactory, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory" unless const_defined?(:RaceTrackRoadsGeographicMapCellHistoryFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo" unless const_defined?(:PathFindingInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingNodeCostInfoFactoryBase, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase" unless const_defined?(:PathFindingNodeCostInfoFactoryBase, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end

begin
    PathFindingInfoFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

