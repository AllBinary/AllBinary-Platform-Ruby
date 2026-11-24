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
# package org.allbinary.game.view


module ::Org; module Allbinary; module Game; module View

class TileLayerPositionIntoViewPositionUtil
    

    def self.init(gameCanvasInterface, viewPosition)
        geographicMapCompositeInterface = gameCanvasInterface.getLayerManager()
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        viewPosition.setTiledLayer(tiledLayer)
    end
end

module ::Org; module Allbinary; module Game; module View; autoload :TileLayerPositionIntoViewPosition, "org/allbinary/game/view/TileLayerPositionIntoViewPosition" unless const_defined?(:TileLayerPositionIntoViewPosition, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end

end; end; end; end

