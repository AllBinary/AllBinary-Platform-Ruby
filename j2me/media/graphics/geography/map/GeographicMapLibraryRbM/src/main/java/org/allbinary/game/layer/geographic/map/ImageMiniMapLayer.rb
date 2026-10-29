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
# package org.allbinary.game.layer.geographic.map

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/NullImage"
require "org/allbinary/game/layer/geographic/map/MiniMapLayer"

class ImageMiniMapLayer < MiniMapLayer
    attr_accessor :image, :anchor

    def initialize_fields
        @image = NullImage::NULL_IMAGE
        @anchor = Anchor::TOP_LEFT
    end
    

    def initialize(geographicMapInterface, viewPosition)
        super(geographicMapInterface, viewPosition)
        initialize_fields
    end
    

    # throws Exception
    def init()
        aWidth = @allBinaryTiledLayer.getWidth()
        aHeight = @allBinaryTiledLayer.getHeight()
        @image = PaintableToImageUtil.getImage(@allBinaryTiledLayer, aWidth, aHeight)
    end
    

    def paint(graphics)
        graphics.drawImage(@image, @x, @y, @anchor)
        self.paintDots(graphics)
    end
end

require "org/allbinary/graphics/Anchor"
require "org/allbinary/image/PaintableToImageUtil"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/view/ViewPositionBase"

