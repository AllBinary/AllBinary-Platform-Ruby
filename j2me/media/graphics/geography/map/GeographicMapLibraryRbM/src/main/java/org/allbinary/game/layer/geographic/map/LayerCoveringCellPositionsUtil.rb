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

class LayerCoveringCellPositionsUtil
    attr_accessor :cellPositionsUtil

    def jfields_org_allbinary_game_layer_geographic_map_LayerCoveringCellPositionsUtil
        @cellPositionsUtil = ::Org::Allbinary::Media::Graphics::Geography::Map::CellPositionsUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_game_layer_geographic_map_LayerCoveringCellPositionsUtil
    end
    

    def self.getInstance()
        return LayerCoveringCellPositionsUtil.instance
    end
    

    # throws Exception
    def getAllXY(geographicMapInterface, layerInterface, x, y, reusableList)
        topLeftGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXY(x, y)
        return self.getAll(geographicMapInterface, topLeftGeographicMapCellPosition, layerInterface, reusableList)
    end
    

    # throws Exception
    def getAll(geographicMapInterface, topLeftGeographicMapCellPosition, layerInterface, reusableList)
        reusableList.clear()
        columns = layerInterface.getWidth() / geographicMapInterface.getAllBinaryTiledLayer().getCellWidth()
        rows = layerInterface.getHeight() / geographicMapInterface.getAllBinaryTiledLayer().getCellHeight()
        if columns == 0
            columns = 1
        end
        if rows == 0
            rows = 1
        end
        return @cellPositionsUtil.getAll(geographicMapInterface, topLeftGeographicMapCellPosition, columns, rows, reusableList)
    end

    def self.instance()
        LayerCoveringCellPositionsUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LayerCoveringCellPositionsUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LayerCoveringCellPositionsUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LayerCoveringCellPositionsUtil"
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
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :CellPositionsUtil, "org/allbinary/media/graphics/geography/map/CellPositionsUtil" unless const_defined?(:CellPositionsUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end

begin
    LayerCoveringCellPositionsUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

