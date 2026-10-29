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

require "org/allbinary/media/graphics/geography/map/racetrack/RaceTracksPathPrinter"

class DynamicRaceTracksPathPrinter < RaceTracksPathPrinter
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        super()
        initialize_fields
    end
    

    def printAllPaths(raceTrackGeographicMapInterfaceFactoryInterface, pathFindingInfo, size)
        begin
            (0...size).each do |index|
                geographicMapInterface = raceTrackGeographicMapInterfaceFactoryInterface.getTrackInstance(SmallIntegerSingletonFactory.getInstance().getAt(index))
                list = PathGenerator.getInstance().createList(geographicMapInterface, RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance(), pathFindingInfo, 10)
                puts("Track " + (index).to_s)
                self.printPaths(list)
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.PROCESS, e)
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapInterfaceFactoryInterface"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo"
require "org/allbinary/media/graphics/geography/pathfinding/PathGenerator"
require "java/lang/System"

