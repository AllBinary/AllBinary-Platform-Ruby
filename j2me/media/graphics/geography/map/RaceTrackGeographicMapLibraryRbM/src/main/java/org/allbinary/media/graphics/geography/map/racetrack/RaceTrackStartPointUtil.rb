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
# package org.allbinary.media.graphics.geography.map.racetrack


class RaceTrackStartPointUtil
    

    # throws Exception
    def self.get(geographicMapInterface, pathFindingInfo, index)
        list = pathFindingInfo.getStartPathFindingNodeList()
        startPathFindingNode = list.get(index)
        geographicMapCellPosition = startPathFindingNode.geographicMapCellPosition
        point = geographicMapCellPosition.getPoint()
        return PointFactory.getInstance().createXY(point.getX(), point.getY() + geographicMapInterface.getAllBinaryTiledLayer().getHalfCellHeight())
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNode"

