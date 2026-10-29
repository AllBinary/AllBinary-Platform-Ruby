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


class BasicGeographicMapCellPositionFactory
    attr_accessor :logUtil, :geographicMapCellPositionArray, :geographicMapInterface, :geographicMapCellPositionFactoryInterface, :columns, :rows, :tiledLayer

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @geographicMapCellPositionArray = nil
        @geographicMapInterface = nil
        @geographicMapCellPositionFactoryInterface = nil
        @columns = nil
        @rows = nil
        @tiledLayer = nil
    end
    

    def initialize(geographicMapInterface)
        initialize_fields
        @geographicMapInterface = geographicMapInterface
        @geographicMapCellPositionFactoryInterface = @geographicMapInterface.getGeographicMapCellPositionFactoryInterface()
        @tiledLayer = @geographicMapInterface.getAllBinaryTiledLayer()
        @columns = @tiledLayer.getColumns()
        @rows = @tiledLayer.getRows()
        @geographicMapCellPositionArray = Array.new(@rows) { Array.new(@columns, nil) }
        self.init()
    end
    

    # throws Exception
    def init()
        tiledLayer = @tiledLayer
        columns = self.getColumns()
        rows = self.getRows()
        width = tiledLayer.getCellWidth()
        height = tiledLayer.getCellHeight()
        (0...columns).each do |column|
            (0...rows).each do |row|
                self.createInstance(column, row, width, height)
            end
        end
    end
    

    # throws Exception
    def visit(geographicMapCelPositionFactoryInitVisitorInterface)
        tiledLayer = @tiledLayer
        columns = self.getColumns()
        rows = self.getRows()
        begin
            cellPosition = nil
            (0...columns).each do |column|
                (0...rows).each do |row|
                    cellPosition = self.getAt(column, row)
                    geographicMapCelPositionFactoryInitVisitorInterface.visit(tiledLayer, cellPosition)
                end
            end
        rescue StandardError => e
            commonSeps = CommonSeps.getInstance()
            @logUtil.put(StringMaker.new().append(commonSeps.BRACKET_OPEN).appendint(rows).append(commonSeps.BRACKET_CLOSE).append(commonSeps.BRACKET_OPEN).appendint(columns).append(commonSeps.BRACKET_CLOSE).to_s, self, "visit", e)
            raise e
        end
    end
    

    # throws Exception
    def getAt(i_column, i_row)
        return @geographicMapCellPositionArray[i_row][i_column]
    end
    

    # throws Exception
    def getInstance(anotherMapGeographicMapCellPosition)
        return self.getAt(anotherMapGeographicMapCellPosition.getColumn(), anotherMapGeographicMapCellPosition.getRow())
    end
    

    # throws Exception
    def createInstance(i_column, i_row, width, height)
        cellPositionCanBeNull = @geographicMapCellPositionArray[i_row][i_column]
        if cellPositionCanBeNull == nil
            cellPositionCanBeNull = @geographicMapCellPositionFactoryInterface.getInstance(@geographicMapInterface, i_column, i_row, @columns, @rows, width, height)
            @geographicMapCellPositionArray[i_row][i_column] = cellPositionCanBeNull
        end
        return cellPositionCanBeNull
    end
    

    def getColumns()
        return @columns
    end
    

    def getRows()
        return @rows
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInitVisitorInterface"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface"

