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


class TileLayerPositionIntoViewPositionUtil
    

    def self.init(gameCanvasInterface, viewPosition)
        geographicMapCompositeInterface = gameCanvasInterface.getLayerManager()
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        viewPosition.setTiledLayer(tiledLayer)
    end
end

require "org/allbinary/game/view/TileLayerPositionIntoViewPosition"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"

