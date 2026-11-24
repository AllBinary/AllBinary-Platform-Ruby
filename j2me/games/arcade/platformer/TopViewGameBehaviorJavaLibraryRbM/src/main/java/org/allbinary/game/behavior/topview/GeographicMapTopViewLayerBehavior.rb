# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.behavior.topview

require "java/lang/JavaOverload"
require "org/allbinary/game/behavior/topview/TopViewGameLayerBehavior"

module ::Org; module Allbinary; module Game; module Behavior; module Topview

class GeographicMapTopViewLayerBehavior < TopViewGameLayerBehavior
    

    def initialize(maxGravityActionIndex)
        super(maxGravityActionIndex)
    end
    

    # throws Exception
    def getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y)
        return ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
    end
    java_overload :getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation, 6
    

    # throws Exception
    def getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer)
        return ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
    end
    java_overload :getGeographicMapCellPositionIfNotSolidBlockOrOffMap, 5
    

    # throws Exception
    def getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPositionList, velocityProperties, layer)
        return ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
    end
    java_overload :getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap, 5
    

    # throws Exception
    def gravity(velocityProperties, geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition)
    end
    java_overload :gravity, 4
    

    # throws Exception
    def left(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer)
    end
    java_overload :left, 4
    

    # throws Exception
    def move(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y)
        return false
    end
    java_overload :move, 6
    

    # throws Exception
    def moveAndLand(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer, x, y)
    end
    java_overload :moveAndLand, 7
    

    # throws Exception
    def right(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer)
    end
    java_overload :right, 4
    

    def hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray)
        size = geographicMapInterfaceArray.length
        basicTopViewGeographicMapCellTypeFactory = nil
        (0...size).each do |index|
            basicTopViewGeographicMapCellTypeFactory = geographicMapInterfaceArray[index].getGeographicMapCellTypeFactory()
            if basicTopViewGeographicMapCellTypeFactory.BLOCK_CELL_TYPE.isType(geographicMapCellTypeArray[index])
                return true
            end
        end
        return false
    end
    java_overload :hasSolidBlock, 2
    

    def isOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray)
        size = geographicMapInterfaceArray.length
        basicTopViewGeographicMapCellTypeFactory = nil
        (0...size).each do |index|
            basicTopViewGeographicMapCellTypeFactory = geographicMapInterfaceArray[index].getGeographicMapCellTypeFactory()
            if basicTopViewGeographicMapCellTypeFactory.OFF_MAP_CELL_TYPE.isType(geographicMapCellTypeArray[index])
                return true
            end
        end
        return false
    end
    java_overload :isOffMap, 2
end

module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityProperties, "org/allbinary/game/physics/velocity/VelocityProperties" unless const_defined?(:VelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Topview; autoload :BasicTopViewGeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/topview/BasicTopViewGeographicMapCellTypeFactory" unless const_defined?(:BasicTopViewGeographicMapCellTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end; end

