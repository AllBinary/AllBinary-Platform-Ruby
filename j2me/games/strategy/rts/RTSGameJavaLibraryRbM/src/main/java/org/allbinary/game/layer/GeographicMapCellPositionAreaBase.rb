# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/GeographicMapCellPositionAreaInterface"

module ::Org; module Allbinary; module Game; module Layer

class GeographicMapCellPositionAreaBase
    include GeographicMapCellPositionAreaInterface
    

    def getNextSurroundingGeographicMapCellPosition()
        raise RuntimeError.new()
    end
    java_overload :getNextSurroundingGeographicMapCellPosition, 0
    

    def getOccupyingGeographicMapCellPositionList()
        raise RuntimeError.new()
    end
    java_overload :getOccupyingGeographicMapCellPositionList, 0
    

    def getSurroundingGeographicMapCellPositionList()
        raise RuntimeError.new()
    end
    java_overload :getSurroundingGeographicMapCellPositionList, 0
    

    # throws Exception
    def update(geographicMapInterface)
        raise RuntimeError.new()
    end
    java_overload :update, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE, GeographicMapCellPositionAreaBase.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GeographicMapCellPositionAreaBase"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

begin
    GeographicMapCellPositionAreaBase.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

