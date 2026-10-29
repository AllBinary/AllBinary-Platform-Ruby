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
# package org.allbinary.media.graphics.geography.map.drop

require "org/allbinary/media/graphics/geography/map/drop/BaseDropCellPositionGenerator"

class AnyRandomDropCellPositionGenerator < BaseDropCellPositionGenerator
    attr_accessor :list, :geographicMapInterface

    def initialize_fields
        @list = BasicArrayListD.new()
        @geographicMapInterface = NullUtil.getInstance().NULL_OBJECT
    end

    def initialize
        super()
        initialize_fields
    end
    

    # throws Exception
    def update(allBinaryGameLayerManager, geographicMapInterface)
        @geographicMapInterface = geographicMapInterface
        basicGeographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        randomFactory = MyRandomFactory.getInstance()
        tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        total = tiledLayer.getColumns() * tiledLayer.getRows()
        randomColumn = 0
        randomRow = 0
        geographicMapCellPosition = nil
        index = total
        while (index -= 1) >= 0
            randomColumn = randomFactory.getAbsoluteNextInt(tiledLayer.getColumns())
            randomRow = randomFactory.getAbsoluteNextInt(tiledLayer.getRows())
            geographicMapCellPosition = basicGeographicMapCellPositionFactory.getAt(randomColumn, randomRow)
            if self.isDropAllowedAt(geographicMapCellPosition)
                @list.add(geographicMapCellPosition)
            end
        end
    end
    

    # throws Exception
    def processTick(allBinaryLayerManager)
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/game/rand/MyRandomFactory"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"

