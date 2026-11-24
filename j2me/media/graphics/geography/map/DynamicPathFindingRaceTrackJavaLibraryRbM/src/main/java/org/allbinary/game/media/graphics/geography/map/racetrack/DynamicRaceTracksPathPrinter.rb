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
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTracksPathPrinter"

module ::Org; module Allbinary; module Game; module Media; module Graphics; module Geography; module Map; module Racetrack

class DynamicRaceTracksPathPrinter < ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::RaceTracksPathPrinter
    attr_accessor :logUtil

    def jfields_org_allbinary_game_media_graphics_geography_map_racetrack_DynamicRaceTracksPathPrinter
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_game_media_graphics_geography_map_racetrack_DynamicRaceTracksPathPrinter
    end
    

    def printAllPaths(raceTrackGeographicMapInterfaceFactoryInterface, pathFindingInfo, size)
        begin
            (0...size).each do |index|
                geographicMapInterface = raceTrackGeographicMapInterfaceFactoryInterface.getTrackInstance(::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(index))
                list = ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathGenerator.getInstance().createList(geographicMapInterface, ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance(), pathFindingInfo, 10)
                puts("Track " + (index).to_s)
                self.printPaths(list)
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.PROCESS, e)
        end
    end
    java_overload :printAllPaths, 3
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMapInterfaceFactoryInterface, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapInterfaceFactoryInterface" unless const_defined?(:RaceTrackGeographicMapInterfaceFactoryInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackRoadsGeographicMapCellHistoryFactory, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory" unless const_defined?(:RaceTrackRoadsGeographicMapCellHistoryFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo" unless const_defined?(:PathFindingInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathGenerator, "org/allbinary/media/graphics/geography/pathfinding/PathGenerator" unless const_defined?(:PathGenerator, false); end; end; end; end; end; end
require "java/lang/System"

end; end; end; end; end; end; end; end

