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
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map

class SimpleGeographicMapCellPositionFactory
    include GeographicMapCellPositionFactoryInterface
    

    def getInstance(geographicMapInterface, i_column, i_row, columns, rows, width, height)
        return GeographicMapCellPosition.new(i_column, i_row, columns, rows, width, height)
    end
    java_overload :getInstance, 7

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_GEOGRAPHIC_MAP_CELL_POSITION, GeographicMapCellPosition.new(-1, -1, -1, -1, -1, -1))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SimpleGeographicMapCellPositionFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_GEOGRAPHIC_MAP_CELL_POSITION].include?(name)
        end
        super
    end
end

autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false)
autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false)

begin
    SimpleGeographicMapCellPositionFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

