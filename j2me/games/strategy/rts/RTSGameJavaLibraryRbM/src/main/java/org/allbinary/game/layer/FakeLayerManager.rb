# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"

module ::Org; module Allbinary; module Game; module Layer

class FakeLayerManager < AllBinaryGameLayerManager
    include ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCompositeInterface
    attr_accessor :geographicMapInterfaceArray, :cachedGeographicMapCellTypes

    def jfields_org_allbinary_game_layer_FakeLayerManager
        @geographicMapInterfaceArray = ::Org::Allbinary::Media::Graphics::Geography::Map::BasicGeographicMap::NULL_BASIC_GEOGRAPHIC_MAP_ARRAY
        @cachedGeographicMapCellTypes = ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellType::NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY
    end
    

    def initialize(gameInfo)
        super(::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE, gameInfo)
        jfields_org_allbinary_game_layer_FakeLayerManager
    end
    

    def getGeographicMapInterface()
        return @geographicMapInterfaceArray
    end
    java_overload :getGeographicMapInterface, 0
    

    def setGeographicMapInterface(geographicMapInterfaceArray)
        @geographicMapInterfaceArray = geographicMapInterfaceArray
        @cachedGeographicMapCellTypes = Array.new(@geographicMapInterfaceArray.length, nil)
    end
    java_overload :setGeographicMapInterface, 1
    

    def geographicMapCellTypeArray()
        return @cachedGeographicMapCellTypes
    end
    java_overload :geographicMapCellTypeArray, 0
end

module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end

end; end; end; end

