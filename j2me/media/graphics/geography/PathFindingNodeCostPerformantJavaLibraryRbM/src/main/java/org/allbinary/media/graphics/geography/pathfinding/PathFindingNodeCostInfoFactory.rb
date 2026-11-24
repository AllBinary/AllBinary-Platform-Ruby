#
# AllBinary Open License Version 1
# Copyright (c) 2006 AllBinary
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
# package org.allbinary.media.graphics.geography.pathfinding

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

class PathFindingNodeCostInfoFactory < PathFindingNodeCostInfoFactoryBase
    

    def initialize(max)
        super()
    end
    

    # throws Exception
    def create(geographicMapInterface, goingToGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd)
    end
    java_overload :create, 5
    

    # throws Exception
    def getTotalCost(geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition)
        geographicMapCellType = geographicMapInterface.getCellTypeAt(comingFromGeographicMapCellPosition)
        geographicMapCellType2 = geographicMapInterface.getCellTypeAt(geographicMapCellPosition)
        raceTrackGeographicMapCellType = geographicMapCellType
        raceTrackGeographicMapCellType2 = geographicMapCellType2
        return ((raceTrackGeographicMapCellType.getTravelCost()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + raceTrackGeographicMapCellType2.getTravelCost()
    end
    java_overload :getTotalCost, 3
end

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMapCellType, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType" unless const_defined?(:RaceTrackGeographicMapCellType, false); end; end; end; end; end; end; end

end; end; end; end; end; end

