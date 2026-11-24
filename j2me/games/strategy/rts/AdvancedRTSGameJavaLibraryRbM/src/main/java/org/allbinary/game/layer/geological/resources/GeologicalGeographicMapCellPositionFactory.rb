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
#   
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer.geological.resources

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface"

module ::Org; module Allbinary; module Game; module Layer; module Geological; module Resources

class GeologicalGeographicMapCellPositionFactory
    include ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellPositionFactoryInterface
    attr_accessor :resourcePerMapCellType

    def jfields_org_allbinary_game_layer_geological_resources_GeologicalGeographicMapCellPositionFactory
        @resourcePerMapCellType = nil unless instance_variable_defined?(:@resourcePerMapCellType)
    end
    

    def initialize(resourcePerMapCellType)
        jfields_org_allbinary_game_layer_geological_resources_GeologicalGeographicMapCellPositionFactory
        @resourcePerMapCellType = resourcePerMapCellType
    end
    

    # throws Exception
    def getInstance(geographicMapInterface, i_column, i_row, columns, rows, width, height)
        tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        resources = @resourcePerMapCellType[tiledLayer.getCell(i_column, i_row)] + ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance().getAbsoluteNextInt(1000)
        return GeologicalGeographicMapCellPosition.new(i_column, i_row, columns, rows, width, height, GeologicalResource.new(resources))
    end
    java_overload :getInstance, 7
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Rand; autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory" unless const_defined?(:MyRandomFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
autoload :GeologicalGeographicMapCellPosition, "org/allbinary/game/layer/geological/resources/GeologicalGeographicMapCellPosition" unless const_defined?(:GeologicalGeographicMapCellPosition, false)
autoload :GeologicalResource, "org/allbinary/game/layer/geological/resources/GeologicalResource" unless const_defined?(:GeologicalResource, false)

end; end; end; end; end; end

