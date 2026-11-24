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
# package org.allbinary.media.graphics.geography.pathfinding


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

class GeographicMapCellPathHistoryInfo
    attr_accessor :previousGeographicMapCellPosition, :previousOnPathGeographicMapCellPosition, :nextUnvisitedOnPathGeographicMapCellPosition, :nextOnPathGeographicMapCellPosition, :nextChosenOnPathGeographicMapCellPosition

    def jfields_org_allbinary_media_graphics_geography_pathfinding_GeographicMapCellPathHistoryInfo
        @previousGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @previousOnPathGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @nextUnvisitedOnPathGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @nextOnPathGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @nextChosenOnPathGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
    end

    def initialize
        jfields_org_allbinary_media_graphics_geography_pathfinding_GeographicMapCellPathHistoryInfo
    end
    

    def getPreviousGeographicMapCellPosition()
        return @previousGeographicMapCellPosition
    end
    

    def setPreviousGeographicMapCellPosition(previousGeographicMapCellPosition)
        @previousGeographicMapCellPosition = previousGeographicMapCellPosition
    end
    

    def getPreviousOnPathGeographicMapCellPosition()
        return @previousOnPathGeographicMapCellPosition
    end
    

    def setPreviousOnPathGeographicMapCellPosition(previousOnPathGeographicMapCellPosition)
        @previousOnPathGeographicMapCellPosition = previousOnPathGeographicMapCellPosition
    end
    

    def getNextUnvisitedOnPathGeographicMapCellPosition()
        return @nextUnvisitedOnPathGeographicMapCellPosition
    end
    

    def setNextUnvisitedOnPathGeographicMapCellPosition(nextUnvisitedOnPathGeographicMapCellPosition)
        @nextUnvisitedOnPathGeographicMapCellPosition = nextUnvisitedOnPathGeographicMapCellPosition
    end
    

    def getNextOnPathGeographicMapCellPosition()
        return @nextOnPathGeographicMapCellPosition
    end
    

    def setNextOnPathGeographicMapCellPosition(nextOnPathGeographicMapCellPosition)
        @nextOnPathGeographicMapCellPosition = nextOnPathGeographicMapCellPosition
    end
    

    def getNextChosenOnPathGeographicMapCellPosition()
        return @nextChosenOnPathGeographicMapCellPosition
    end
    

    def setNextChosenOnPathGeographicMapCellPosition(nextChosenOnPathGeographicMapCellPosition)
        @nextChosenOnPathGeographicMapCellPosition = nextChosenOnPathGeographicMapCellPosition
    end
end

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end

end; end; end; end; end; end

