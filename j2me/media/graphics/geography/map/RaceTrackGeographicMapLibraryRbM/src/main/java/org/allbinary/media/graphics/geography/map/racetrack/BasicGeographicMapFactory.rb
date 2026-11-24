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
# package org.allbinary.media.graphics.geography.map.racetrack

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

class BasicGeographicMapFactory
    

    # throws Exception
    def getInstance(raceTrackInfo, raceTrackData, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface, geographicMapCellTypeFactory)
        return ::Org::Allbinary::Media::Graphics::Geography::Map::BasicGeographicMap.new(::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(raceTrackInfo.getId().to_i + 100 + 1), raceTrackInfo.getName(), raceTrackData.getCellTypeIdToGeographicMapCellTypeArray(), tiledLayerFactoryInterface.getMiniInstance(raceTrackData), ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().CLEAR_COLOR, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().CLEAR_COLOR, geographicMapCellPositionFactoryInterface, ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellPositionBaseFactory.new(), geographicMapCellTypeFactory)
    end
end

module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPositionBaseFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory" unless const_defined?(:GeographicMapCellPositionBaseFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPositionFactoryInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface" unless const_defined?(:GeographicMapCellPositionFactoryInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory" unless const_defined?(:GeographicMapCellTypeFactory, false); end; end; end; end; end; end
autoload :AllBinaryTiledLayerFactoryInterface, "org/allbinary/media/graphics/geography/map/racetrack/AllBinaryTiledLayerFactoryInterface" unless const_defined?(:AllBinaryTiledLayerFactoryInterface, false)
autoload :RaceTrackData, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData" unless const_defined?(:RaceTrackData, false)
autoload :RaceTrackInfo, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo" unless const_defined?(:RaceTrackInfo, false)

end; end; end; end; end; end; end

