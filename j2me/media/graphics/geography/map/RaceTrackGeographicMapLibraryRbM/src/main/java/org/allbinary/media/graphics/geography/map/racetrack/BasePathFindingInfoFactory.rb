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

require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInitVisitorInterface"

class BasePathFindingInfoFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception
    def init(geographicMapInterface, pathFindingInfo, mapArray)
        class RaceTrackGeographicMapCellPositionFactoryInitVisitor
            include GeographicMapCellPositionFactoryInitVisitorInterface
            attr_accessor :startLineId, :finishLineId

            def initialize_fields
                @startLineId = nil
                @finishLineId = nil
            end
            

            def initialize()
                initialize_fields
                raceTrackGeographicMapCellTypeFactory = @geographicMapInterface.getGeographicMapCellTypeFactory()
                @startLineId = raceTrackGeographicMapCellTypeFactory.getStartType()
                @finishLineId = raceTrackGeographicMapCellTypeFactory.getEndType()
            end
            

            # throws Exception
            def visit(tiledLayer, cellPosition)
                row = cellPosition.getRow()
                column = cellPosition.getColumn()
                begin
                    cellTypeId = @mapArray[row][column]
                    geographicCellType = @geographicMapInterface.getCellTypeFromMapCellTypeInt(cellTypeId)
                    if geographicCellType == @startLineId
                        self.addStartPathFindingNode(@pathFindingInfo, cellPosition)
                    end
                    if geographicCellType == @finishLineId
                        if geographicCellType == @startLineId
                            self.addEndPathFindingNode(@pathFindingInfo, @geographicMapInterface.getGeographicMapCellPositionFactoryInterface().getInstance(@geographicMapInterface, cellPosition.getColumn(), cellPosition.getRow(), tiledLayer.getColumns(), tiledLayer.getRows(), tiledLayer.getCellWidth(), tiledLayer.getCellHeight()))
                        else
                            self.addEndPathFindingNode(@pathFindingInfo, cellPosition)
                        end
                    end
                    raceTrackGeographicMapCellTypeFactory = @geographicMapInterface.getGeographicMapCellTypeFactory()
                    geographicMapCellTypeFactory = GeographicMapCellTypeFactory.getInstance()
                    if raceTrackGeographicMapCellTypeFactory.isPath(geographicMapCellTypeFactory.get(geographicCellType))
                        RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().track(cellPosition)
                    else
                    end
                rescue StandardError => e
                    commonSeps = CommonSeps.getInstance()
                    @logUtil.put(StringMaker.new().append(commonSeps.BRACKET_OPEN).appendint(row).append(commonSeps.BRACKET_CLOSE).append(commonSeps.BRACKET_OPEN).appendint(column).append("] in [").appendint(@mapArray.length).append(commonSeps.BRACKET_CLOSE).append(commonSeps.BRACKET_OPEN).appendint(@mapArray[0].length).append(commonSeps.BRACKET_CLOSE).to_s, self, "visit", e)
                    raise e
                end
            end
        end
        geographicMapInterface.getGeographicMapCellPositionFactory().visit(RaceTrackGeographicMapCellPositionFactoryInitVisitor.new())
    end
    

    # throws Exception
    def addStartPathFindingNode(pathFindingInfo, startGeographicMapCellPosition)
        pathFindingInfo.addStartPathFindingNode(PathFindingNode.new(NullUtil.getInstance().NULL_OBJECT, startGeographicMapCellPosition))
    end
    

    # throws Exception
    def addEndPathFindingNode(pathFindingInfo, endGeographicMapCellPosition)
        pathFindingInfo.addEndPathFindingNode(PathFindingNode.new(NullUtil.getInstance().NULL_OBJECT, endGeographicMapCellPosition))
    end
    

    # throws Exception
    def getInstancePathFindingInfo(geographicMapInterface, graphArray)
        raise RuntimeError.new()
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNode"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory"

