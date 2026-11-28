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

class CellPositionsUtil
    attr_accessor :reusableSingleThreadedSurroundingList, :surroundArray

    def jfields_org_allbinary_media_graphics_geography_map_CellPositionsUtil
        @reusableSingleThreadedSurroundingList = ::Org::Allbinary::Util::BasicArrayListS.new(8)
        @surroundArray = [[-1, -1], [0, -1], [1, -1], [-1, 1], [0, 1], [1, 1], [1, 0], [-1, 0]]
    end

    def initialize
        jfields_org_allbinary_media_graphics_geography_map_CellPositionsUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    # throws Exception
    def getAll(geographicMapInterface, topRightGeographicMapCellPosition, columns, rows, reusableList)
        reusableList.clear()
        geographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        lastColumn = topRightGeographicMapCellPosition.getColumn() + columns
        lastRow = topRightGeographicMapCellPosition.getRow() + rows
        if (columns > 1 && lastColumn > geographicMapInterface.getAllBinaryTiledLayer().getColumns()) || (rows > 1 && lastRow > geographicMapInterface.getAllBinaryTiledLayer().getRows())
            return reusableList
        end
        (0...rows).each do |rowIndex|
            (0...columns).each do |columnIndex|
                geographicMapCellPosition = geographicMapCellPositionFactory.getAt(topRightGeographicMapCellPosition.getColumn() + columnIndex, topRightGeographicMapCellPosition.getRow() + rowIndex)
                reusableList.add(geographicMapCellPosition)
            end
        end
        return reusableList
    end
    

    # throws Exception
    def getAllSurrounding(geographicMapInterface, occupyList, reusableList)
        reusableList.clear()
        (occupyList.size() - 1).step(0, -(1)) do |index|
            layerGeographicMapCellPosition = occupyList.get(index)
            surroundingGeographicMapCellPositionList = self.getAllSurroundingAt(geographicMapInterface, layerGeographicMapCellPosition, @reusableSingleThreadedSurroundingList)
            (surroundingGeographicMapCellPositionList.size() - 1).step(0, -(1)) do |index2|
                geographicMapCellPosition = surroundingGeographicMapCellPositionList.get(index2)
                if !reusableList.contains(geographicMapCellPosition) && !occupyList.contains(geographicMapCellPosition)
                    reusableList.add(geographicMapCellPosition)
                end
            end
        end
        return reusableList
    end
    

    # throws Exception
    def getAllSurroundingAt(geographicMapInterface, layerGeographicMapCellPosition, reusableSurroundingList)
        reusableSurroundingList.clear()
        geographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        row = 0
        column = 0
        (0...8).each do |index|
            column = layerGeographicMapCellPosition.getColumn() + @surroundArray[index][0]
            row = layerGeographicMapCellPosition.getRow() + @surroundArray[index][1]
            if tiledLayer.isOnTileLayer(column, row)
                geographicMapCellPosition = geographicMapCellPositionFactory.getAt(column, row)
                reusableSurroundingList.add(geographicMapCellPosition)
            end
        end
        return reusableSurroundingList
    end

    def self.instance()
        CellPositionsUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CellPositionsUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CellPositionsUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CellPositionsUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end
autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false)
autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false)
autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false)

begin
    CellPositionsUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

