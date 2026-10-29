# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.layer

require "org/allbinary/game/layer/GeographicMapCellPositionAreaBase"

class GeographicMapCellPositionArea < GeographicMapCellPositionAreaBase
    attr_accessor :cellPositionsUtil, :layerCoveringCellPositionsUtil, :reusableOccupyingGeographicMapCellPositionList, :reusableSurroundingGeographicMapCellPositionList, :surroundingCircularIndexUtil, :layerInterface, :LIST, :occupyingGeographicMapCellPositionList, :surroundingGeographicMapCellPositionList

    def initialize_fields
        @cellPositionsUtil = CellPositionsUtil.getInstance()
        @layerCoveringCellPositionsUtil = LayerCoveringCellPositionsUtil.getInstance()
        @reusableOccupyingGeographicMapCellPositionList = BasicArrayListS.new(4)
        @reusableSurroundingGeographicMapCellPositionList = BasicArrayListS.new(12)
        @surroundingCircularIndexUtil = CircularIndexUtil.createInstance(0)
        @layerInterface = nil
        @LIST = BasicArrayListUtil.getInstance().getImmutableInstance()
        @occupyingGeographicMapCellPositionList = @LIST
        @surroundingGeographicMapCellPositionList = @LIST
    end
    

    def initialize(layerInterface)
        super()
        initialize_fields
        @layerInterface = layerInterface
    end
    

    # throws Exception
    def update(geographicMapInterface)
        @occupyingGeographicMapCellPositionList = @layerCoveringCellPositionsUtil.getAllXY(geographicMapInterface, @layerInterface, @layerInterface.getXP(), @layerInterface.getYP(), @reusableOccupyingGeographicMapCellPositionList)
        @surroundingGeographicMapCellPositionList = @cellPositionsUtil.getAllSurrounding(geographicMapInterface, @occupyingGeographicMapCellPositionList, @reusableSurroundingGeographicMapCellPositionList)
        @surroundingCircularIndexUtil.setSize(@surroundingGeographicMapCellPositionList.size())
    end
    

    def getOccupyingGeographicMapCellPositionList()
        return @occupyingGeographicMapCellPositionList
    end
    

    def getSurroundingGeographicMapCellPositionList()
        return @surroundingGeographicMapCellPositionList
    end
    

    def getNextSurroundingGeographicMapCellPosition()
        geographicMapCellPosition = @surroundingGeographicMapCellPositionList.get(@surroundingCircularIndexUtil.getIndex())
        @surroundingCircularIndexUtil.next_()
        return geographicMapCellPosition
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/game/layer/geographic/map/LayerCoveringCellPositionsUtil"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/CellPositionsUtil"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/util/BasicArrayListS"
require "org/allbinary/util/BasicArrayListUtil"

