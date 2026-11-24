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
require "org/allbinary/game/behavior/topview/GeographicMapTopViewLayerBehavior"

module ::Org; module Allbinary; module Game; module Behavior; module Topview

class GeographicMapTopViewGameLayerBehavior2 < GeographicMapTopViewLayerBehavior
    attr_accessor :gravityUtil, :geographicMapBehavior, :autoStepBlocks, :offsetY, :previousGeographicMapCellPosition

    def jfields_org_allbinary_game_behavior_topview_GeographicMapTopViewGameLayerBehavior2
        @gravityUtil = ::Org::Allbinary::Game::Physics::Acceleration::GravityUtil.getInstance()
        @geographicMapBehavior = ::Org::Allbinary::Media::Graphics::Geography::Map::MultiGeographicMapBehavior.new()
        @autoStepBlocks = nil unless instance_variable_defined?(:@autoStepBlocks)
        @offsetY = nil unless instance_variable_defined?(:@offsetY)
        @previousGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
    end
    

    def initialize(maxGravityActionIndex, autoStepBlocks, offsetY)
        super(maxGravityActionIndex)
        jfields_org_allbinary_game_behavior_topview_GeographicMapTopViewGameLayerBehavior2
        @autoStepBlocks = autoStepBlocks
        @offsetY = offsetY
    end
    

    # throws Exception
    def gravity(velocityProperties, geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition)
        if geographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
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
    java_overload :gravity, 4
    

    # throws Exception
    def getPositionTopLeft(geographicMapInterfaceArray, layer, x, y)
        xCellPosition = layer.getXP() + -x
        yCellPosition = layer.getYP() + -y
        return geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition)
    end
    java_overload :getPositionTopLeft, 4
    

    # throws Exception
    def getPositionTopRight(geographicMapInterfaceArray, layer, x, y)
        xCellPosition = layer.getXP() + -x + layer.getWidth()
        yCellPosition = layer.getYP() + -y
        return geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition)
    end
    java_overload :getPositionTopRight, 4
    

    # throws Exception
    def getPositionBottomLeft(geographicMapInterfaceArray, layer, x, y)
        xCellPosition = layer.getXP() + -x
        yCellPosition = layer.getYP() + -y + layer.getHeight()
        return geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition)
    end
    java_overload :getPositionBottomLeft, 4
    

    # throws Exception
    def getPositionBottomRight(geographicMapInterfaceArray, layer, x, y)
        xCellPosition = layer.getXP() + -x + layer.getWidth()
        yCellPosition = layer.getYP() + -y + layer.getHeight()
        return geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition)
    end
    java_overload :getPositionBottomRight, 4
    

    # throws Exception
    def getLeftPosition(geographicMapInterfaceArray, layer)
        xCellPosition = layer.getXP()
        yCellPosition = layer.getYP() + layer.getHeight()
        return geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition)
    end
    java_overload :getLeftPosition, 2
    

    # throws Exception
    def getRightPosition(geographicMapInterfaceArray, layer)
        xCellPosition = layer.getXP() + layer.getWidth()
        yCellPosition = layer.getYP() + layer.getHeight()
        return geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition)
    end
    java_overload :getRightPosition, 2
    

    # throws Exception
    def getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y)
        geographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        topLeftGeographicMapCellPosition = self.getPositionTopLeft(geographicMapInterfaceArray, layer, x, y)
        geographicMapCellPosition = self.getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, topLeftGeographicMapCellPosition, velocityProperties, layer)
        if geographicMapCellPosition == ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            return ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        end
        topRightGeographicMapCellPosition = self.getPositionTopRight(geographicMapInterfaceArray, layer, x, y)
        geographicMapCellPosition = self.getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, topRightGeographicMapCellPosition, velocityProperties, layer)
        if geographicMapCellPosition == ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            return ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        end
        bottomLeftGeographicMapCellPosition = self.getPositionBottomLeft(geographicMapInterfaceArray, layer, x, y)
        geographicMapCellPosition = self.getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, bottomLeftGeographicMapCellPosition, velocityProperties, layer)
        if geographicMapCellPosition == ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            return ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        end
        bottomRightGeographicMapCellPosition = self.getPositionBottomRight(geographicMapInterfaceArray, layer, x, y)
        geographicMapCellPosition = self.getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, bottomRightGeographicMapCellPosition, velocityProperties, layer)
        if geographicMapCellPosition == ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        else
        end
        return geographicMapCellPosition
    end
    java_overload :getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation, 6
    

    # throws Exception
    def getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer)
        if geographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            possibleStepGeographicMapCellPosition = geographicMapCellPosition
            tiledLayer = geographicMapInterfaceArray[0].getAllBinaryTiledLayer()
            if possibleStepGeographicMapCellPosition.getColumn() > 0 && possibleStepGeographicMapCellPosition.getRow() > 0 && possibleStepGeographicMapCellPosition.getColumn() < tiledLayer.getColumns() && possibleStepGeographicMapCellPosition.getRow() < tiledLayer.getRows()
                @geographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition)
                hasSolidBlock = self.hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray)
                hasOffMap = self.isOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray)
                if hasSolidBlock || hasOffMap
                    @previousGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                    return ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                else
                    @previousGeographicMapCellPosition = possibleStepGeographicMapCellPosition
                    return possibleStepGeographicMapCellPosition
                end
            end
        else
        end
        @previousGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        return ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
    end
    java_overload :getGeographicMapCellPositionIfNotSolidBlockOrOffMap, 5
    

    # throws Exception
    def moveAndLand(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer, x, y)
        if geographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            topViewCharacterInterface = (layer)
            topViewCharacterInterface.terrainMove(geographicMapInterfaceArray, geographicMapCellTypeArray, x, y)
        else
        end
    end
    java_overload :moveAndLand, 7
    

    # throws Exception
    def move(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y)
        geographicMapCellPosition = self.getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y)
        self.moveAndLand(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer, x, y)
        if geographicMapCellPosition == ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            return false
        else
            return true
        end
    end
    java_overload :move, 6
    

    # throws Exception
    def left(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer)
        geographicMapCellPosition = self.getLeftPosition(geographicMapInterfaceArray, layer)
        if geographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
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
    java_overload :left, 4
    

    # throws Exception
    def right(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer)
        geographicMapCellPosition = self.getRightPosition(geographicMapInterfaceArray, layer)
        if geographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
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
    java_overload :right, 4
end

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :MultiGeographicMapBehavior, "org/allbinary/media/graphics/geography/map/MultiGeographicMapBehavior" unless const_defined?(:MultiGeographicMapBehavior, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Acceleration; autoload :GravityUtil, "org/allbinary/game/physics/acceleration/GravityUtil" unless const_defined?(:GravityUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityProperties, "org/allbinary/game/physics/velocity/VelocityProperties" unless const_defined?(:VelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end
autoload :TopViewCharacterInterface, "org/allbinary/game/behavior/topview/TopViewCharacterInterface" unless const_defined?(:TopViewCharacterInterface, false)

end; end; end; end; end

