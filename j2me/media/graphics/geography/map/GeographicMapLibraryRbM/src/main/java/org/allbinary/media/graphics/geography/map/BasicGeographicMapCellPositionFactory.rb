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


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map

class BasicGeographicMapCellPositionFactory
    attr_accessor :logUtil, :geographicMapCellPositionArray, :geographicMapInterface, :geographicMapCellPositionFactoryInterface, :columns, :rows, :tiledLayer

    def jfields_org_allbinary_media_graphics_geography_map_BasicGeographicMapCellPositionFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @geographicMapCellPositionArray = nil unless instance_variable_defined?(:@geographicMapCellPositionArray)
        @geographicMapInterface = nil unless instance_variable_defined?(:@geographicMapInterface)
        @geographicMapCellPositionFactoryInterface = nil unless instance_variable_defined?(:@geographicMapCellPositionFactoryInterface)
        @columns = nil unless instance_variable_defined?(:@columns)
        @rows = nil unless instance_variable_defined?(:@rows)
        @tiledLayer = nil unless instance_variable_defined?(:@tiledLayer)
    end
    

    def initialize(geographicMapInterface)
        jfields_org_allbinary_media_graphics_geography_map_BasicGeographicMapCellPositionFactory
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
            commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
            @logUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(commonSeps.BRACKET_OPEN).appendint(rows).append(commonSeps.BRACKET_CLOSE).append(commonSeps.BRACKET_OPEN).appendint(columns).append(commonSeps.BRACKET_CLOSE).to_s, self, "visit", e)
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

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false)
autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false)
autoload :GeographicMapCellPositionFactoryInitVisitorInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInitVisitorInterface" unless const_defined?(:GeographicMapCellPositionFactoryInitVisitorInterface, false)
autoload :GeographicMapCellPositionFactoryInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface" unless const_defined?(:GeographicMapCellPositionFactoryInterface, false)

end; end; end; end; end; end

