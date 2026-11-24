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
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/graphics/form/item/ABCustomItemInterface"

module ::Org; module Allbinary; module Game; module Layer

class TileLayerItem < ::Org::Allbinary::Graphics::Form::Item::ABCustomItem
    include ::Org::Allbinary::Graphics::Form::Item::ABCustomItemInterface
    attr_accessor :tiledLayer

    def jfields_org_allbinary_game_layer_TileLayerItem
        @tiledLayer = nil unless instance_variable_defined?(:@tiledLayer)
    end
    

    def initialize(label, tiledLayer, layout, altText, backgroundBasicColor, foregroundBasicColor)
        super(label, backgroundBasicColor, foregroundBasicColor)
        jfields_org_allbinary_game_layer_TileLayerItem
        @tiledLayer = tiledLayer
    end
    

    def setOwner(owner)
    end
    java_overload :setOwner, 1
    

    def getMinimumWidth()
        return @tiledLayer.getWidth()
    end
    java_overload :getMinimumWidth, 0
    

    def getMinimumHeight()
        return @tiledLayer.getHeight()
    end
    java_overload :getMinimumHeight, 0
    

    def getMinContentHeight()
        return @tiledLayer.getHeight()
    end
    java_overload :getMinContentHeight, 0
    

    def getMinContentWidth()
        return @tiledLayer.getWidth()
    end
    java_overload :getMinContentWidth, 0
    

    def getPrefContentHeight(width)
        return @tiledLayer.getHeight()
    end
    java_overload :getPrefContentHeight, 1
    

    def getPrefContentWidth(height)
        return @tiledLayer.getWidth()
    end
    java_overload :getPrefContentWidth, 1
    

    def paintXY(graphics, x, y)
        @tiledLayer.setPosition(x, y, @tiledLayer.getZP())
        @tiledLayer.paint(graphics)
    end
    java_overload :paintXY, 3
    

    def paintUnselected(graphics, x, y)
    end
    java_overload :paintUnselected, 3
    

    def getLabel()
        return TileLayerItem.superclass.java_super_method(:getLabel, 0).bind(self).call()
    end
    java_overload :getLabel, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Screen, "javax/microedition/lcdui/Screen" unless const_defined?(:Screen, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false)

end; end; end; end

