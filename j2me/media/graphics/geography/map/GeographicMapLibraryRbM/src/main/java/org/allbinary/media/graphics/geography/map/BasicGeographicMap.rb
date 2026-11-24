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
# package org.allbinary.media.graphics.geography.map

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/media/graphics/geography/map/GeographicMapInterface"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMap"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map

class BasicGeographicMap < SimpleGeographicMap
    include GeographicMapInterface
    attr_accessor :mathUtil, :geographicMapCellPositionFactory, :geographicMapCellPositionFactoryInterface, :geographicMapCellTypeFactory

    def jfields_org_allbinary_media_graphics_geography_map_BasicGeographicMap
        @mathUtil = ::Org::Allbinary::Logic::MathPackage::MathUtil.getInstance()
        @geographicMapCellPositionFactory = nil unless instance_variable_defined?(:@geographicMapCellPositionFactory)
        @geographicMapCellPositionFactoryInterface = nil unless instance_variable_defined?(:@geographicMapCellPositionFactoryInterface)
        @geographicMapCellTypeFactory = nil unless instance_variable_defined?(:@geographicMapCellTypeFactory)
    end
    

    def initialize(id, name, cellTypeIdToGeographicMapCellType, tiledLayer, foregroundBasicColor, backgroundBasicColor, geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory)
        super(id, name, cellTypeIdToGeographicMapCellType, tiledLayer, foregroundBasicColor, backgroundBasicColor)
        jfields_org_allbinary_media_graphics_geography_map_BasicGeographicMap
        @geographicMapCellPositionFactoryInterface = geographicMapCellPositionFactoryInterface
        @geographicMapCellPositionFactory = geographicMapCellPositionBaseFactory.getInstance(self)
        @geographicMapCellTypeFactory = geographicMapCellTypeFactory
    end
    

    # throws Exception
    def getCellPosition(direction, oldGeographicMapCellPosition)
        case direction
        when 0
                return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn() - 1, oldGeographicMapCellPosition.getRow())
        when 1
                return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn() + 1, oldGeographicMapCellPosition.getRow())
        when 2
                return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), oldGeographicMapCellPosition.getRow() - 1)
        when 3
                return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), oldGeographicMapCellPosition.getRow() + 1)
        else
                raise StandardError.new("Only Four Directions")
        end
    end
    java_overload :getCellPosition, 2
    

    # throws Exception
    def getCellPositionNoThrow(direction, oldGeographicMapCellPosition)
        case direction
        when 0
                if oldGeographicMapCellPosition.getColumn() - 1 >= 0
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn() - 1, oldGeographicMapCellPosition.getRow())
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
                if oldGeographicMapCellPosition.getColumn() + 1 < self.getAllBinaryTiledLayer().getColumns()
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn() + 1, oldGeographicMapCellPosition.getRow())
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
                if oldGeographicMapCellPosition.getRow() - 1 >= 0
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), oldGeographicMapCellPosition.getRow() - 1)
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
                if oldGeographicMapCellPosition.getRow() + 1 < self.getAllBinaryTiledLayer().getRows()
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), oldGeographicMapCellPosition.getRow() + 1)
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
                return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        when 1
                if oldGeographicMapCellPosition.getColumn() + 1 < self.getAllBinaryTiledLayer().getColumns()
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn() + 1, oldGeographicMapCellPosition.getRow())
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
                if oldGeographicMapCellPosition.getRow() - 1 >= 0
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), oldGeographicMapCellPosition.getRow() - 1)
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
                if oldGeographicMapCellPosition.getRow() + 1 < self.getAllBinaryTiledLayer().getRows()
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), oldGeographicMapCellPosition.getRow() + 1)
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
                return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        when 2
                if oldGeographicMapCellPosition.getRow() - 1 >= 0
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), oldGeographicMapCellPosition.getRow() - 1)
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
                if oldGeographicMapCellPosition.getRow() + 1 < self.getAllBinaryTiledLayer().getRows()
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), oldGeographicMapCellPosition.getRow() + 1)
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
                return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        when 3
                if oldGeographicMapCellPosition.getRow() + 1 < self.getAllBinaryTiledLayer().getRows()
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), oldGeographicMapCellPosition.getRow() + 1)
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
                return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        else
                return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        end
    end
    java_overload :getCellPositionNoThrow, 2
    

    # throws Exception
    def isOfFourDirections(oldGeographicMapCellPosition, newGeographicMapCellPosition)
        (0...4).each do |index|
            if newGeographicMapCellPosition == self.getCellPositionNoThrow(index, oldGeographicMapCellPosition)
                return true
            end
        end
        return false
    end
    java_overload :isOfFourDirections, 2
    

    # throws Exception
    def getCellPositionAtXY(x, y)
        allBinaryTiledLayer = self.getAllBinaryTiledLayer()
        i_column = @mathUtil.abs(x / allBinaryTiledLayer.getCellHeight())
        i_row = @mathUtil.abs(y / allBinaryTiledLayer.getCellWidth())
        return @geographicMapCellPositionFactory.getAt(i_column, i_row)
    end
    java_overload :getCellPositionAtXY, 2
    

    def getCellPositionAtXYNoThrow(x, y)
        allBinaryTiledLayer = self.getAllBinaryTiledLayer()
        i_column = @mathUtil.abs(x / allBinaryTiledLayer.getCellHeight())
        i_row = @mathUtil.abs(y / allBinaryTiledLayer.getCellWidth())
        if allBinaryTiledLayer.getColumns() > i_column && allBinaryTiledLayer.getRows() > i_row
            begin
                return @geographicMapCellPositionFactory.getAt(i_column, i_row)
            rescue StandardError => e
                return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            end
        else
            return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        end
    end
    java_overload :getCellPositionAtXYNoThrow, 2
    

    # throws Exception
    def isOnMap(geographicMapCellPosition)
        allBinaryTiledLayer = self.getAllBinaryTiledLayer()
        i_column = geographicMapCellPosition.getColumn()
        i_row = geographicMapCellPosition.getRow()
        if allBinaryTiledLayer.getColumns() > i_column && allBinaryTiledLayer.getRows() > i_row
            return true
        else
            return false
        end
    end
    java_overload :isOnMap, 1
    

    # throws Exception
    def getCellPositionAtNoThrow(x, y, x2, y2, geographicMapCellPositionList)
        geographicMapCellPositionList.clear()
        allBinaryTiledLayer = self.getAllBinaryTiledLayer()
        i_columnMin = @mathUtil.abs(x / allBinaryTiledLayer.getCellHeight())
        i_rowMin = @mathUtil.abs(y / allBinaryTiledLayer.getCellWidth())
        i_columnMax = @mathUtil.abs(x2 / allBinaryTiledLayer.getCellHeight()) + 1
        i_rowMax = @mathUtil.abs(y2 / allBinaryTiledLayer.getCellWidth()) + 1
        (i_columnMin...i_columnMax).each do |columnIndex|
            (i_rowMin...i_rowMax).each do |rowIndex|
                if allBinaryTiledLayer.getColumns() > columnIndex && allBinaryTiledLayer.getRows() > rowIndex
                    geographicMapCellPositionList.add(@geographicMapCellPositionFactory.getAt(columnIndex, rowIndex))
                end
            end
        end
        return geographicMapCellPositionList
    end
    java_overload :getCellPositionAtNoThrow, 5
    

    # throws Exception
    def getCellPositionsAt(layer, currentCellPositionArray, cellPositionArray)
        hasChanged = false
        size = cellPositionArray.length
        size2 = cellPositionArray[0].length
        xPortion = layer.getXP() / (size - 1)
        yPortion = layer.getYP() / (size - 1)
        (0...size).each do |index|
            (0...size2).each do |index2|
                x = xPortion * index
                y = yPortion * index
                cellPositionArray[index][index2] = self.getCellPositionAtXY(x, y)
                if currentCellPositionArray[index][index2] != cellPositionArray[index][index2]
                    hasChanged = true
                end
            end
        end
        return hasChanged
    end
    java_overload :getCellPositionsAt, 3
    

    # throws Exception
    def getCellTypeAtXY(x, y)
        cellPosition = self.getCellPositionAtXY(x, y)
        return self.getCellTypeAt(cellPosition)
    end
    java_overload :getCellTypeAtXY, 2
    

    def getGeographicMapCellPositionFactory()
        return @geographicMapCellPositionFactory
    end
    java_overload :getGeographicMapCellPositionFactory, 0
    

    def getGeographicMapCellPositionFactoryInterface()
        return @geographicMapCellPositionFactoryInterface
    end
    java_overload :getGeographicMapCellPositionFactoryInterface, 0
    

    def getGeographicMapCellTypeFactory()
        return @geographicMapCellTypeFactory
    end
    java_overload :getGeographicMapCellTypeFactory, 0
    

    def getId()
        return BasicGeographicMap.superclass.java_super_method(:getId, 0).bind(self).call()
    end
    java_overload :getId, 0
    

    def getName()
        return BasicGeographicMap.superclass.java_super_method(:getName, 0).bind(self).call()
    end
    java_overload :getName, 0
    

    def reset()
        BasicGeographicMap.superclass.java_super_method(:reset, 0).bind(self).call()
    end
    java_overload :reset, 0
    

    def getAllBinaryTiledLayer()
        return BasicGeographicMap.superclass.java_super_method(:getAllBinaryTiledLayer, 0).bind(self).call()
    end
    java_overload :getAllBinaryTiledLayer, 0
    

    def getCellTypeFromMapCellTypeInt(cellTypeId)
        return BasicGeographicMap.superclass.java_super_method(:getCellTypeFromMapCellTypeInt, 1).bind(self).call(cellTypeId)
    end
    java_overload :getCellTypeFromMapCellTypeInt, 1
    

    # throws Exception
    def getCellTypeAt(cellPosition)
        return BasicGeographicMap.superclass.java_super_method(:getCellTypeAt, 1).bind(self).call(cellPosition)
    end
    java_overload :getCellTypeAt, 1
    

    def getForegroundBasicColor()
        return BasicGeographicMap.superclass.java_super_method(:getForegroundBasicColor, 0).bind(self).call()
    end
    java_overload :getForegroundBasicColor, 0
    

    def getBackgroundBasicColor()
        return BasicGeographicMap.superclass.java_super_method(:getBackgroundBasicColor, 0).bind(self).call()
    end
    java_overload :getBackgroundBasicColor, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_BASIC_GEOGRAPHIC_MAP_ARRAY, Array.new(0, nil))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicGeographicMap"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_BASIC_GEOGRAPHIC_MAP_ARRAY].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :Layer, "org/allbinary/layer/Layer" unless const_defined?(:Layer, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :MathUtil, "org/allbinary/logic/math/MathUtil" unless const_defined?(:MathUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false)
autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false)
autoload :GeographicMapCellPositionBaseFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory" unless const_defined?(:GeographicMapCellPositionBaseFactory, false)
autoload :GeographicMapCellPositionFactoryInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface" unless const_defined?(:GeographicMapCellPositionFactoryInterface, false)
autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false)
autoload :GeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory" unless const_defined?(:GeographicMapCellTypeFactory, false)
autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false)

begin
    BasicGeographicMap.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

