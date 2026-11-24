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
# package org.allbinary.game.behavior.topview

require "java/lang/JavaOverload"
require "org/allbinary/game/behavior/topview/TopViewCharacterBehavior"

module ::Org; module Allbinary; module Game; module Behavior; module Topview

class NonPlayerTopViewCharacterBehavior < TopViewCharacterBehavior
    attr_accessor :geographicMapBehavior, :CLIFF

    def jfields_org_allbinary_game_behavior_topview_NonPlayerTopViewCharacterBehavior
        @geographicMapBehavior = ::Org::Allbinary::Media::Graphics::Geography::Map::MultiGeographicMapBehavior.new()
        @CLIFF = ::Org::Allbinary::Game::Terrain::BasicTerrainInfo.new(::Org::Allbinary::MathPackage::AngleFactory.getInstance().DOWN)
    end

    def initialize
        super()
        jfields_org_allbinary_game_behavior_topview_NonPlayerTopViewCharacterBehavior
    end
    

    # throws Exception
    def terrainEvent(layer, direction, x, y, geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition)
        maxColumns = geographicMapInterfaceArray[0].getAllBinaryTiledLayer().getColumns()
        if geographicMapCellPosition.getColumn() > 0 && geographicMapCellPosition.getColumn() < maxColumns
            nextTerrainGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            geographicMapCellPositionFactory = geographicMapInterfaceArray[0].getGeographicMapCellPositionFactory()
            if direction == ::Org::Allbinary::Direction::DirectionFactory.getInstance().LEFT
                nextTerrainGeographicMapCellPosition = geographicMapCellPositionFactory.getAt(geographicMapCellPosition.getColumn() - 1, geographicMapCellPosition.getRow())
            elsif direction == ::Org::Allbinary::Direction::DirectionFactory.getInstance().RIGHT
                nextTerrainGeographicMapCellPosition = geographicMapCellPositionFactory.getAt(geographicMapCellPosition.getColumn() + 1, geographicMapCellPosition.getRow())
            end
            @geographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, nextTerrainGeographicMapCellPosition)
            hasSolidBlock = self.hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray)
            if !hasSolidBlock
                terrainEvent = ::Org::Allbinary::Game::Terrain::TerrainEventCircularStaticPool.getInstance().getNext(@CLIFF)
                ::Org::Allbinary::Game::Terrain::TerrainEventHandler.getInstance(layer).fireEvent(terrainEvent)
            end
        end
    end
    java_overload :terrainEvent, 7
    

    def terrainMove(layer, geographicMapInterfaceArray, x, y)
        layer.moveDXY(x, y)
    end
    java_overload :terrainMove, 4
end

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :MultiGeographicMapBehavior, "org/allbinary/media/graphics/geography/map/MultiGeographicMapBehavior" unless const_defined?(:MultiGeographicMapBehavior, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory" unless const_defined?(:DirectionFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Terrain; autoload :BasicTerrainInfo, "org/allbinary/game/terrain/BasicTerrainInfo" unless const_defined?(:BasicTerrainInfo, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Terrain; autoload :TerrainEvent, "org/allbinary/game/terrain/TerrainEvent" unless const_defined?(:TerrainEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Terrain; autoload :TerrainEventCircularStaticPool, "org/allbinary/game/terrain/TerrainEventCircularStaticPool" unless const_defined?(:TerrainEventCircularStaticPool, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Terrain; autoload :TerrainEventHandler, "org/allbinary/game/terrain/TerrainEventHandler" unless const_defined?(:TerrainEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end

end; end; end; end; end

