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

require "org/allbinary/media/graphics/geography/map/racetrack/BasePathFindingInfoFactory"

class PathFindingInfoFactory < BasePathFindingInfoFactory
    

    def self.getInstance()
        return PathFindingInfoFactory.instance
    end
    

    def initialize()
        super()
    end
    

    # throws Exception
    def getInstancePathFindingInfo(geographicMapInterface, graphArray)
        commonStrings = CommonStrings.getInstance()
        PreLogUtil.put(commonStrings.START, self, commonStrings.GET_INSTANCE)
        pathFindingInfo = PathFindingInfo.new(PathFindingNodeCostInfoFactoryBase.new(), BasicArrayListS.new(1), BasicArrayListS.new(1))
        RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().init()
        self.init(geographicMapInterface, pathFindingInfo, graphArray)
        return pathFindingInfo
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase"
require "org/allbinary/util/BasicArrayListS"

class PathFindingInfoFactory
    @@instance = PathFindingInfoFactory.new()
end

