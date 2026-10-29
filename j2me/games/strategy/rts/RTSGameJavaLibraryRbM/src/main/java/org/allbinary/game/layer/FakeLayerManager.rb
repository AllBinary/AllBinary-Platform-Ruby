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
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer

require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"

class FakeLayerManager < AllBinaryGameLayerManager
    include GeographicMapCompositeInterface
    attr_accessor :geographicMapInterfaceArray, :geographicMapCellTypeArray

    def initialize_fields
        @geographicMapInterfaceArray = BasicGeographicMap::NULL_BASIC_GEOGRAPHIC_MAP_ARRAY
        @geographicMapCellTypeArray = GeographicMapCellType::NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY
    end
    

    def initialize(gameInfo)
        super(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE, gameInfo)
        initialize_fields
    end
    

    def getGeographicMapInterface()
        return @geographicMapInterfaceArray
    end
    

    def setGeographicMapInterface(geographicMapInterfaceArray)
        @geographicMapInterfaceArray = geographicMapInterfaceArray
        @geographicMapCellTypeArray = Array.new(@geographicMapInterfaceArray.length, nil)
    end
    

    def geographicMapCellTypeArray()
        return @geographicMapCellTypeArray
    end
end

require "org/allbinary/game/GameInfo"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"

