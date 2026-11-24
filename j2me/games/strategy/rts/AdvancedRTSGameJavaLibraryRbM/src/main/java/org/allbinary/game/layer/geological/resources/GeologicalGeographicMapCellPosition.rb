# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"

module ::Org; module Allbinary; module Game; module Layer; module Geological; module Resources

class GeologicalGeographicMapCellPosition < ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellPosition
    attr_accessor :geologicalResource

    def jfields_org_allbinary_game_layer_geological_resources_GeologicalGeographicMapCellPosition
        @geologicalResource = nil unless instance_variable_defined?(:@geologicalResource)
    end
    

    def initialize(column, row, columns, rows, width, height, geologicalResource)
        super(column, row, columns, rows, width, height)
        jfields_org_allbinary_game_layer_geological_resources_GeologicalGeographicMapCellPosition
        @geologicalResource = geologicalResource
    end
    

    def getGeologicalResource()
        return @geologicalResource
    end
    java_overload :getGeologicalResource, 0
end

autoload :GeologicalResource, "org/allbinary/game/layer/geological/resources/GeologicalResource" unless const_defined?(:GeologicalResource, false)

end; end; end; end; end; end

