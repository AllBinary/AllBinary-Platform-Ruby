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

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Screen"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/graphics/form/item/ABCustomItemInterface"

class TileLayerItem < ABCustomItem
    include ABCustomItemInterface
    attr_accessor :tiledLayer

    def initialize_fields
        @tiledLayer = nil
    end
    

    def initialize(label, tiledLayer, layout, altText, backgroundBasicColor, foregroundBasicColor)
        super(label, backgroundBasicColor, foregroundBasicColor)
        initialize_fields
        @tiledLayer = tiledLayer
    end
    

    def setOwner(owner)
    end
    

    def getMinimumWidth()
        return @tiledLayer.getWidth()
    end
    

    def getMinimumHeight()
        return @tiledLayer.getHeight()
    end
    

    def getMinContentHeight()
        return @tiledLayer.getHeight()
    end
    

    def getMinContentWidth()
        return @tiledLayer.getWidth()
    end
    

    def getPrefContentHeight(width)
        return @tiledLayer.getHeight()
    end
    

    def getPrefContentWidth(height)
        return @tiledLayer.getWidth()
    end
    

    def paintXY(graphics, x, y)
        @tiledLayer.setPosition(x, y, @tiledLayer.getZP())
        @tiledLayer.paint(graphics)
    end
    

    def paintUnselected(graphics, x, y)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/game/layer/AllBinaryTiledLayer"

