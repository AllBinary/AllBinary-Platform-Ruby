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
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInitVisitorInterface"

module ::Org; module Allbinary; module Game; module Layer; module Geological; module Resources

class GeologicalGeographicMapCellPositionFactoryInitVisitor
    include ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellPositionFactoryInitVisitorInterface
    

    # throws Exception
    def visit(tiledLayer, cellPosition)
        geologicalGeographicMapCellPosition = (cellPosition)
        geologicalGeographicMapCellPosition.getGeologicalResource().init()
    end
    java_overload :visit, 2
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
autoload :GeologicalGeographicMapCellPosition, "org/allbinary/game/layer/geological/resources/GeologicalGeographicMapCellPosition" unless const_defined?(:GeologicalGeographicMapCellPosition, false)

end; end; end; end; end; end

