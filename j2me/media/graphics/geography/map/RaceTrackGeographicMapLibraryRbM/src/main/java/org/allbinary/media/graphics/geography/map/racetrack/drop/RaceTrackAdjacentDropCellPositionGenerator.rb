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
# package org.allbinary.media.graphics.geography.map.racetrack.drop

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/racetrack/drop/RaceTrackDropCellPositionGenerator"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; module Drop

class RaceTrackAdjacentDropCellPositionGenerator < RaceTrackDropCellPositionGenerator
    attr_accessor :layerCoveringCellPositionsUtil, :groupCommonFactory, :surroundingCellPositions, :hashtable, :geographicMapDirectionUtil

    def jfields_org_allbinary_media_graphics_geography_map_racetrack_drop_RaceTrackAdjacentDropCellPositionGenerator
        @layerCoveringCellPositionsUtil = ::Org::Allbinary::Game::Layer::Geographic::Map::LayerCoveringCellPositionsUtil.getInstance()
        @groupCommonFactory = ::Org::Allbinary::Game::Identification::GroupCommonFactory.getInstance()
        @surroundingCellPositions = Array.new(4, nil)
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        @geographicMapDirectionUtil = ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapDirectionUtil.getInstance()
    end
    

    def self.getInstance()
        return RaceTrackAdjacentDropCellPositionGenerator::SINGLETON
    end
    

    def initialize()
        super()
        jfields_org_allbinary_media_graphics_geography_map_racetrack_drop_RaceTrackAdjacentDropCellPositionGenerator
    end
    

    # throws Exception
    def getFirstNonRoadAdjacentCellPosition(column, row)
        nonRoadGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        geographicMapCellPositionFactory = @raceTrackGeographicMap.getGeographicMapCellPositionFactory()
        @surroundingCellPositions[0] = geographicMapCellPositionFactory.getAt(column, row - 1)
        @surroundingCellPositions[1] = geographicMapCellPositionFactory.getAt(column, row + 1)
        @surroundingCellPositions[2] = geographicMapCellPositionFactory.getAt(column - 1, row)
        @surroundingCellPositions[3] = geographicMapCellPositionFactory.getAt(column + 1, row)
        baseRaceTrackGeographicMap = @raceTrackGeographicMap
        raceTrackGeographicMapCellTypeFactory = baseRaceTrackGeographicMap.getGeographicMapCellTypeFactory()
        geographicMapCellPosition = nil
        raceTrackGeographicMapCellType = nil
        index = @surroundingCellPositions.length
        while (index -= 1) >= 0
            geographicMapCellPosition = @surroundingCellPositions[index]
            raceTrackGeographicMapCellType = @raceTrackGeographicMap.getCellTypeAt(geographicMapCellPosition)
            if !raceTrackGeographicMapCellTypeFactory.isPath(raceTrackGeographicMapCellType)
                nonRoadGeographicMapCellPosition = geographicMapCellPosition
                break
            end
        end
        return nonRoadGeographicMapCellPosition
    end
    java_overload :getFirstNonRoadAdjacentCellPosition, 2
    

    # throws Exception
    def update(allBinaryGameLayerManager, geographicMapInterface)
        @hashtable.put(::Org::Allbinary::Game::Layer::AllBinaryGameLayerManager::ID, allBinaryGameLayerManager)
        RaceTrackAdjacentDropCellPositionGenerator.superclass.java_super_method(:update, 2).bind(self).call(allBinaryGameLayerManager, geographicMapInterface)
    end
    java_overload :update, 2
    

    # throws Exception
    def drop(allBinaryLayerManager, index)
        geographicMapCellPosition = @list.get(index)
        randomGeographicMapCellPosition = self.getFirstNonRoadAdjacentCellPosition(geographicMapCellPosition.getColumn(), geographicMapCellPosition.getRow())
        if randomGeographicMapCellPosition == nil
            return
        end
        dropCellPositionHistory = ::Org::Allbinary::Media::Graphics::Geography::Map::Drop::DropCellPositionHistory.getInstance()
        if !dropCellPositionHistory.isCellPositionWithDrop(geographicMapCellPosition)
            direction = @geographicMapDirectionUtil.getDirectionFromCellPositionToAdjacentCellPosition(randomGeographicMapCellPosition, geographicMapCellPosition)
            objectCanBeNull = @hashtable.get(@groupCommonFactory.ID)
            if objectCanBeNull != nil
            else
                @hashtable.put(@groupCommonFactory.ID, ::Org::Allbinary::Game::Identification::BasicGroupFactory.getInstance().NONE_ARRAY)
            end
            @hashtable.put(::Org::Allbinary::Direction::DirectionFactory.getInstance().NAME, direction)
            point = randomGeographicMapCellPosition.getPoint()
            x = point.getX()
            y = point.getY()
            z = point.getZ()
            layerInterface = RaceTrackAdjacentDropLayerFactory.getInstance().getRandomInstance().getNextInstance(@hashtable, x, y, z)
            baseRaceTrackGeographicMap = @raceTrackGeographicMap
            list = @layerCoveringCellPositionsUtil.getAll(baseRaceTrackGeographicMap, randomGeographicMapCellPosition, layerInterface, ::Org::Allbinary::Util::BasicArrayListD.new())
            if dropCellPositionHistory.anyCellPositionWithDrop(list)
                return
            end
            geographicMapCellType = nil
            index2 = list.size()
            while (index2 -= 1) >= 0
                geographicMapCellType = @raceTrackGeographicMap.getCellTypeAt(list.get(index2))
                if @raceTrackGeographicMapCellTypeFactory.isPath(geographicMapCellType)
                    return
                end
            end
            dropCellPositionHistory.addAll(list, layerInterface)
            allBinaryLayerManager.append(layerInterface)
        end
    end
    java_overload :drop, 2

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, RaceTrackAdjacentDropCellPositionGenerator.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RaceTrackAdjacentDropCellPositionGenerator"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Identification; autoload :GroupCommonFactory, "org/allbinary/game/identification/GroupCommonFactory" unless const_defined?(:GroupCommonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory" unless const_defined?(:DirectionFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :BasicGroupFactory, "org/allbinary/game/identification/BasicGroupFactory" unless const_defined?(:BasicGroupFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Geographic; module Map; autoload :LayerCoveringCellPositionsUtil, "org/allbinary/game/layer/geographic/map/LayerCoveringCellPositionsUtil" unless const_defined?(:LayerCoveringCellPositionsUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapDirectionUtil, "org/allbinary/media/graphics/geography/map/GeographicMapDirectionUtil" unless const_defined?(:GeographicMapDirectionUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Drop; autoload :DropCellPositionGeneratorInterface, "org/allbinary/media/graphics/geography/map/drop/DropCellPositionGeneratorInterface" unless const_defined?(:DropCellPositionGeneratorInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Drop; autoload :DropCellPositionHistory, "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory" unless const_defined?(:DropCellPositionHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :BaseRaceTrackGeographicMap, "org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap" unless const_defined?(:BaseRaceTrackGeographicMap, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMapCellType, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType" unless const_defined?(:RaceTrackGeographicMapCellType, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory" unless const_defined?(:RaceTrackGeographicMapCellTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :RaceTrackAdjacentDropLayerFactory, "org/allbinary/media/graphics/geography/map/racetrack/drop/RaceTrackAdjacentDropLayerFactory" unless const_defined?(:RaceTrackAdjacentDropLayerFactory, false)

begin
    RaceTrackAdjacentDropCellPositionGenerator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

