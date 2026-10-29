# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
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
# package org.allbinary.game.layer.geological.resources

require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface"

class GeologicalGeographicMapCellPositionFactory
    include GeographicMapCellPositionFactoryInterface
    attr_accessor :resourcePerMapCellType

    def initialize_fields
        @resourcePerMapCellType = nil
    end
    

    def initialize(resourcePerMapCellType)
        initialize_fields
        @resourcePerMapCellType = resourcePerMapCellType
    end
    

    # throws Exception
    def getInstance(geographicMapInterface, i_column, i_row, columns, rows, width, height)
        tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        resources = @resourcePerMapCellType[tiledLayer.getCell(i_column, i_row)] + MyRandomFactory.getInstance().getAbsoluteNextInt(1000)
        return GeologicalGeographicMapCellPosition.new(i_column, i_row, columns, rows, width, height, GeologicalResource.new(resources))
    end
end

require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/game/rand/MyRandomFactory"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/game/layer/geological/resources/GeologicalGeographicMapCellPosition"
require "org/allbinary/game/layer/geological/resources/GeologicalResource"

