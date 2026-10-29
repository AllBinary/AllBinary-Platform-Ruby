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

require "org/allbinary/game/behavior/topview/GeographicMapTopViewLayerBehavior"

class GeographicMapTopViewGameLayerBehavior2 < GeographicMapTopViewLayerBehavior
    attr_accessor :gravityUtil, :geographicMapBehavior, :autoStepBlocks, :offsetY, :previousGeographicMapCellPosition

    def initialize_fields
        @gravityUtil = GravityUtil.getInstance()
        @geographicMapBehavior = MultiGeographicMapBehavior.new()
        @autoStepBlocks = nil
        @offsetY = nil
        @previousGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
    end
    

    def initialize(maxGravityActionIndex, autoStepBlocks, offsetY)
        super(maxGravityActionIndex)
        initialize_fields
        @autoStepBlocks = autoStepBlocks
        @offsetY = offsetY
    end
    

    # throws Exception
    def gravity(velocityProperties, geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition)
        if geographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            @geographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition)
            hasSolidBlock = self.hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray)
            if !hasSolidBlock
                @gravityUtil.process(velocityProperties, @gravityUtil.GAME_GRAVITY_VELOCITY)
                velocityProperties.limitXYToForwardAndReverseMaxVelocity()
                self.gravity()
            else
            end
        end
    end
    

    # throws Exception
    def getPositionTopLeft(geographicMapInterfaceArray, layer, x, y)
        xCellPosition = layer.getXP() + -x
        yCellPosition = layer.getYP() + -y
        return geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition)
    end
    

    # throws Exception
    def getPositionTopRight(geographicMapInterfaceArray, layer, x, y)
        xCellPosition = layer.getXP() + -x + layer.getWidth()
        yCellPosition = layer.getYP() + -y
        return geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition)
    end
    

    # throws Exception
    def getPositionBottomLeft(geographicMapInterfaceArray, layer, x, y)
        xCellPosition = layer.getXP() + -x
        yCellPosition = layer.getYP() + -y + layer.getHeight()
        return geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition)
    end
    

    # throws Exception
    def getPositionBottomRight(geographicMapInterfaceArray, layer, x, y)
        xCellPosition = layer.getXP() + -x + layer.getWidth()
        yCellPosition = layer.getYP() + -y + layer.getHeight()
        return geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition)
    end
    

    # throws Exception
    def getLeftPosition(geographicMapInterfaceArray, layer)
        xCellPosition = layer.getXP()
        yCellPosition = layer.getYP() + layer.getHeight()
        return geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition)
    end
    

    # throws Exception
    def getRightPosition(geographicMapInterfaceArray, layer)
        xCellPosition = layer.getXP() + layer.getWidth()
        yCellPosition = layer.getYP() + layer.getHeight()
        return geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition)
    end
    

    # throws Exception
    def getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y)
        geographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        topLeftGeographicMapCellPosition = self.getPositionTopLeft(geographicMapInterfaceArray, layer, x, y)
        geographicMapCellPosition = self.getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, topLeftGeographicMapCellPosition, velocityProperties, layer)
        if geographicMapCellPosition == SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        end
        topRightGeographicMapCellPosition = self.getPositionTopRight(geographicMapInterfaceArray, layer, x, y)
        geographicMapCellPosition = self.getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, topRightGeographicMapCellPosition, velocityProperties, layer)
        if geographicMapCellPosition == SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        end
        bottomLeftGeographicMapCellPosition = self.getPositionBottomLeft(geographicMapInterfaceArray, layer, x, y)
        geographicMapCellPosition = self.getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, bottomLeftGeographicMapCellPosition, velocityProperties, layer)
        if geographicMapCellPosition == SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        end
        bottomRightGeographicMapCellPosition = self.getPositionBottomRight(geographicMapInterfaceArray, layer, x, y)
        geographicMapCellPosition = self.getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, bottomRightGeographicMapCellPosition, velocityProperties, layer)
        if geographicMapCellPosition == SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        else
        end
        return geographicMapCellPosition
    end
    

    # throws Exception
    def getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer)
        if geographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            possibleStepGeographicMapCellPosition = geographicMapCellPosition
            tiledLayer = geographicMapInterfaceArray[0].getAllBinaryTiledLayer()
            if possibleStepGeographicMapCellPosition.getColumn() > 0 && possibleStepGeographicMapCellPosition.getRow() > 0 && possibleStepGeographicMapCellPosition.getColumn() < tiledLayer.getColumns() && possibleStepGeographicMapCellPosition.getRow() < tiledLayer.getRows()
                @geographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition)
                hasSolidBlock = self.hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray)
                hasOffMap = self.isOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray)
                if hasSolidBlock || hasOffMap
                    @previousGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                else
                    @previousGeographicMapCellPosition = possibleStepGeographicMapCellPosition
                    return possibleStepGeographicMapCellPosition
                end
            end
        else
        end
        @previousGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
    end
    

    # throws Exception
    def moveAndLand(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer, x, y)
        if geographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            topViewCharacterInterface = (layer)
            topViewCharacterInterface.terrainMove(geographicMapInterfaceArray, geographicMapCellTypeArray, x, y)
        else
        end
    end
    

    # throws Exception
    def move(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y)
        geographicMapCellPosition = self.getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y)
        self.moveAndLand(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer, x, y)
        if geographicMapCellPosition == SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            return false
        else
            return true
        end
    end
    

    # throws Exception
    def left(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer)
        geographicMapCellPosition = self.getLeftPosition(geographicMapInterfaceArray, layer)
        if geographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            possibleStepGeographicMapCellPosition = geographicMapInterfaceArray[0].getGeographicMapCellPositionFactory().getAt(geographicMapCellPosition.getColumn(), geographicMapCellPosition.getRow() - 1)
            @geographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition)
            hasSolidBlock = self.hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray)
            if hasSolidBlock
                if @autoStepBlocks
                    topViewCharacterInterface = (layer)
                    topViewCharacterInterface.leftp()
                else
                    velocityProperties.getVelocityXBasicDecimalP().setint(0)
                end
            else
                topViewCharacterInterface = (layer)
                topViewCharacterInterface.leftp()
            end
        end
    end
    

    # throws Exception
    def right(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer)
        geographicMapCellPosition = self.getRightPosition(geographicMapInterfaceArray, layer)
        if geographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            possibleStepGeographicMapCellPosition = geographicMapInterfaceArray[0].getGeographicMapCellPositionFactory().getAt(geographicMapCellPosition.getColumn(), geographicMapCellPosition.getRow() - 1)
            @geographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition)
            hasSolidBlock = self.hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray)
            if hasSolidBlock
                if @autoStepBlocks
                    topViewCharacterInterface = (layer)
                    topViewCharacterInterface.rightp()
                else
                    velocityProperties.getVelocityXBasicDecimalP().setint(0)
                end
            else
                topViewCharacterInterface = (layer)
                topViewCharacterInterface.rightp()
            end
        end
    end
end

require "org/allbinary/media/graphics/geography/map/MultiGeographicMapBehavior"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/game/physics/acceleration/GravityUtil"
require "org/allbinary/game/physics/velocity/VelocityProperties"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"
require "org/allbinary/game/behavior/topview/TopViewCharacterInterface"

