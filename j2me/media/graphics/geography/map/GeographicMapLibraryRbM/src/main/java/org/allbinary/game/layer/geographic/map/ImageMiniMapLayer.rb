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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/geographic/map/MiniMapLayer"

module ::Org; module Allbinary; module Game; module Layer; module Geographic; module Map

class ImageMiniMapLayer < MiniMapLayer
    attr_accessor :image, :anchor

    def jfields_org_allbinary_game_layer_geographic_map_ImageMiniMapLayer
        @image = ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
    end
    

    def initialize(geographicMapInterface, viewPosition)
        super(geographicMapInterface, viewPosition)
        jfields_org_allbinary_game_layer_geographic_map_ImageMiniMapLayer
    end
    

    # throws Exception
    def init()
        aWidth = @allBinaryTiledLayer.getWidth()
        aHeight = @allBinaryTiledLayer.getHeight()
        @image = ::Org::Allbinary::Image::PaintableToImageUtil.getImage(@allBinaryTiledLayer, aWidth, aHeight)
    end
    java_overload :init, 0
    

    def paint(graphics)
        graphics.drawImage(@image, @x, @y, @anchor)
        self.paintDots(graphics)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :PaintableToImageUtil, "org/allbinary/image/PaintableToImageUtil" unless const_defined?(:PaintableToImageUtil, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end

end; end; end; end; end; end

