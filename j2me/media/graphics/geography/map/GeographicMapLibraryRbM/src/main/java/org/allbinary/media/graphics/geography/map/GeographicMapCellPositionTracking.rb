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

class GeographicMapCellPositionTracking
    attr_accessor :currentGeographicMapCellPosition, :previousGeographicMapCellPosition, :newGeographicMapCellPosition, :currentCellType

    def jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellPositionTracking
        @currentGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @previousGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @newGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @currentCellType = GeographicMapCellType::NULL_GEOGRAPHIC_MAP_CELL_TYPE
    end
    

    def initialize()
        jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellPositionTracking
    end
    

    # throws Exception
    def getCurrentOverCellType(geographicMap)
        geographicMapCellPosition = @currentGeographicMapCellPosition
        if geographicMapCellPosition != @previousGeographicMapCellPosition
            @currentCellType = geographicMap.getCellTypeAt(geographicMapCellPosition)
        end
        return @currentCellType
    end
    

    # throws Exception
    def updateStart(gameCanvasInterface, layer)
        if gameCanvasInterface != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            geographicMapCompositeInterface = gameCanvasInterface.getLayerManager()
            geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
            @newGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXY(layer.getXP() + layer.getHalfWidth(), layer.getYP() + layer.getHalfHeight())
            if @newGeographicMapCellPosition != @currentGeographicMapCellPosition
                @currentGeographicMapCellPosition = @newGeographicMapCellPosition
                return true
            end
        end
        return false
    end
    

    def updateEnd()
        if @currentGeographicMapCellPosition != @previousGeographicMapCellPosition
            @previousGeographicMapCellPosition = @currentGeographicMapCellPosition
            return true
        end
        return false
    end
    

    def getPreviousGeographicMapCellPosition()
        return @previousGeographicMapCellPosition
    end
    

    def getCurrentGeographicMapCellPosition()
        return @currentGeographicMapCellPosition
    end
end

module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :AllBinaryGameCanvasInterface, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface" unless const_defined?(:AllBinaryGameCanvasInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false)
autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false)
autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false)
autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false)
autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false)

end; end; end; end; end; end

