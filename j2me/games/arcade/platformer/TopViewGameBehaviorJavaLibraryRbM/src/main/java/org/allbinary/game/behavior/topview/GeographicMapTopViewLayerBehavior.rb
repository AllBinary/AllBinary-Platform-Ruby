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

require "org/allbinary/game/behavior/topview/TopViewGameLayerBehavior"

class GeographicMapTopViewLayerBehavior < TopViewGameLayerBehavior
    

    def initialize(maxGravityActionIndex)
        super(maxGravityActionIndex)
    end
    

    # throws Exception
    def getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y)
        return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
    end
    

    # throws Exception
    def getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer)
        return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
    end
    

    # throws Exception
    def getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPositionList, velocityProperties, layer)
        return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
    end
    

    # throws Exception
    def gravity(velocityProperties, geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition)
    end
    

    # throws Exception
    def left(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer)
    end
    

    # throws Exception
    def move(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y)
        return false
    end
    

    # throws Exception
    def moveAndLand(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer, x, y)
    end
    

    # throws Exception
    def right(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer)
    end
    

    def hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray)
        size = geographicMapInterfaceArray.length
        basicTopViewGeographicMapCellTypeFactory = nil
        (0...size).each do |index|
            basicTopViewGeographicMapCellTypeFactory = geographicMapInterfaceArray[index].getGeographicMapCellTypeFactory()
            if basicTopViewGeographicMapCellTypeFactory.BLOCK_CELL_TYPE.isType(geographicMapCellTypeArray[index])
                return true
            end
        end
        return false
    end
    

    def isOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray)
        size = geographicMapInterfaceArray.length
        basicTopViewGeographicMapCellTypeFactory = nil
        (0...size).each do |index|
            basicTopViewGeographicMapCellTypeFactory = geographicMapInterfaceArray[index].getGeographicMapCellTypeFactory()
            if basicTopViewGeographicMapCellTypeFactory.OFF_MAP_CELL_TYPE.isType(geographicMapCellTypeArray[index])
                return true
            end
        end
        return false
    end
end

require "org/allbinary/game/physics/velocity/VelocityProperties"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/topview/BasicTopViewGeographicMapCellTypeFactory"
require "org/allbinary/util/BasicArrayList"

