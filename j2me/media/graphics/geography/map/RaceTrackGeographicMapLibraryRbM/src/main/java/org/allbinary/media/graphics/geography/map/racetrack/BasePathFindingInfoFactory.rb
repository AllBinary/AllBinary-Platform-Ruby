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

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInitVisitorInterface"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

class BasePathFindingInfoFactory
    attr_accessor :logUtil
class RaceTrackGeographicMapCellPositionFactoryInitVisitor
            include ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellPositionFactoryInitVisitorInterface
            attr_accessor :startLineId, :finishLineId, :pathFindingInfoFactory, :geographicMapInterface, :pathFindingInfo, :mapArray

            def jfields_org_allbinary_media_graphics_geography_map_racetrack_BasePathFindingInfoFactory_RaceTrackGeographicMapCellPositionFactoryInitVisitor
                @startLineId = nil unless instance_variable_defined?(:@startLineId)
                @finishLineId = nil unless instance_variable_defined?(:@finishLineId)
                @pathFindingInfoFactory = nil unless instance_variable_defined?(:@pathFindingInfoFactory)
                @geographicMapInterface = nil unless instance_variable_defined?(:@geographicMapInterface)
                @pathFindingInfo = nil unless instance_variable_defined?(:@pathFindingInfo)
                @mapArray = nil unless instance_variable_defined?(:@mapArray)
            end
            

            def initialize(pathFindingInfoFactory, geographicMapInterface, pathFindingInfo, mapArray)
                jfields_org_allbinary_media_graphics_geography_map_racetrack_BasePathFindingInfoFactory_RaceTrackGeographicMapCellPositionFactoryInitVisitor
                @pathFindingInfoFactory = pathFindingInfoFactory
                @geographicMapInterface = geographicMapInterface
                @pathFindingInfo = pathFindingInfo
                @mapArray = mapArray
                raceTrackGeographicMapCellTypeFactory = geographicMapInterface.getGeographicMapCellTypeFactory()
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
                        @pathFindingInfoFactory.addStartPathFindingNode(@pathFindingInfo, cellPosition)
                    end
                    if geographicCellType == @finishLineId
                        if geographicCellType == @startLineId
                            @pathFindingInfoFactory.addEndPathFindingNode(@pathFindingInfo, @geographicMapInterface.getGeographicMapCellPositionFactoryInterface().getInstance(@geographicMapInterface, cellPosition.getColumn(), cellPosition.getRow(), tiledLayer.getColumns(), tiledLayer.getRows(), tiledLayer.getCellWidth(), tiledLayer.getCellHeight()))
                        else
                            @pathFindingInfoFactory.addEndPathFindingNode(@pathFindingInfo, cellPosition)
                        end
                    end
                    raceTrackGeographicMapCellTypeFactory = @geographicMapInterface.getGeographicMapCellTypeFactory()
                    geographicMapCellTypeFactory = ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellTypeFactory.getInstance()
                    if raceTrackGeographicMapCellTypeFactory.isPath(geographicMapCellTypeFactory.get(geographicCellType))
                        RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().track(cellPosition)
                    else
                    end
                rescue StandardError => e
                    commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
                    @pathFindingInfoFactory.logUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(commonSeps.BRACKET_OPEN).appendint(row).append(commonSeps.BRACKET_CLOSE).append(commonSeps.BRACKET_OPEN).appendint(column).append("] in [").appendint(@mapArray.length).append(commonSeps.BRACKET_CLOSE).append(commonSeps.BRACKET_OPEN).appendint(@mapArray[0].length).append(commonSeps.BRACKET_CLOSE).to_s, self, "visit", e)
                    raise e
                end
            end
            java_overload :visit, 2
        end

    def jfields_org_allbinary_media_graphics_geography_map_racetrack_BasePathFindingInfoFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_media_graphics_geography_map_racetrack_BasePathFindingInfoFactory
    end
    

    # throws Exception
    def init(geographicMapInterface, pathFindingInfo, mapArray)
        # local class RaceTrackGeographicMapCellPositionFactoryInitVisitor is defined in the class body
        geographicMapInterface.getGeographicMapCellPositionFactory().visit(RaceTrackGeographicMapCellPositionFactoryInitVisitor.new(self, geographicMapInterface, pathFindingInfo, mapArray))
    end
    

    # throws Exception
    def addStartPathFindingNode(pathFindingInfo, startGeographicMapCellPosition)
        pathFindingInfo.addStartPathFindingNode(::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFindingNode.new(::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT, startGeographicMapCellPosition))
    end
    

    # throws Exception
    def addEndPathFindingNode(pathFindingInfo, endGeographicMapCellPosition)
        pathFindingInfo.addEndPathFindingNode(::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFindingNode.new(::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT, endGeographicMapCellPosition))
    end
    

    # throws Exception
    def getInstancePathFindingInfo(geographicMapInterface, graphArray)
        raise RuntimeError.new()
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory" unless const_defined?(:GeographicMapCellTypeFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo" unless const_defined?(:PathFindingInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingNode, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNode" unless const_defined?(:PathFindingNode, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :RaceTrackRoadsGeographicMapCellHistoryFactory, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory" unless const_defined?(:RaceTrackRoadsGeographicMapCellHistoryFactory, false)

end; end; end; end; end; end; end

