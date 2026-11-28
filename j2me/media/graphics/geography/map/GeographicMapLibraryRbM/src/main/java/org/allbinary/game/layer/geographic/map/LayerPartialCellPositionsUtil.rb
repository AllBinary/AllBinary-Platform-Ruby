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
# package org.allbinary.game.layer.geographic.map


module ::Org; module Allbinary; module Game; module Layer; module Geographic; module Map

class LayerPartialCellPositionsUtil
    

    # throws Exception
    def getAll(geographicMapInterface, layerInterface, reusableList)
        reusableList.clear()
        topLeftGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP(), layerInterface.getYP())
        topRightGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP() + layerInterface.getWidth(), layerInterface.getYP())
        bottomLeftGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP(), layerInterface.getYP() + layerInterface.getHeight())
        bottomRightGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP() + layerInterface.getWidth(), layerInterface.getYP() + layerInterface.getHeight())
        if topLeftGeographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            reusableList.add(topLeftGeographicMapCellPosition)
        end
        if topRightGeographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && topLeftGeographicMapCellPosition != topRightGeographicMapCellPosition
            reusableList.add(topRightGeographicMapCellPosition)
        end
        if bottomLeftGeographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && !reusableList.contains(bottomLeftGeographicMapCellPosition)
            reusableList.add(bottomLeftGeographicMapCellPosition)
        end
        if bottomRightGeographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && !reusableList.contains(bottomRightGeographicMapCellPosition)
            reusableList.add(bottomRightGeographicMapCellPosition)
        end
        return reusableList
    end
    

    # throws Exception
    def getAllDXY(geographicMapInterface, layerInterface, dx, dy, reusableList)
        reusableList.clear()
        topLeftGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP() + dx, layerInterface.getYP() + dy)
        topRightGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP() + layerInterface.getWidth() + dx, layerInterface.getYP() + dy)
        bottomLeftGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP() + dx, layerInterface.getYP() + layerInterface.getHeight() + dy)
        bottomRightGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP() + layerInterface.getWidth() + dx, layerInterface.getYP() + layerInterface.getHeight() + dy)
        if topLeftGeographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            reusableList.add(topLeftGeographicMapCellPosition)
        end
        if topRightGeographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && topLeftGeographicMapCellPosition != topRightGeographicMapCellPosition
            reusableList.add(topRightGeographicMapCellPosition)
        end
        if bottomLeftGeographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && !reusableList.contains(bottomLeftGeographicMapCellPosition)
            reusableList.add(bottomLeftGeographicMapCellPosition)
        end
        if bottomRightGeographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && !reusableList.contains(bottomRightGeographicMapCellPosition)
            reusableList.add(bottomRightGeographicMapCellPosition)
        end
        return reusableList
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        LayerPartialCellPositionsUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LayerPartialCellPositionsUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LayerPartialCellPositionsUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LayerPartialCellPositionsUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end

begin
    LayerPartialCellPositionsUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

