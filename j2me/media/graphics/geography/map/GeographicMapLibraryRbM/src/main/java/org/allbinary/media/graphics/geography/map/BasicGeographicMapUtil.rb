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

class BasicGeographicMapUtil
    attr_accessor :logUtil

    def jfields_org_allbinary_media_graphics_geography_map_BasicGeographicMapUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_media_graphics_geography_map_BasicGeographicMapUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    # throws Exception
    def getBorderingRow(direction, oldGeographicMapCellPosition)
        _LOCATION_CHANGE = 1
        case direction
        when 0
                return oldGeographicMapCellPosition.getRow()
        when 1
                return oldGeographicMapCellPosition.getRow()
        when 2
                return oldGeographicMapCellPosition.getRow() + _LOCATION_CHANGE
        when 3
                return oldGeographicMapCellPosition.getRow() - _LOCATION_CHANGE
        else
                raise StandardError.new("Only Four Directions")
        end
    end
    

    # throws Exception
    def getBorderingColumn(direction, oldGeographicMapCellPosition)
        _LOCATION_CHANGE = 1
        case direction
        when 0
                return oldGeographicMapCellPosition.getColumn() - _LOCATION_CHANGE
        when 1
                return oldGeographicMapCellPosition.getColumn() + _LOCATION_CHANGE
        when 2
                return oldGeographicMapCellPosition.getColumn()
        when 3
                return oldGeographicMapCellPosition.getColumn()
        else
                raise StandardError.new("Only Four Directions")
        end
    end
    

    # throws Exception
    def isSameCellPosition(fromGeographicMapCellPosition, toGeographicMapCellPosition)
        fromColumn = fromGeographicMapCellPosition.getColumn()
        fromRow = fromGeographicMapCellPosition.getRow()
        goColumn = toGeographicMapCellPosition.getColumn()
        goRow = toGeographicMapCellPosition.getRow()
        if fromColumn == goColumn && fromRow == goRow
            return true
        else
            return false
        end
    end
    

    def createAllBinaryTiledLayerArray(geographicMapInterfaceArray)
        tiledLayerArray = Array.new(geographicMapInterfaceArray.length, nil)
        return self.getAllBinaryTiledLayerArray(geographicMapInterfaceArray, tiledLayerArray, 0)
    end
    

    def getAllBinaryTiledLayerArray(geographicMapInterfaceArray, tiledLayerArray, startIndex)
        geographicMapInterface = nil
        size = geographicMapInterfaceArray.length
        count = 0
        index = size + startIndex
        while (index -= 1) >= startIndex
            geographicMapInterface = geographicMapInterfaceArray[index]
            tiledLayerArray[((count += 1) - 1)] = geographicMapInterface.getAllBinaryTiledLayer()
        end
        return tiledLayerArray
    end
    

    def move(geographicMapInterfaceArray, dx, dy)
        geographicMapInterface = nil
        size = geographicMapInterfaceArray.length
        index = size
        while (index -= 1) >= 0
            geographicMapInterface = geographicMapInterfaceArray[index]
            geographicMapInterface.getAllBinaryTiledLayer().moveDXY(dx, dy)
        end
    end
    

    def setPosition(geographicMapInterfaceArray, x, y)
        geographicMapInterface = nil
        size = geographicMapInterfaceArray.length
        index = size
        while (index -= 1) >= 0
            geographicMapInterface = geographicMapInterfaceArray[index]
            geographicMapInterface.getAllBinaryTiledLayer().setPosition(x, y, geographicMapInterface.getAllBinaryTiledLayer().getZP())
        end
    end

    def self.instance()
        BasicGeographicMapUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicGeographicMapUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicGeographicMapUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicGeographicMapUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Layer; autoload :Layer, "org/allbinary/layer/Layer" unless const_defined?(:Layer, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false)
autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false)

begin
    BasicGeographicMapUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

