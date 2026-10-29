# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.layer.item

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
require "org/allbinary/graphics/form/item/ABCustomImageItem"

class LayerInterfaceFactoryImageItem < ABCustomImageItem
    attr_accessor :animationArray, :layerInterfaceFactoryInterface

    def initialize_fields
        @animationArray = nil
        @layerInterfaceFactoryInterface = nil
    end
    

    def initialize(label, img, layout, altText, basicColor, animationArray, layerInterfaceFactoryInterface)
        super(label, img, layout, altText, basicColor, 0)
        initialize_fields
        @animationArray = animationArray
        @layerInterfaceFactoryInterface = layerInterfaceFactoryInterface
    end
    

    def getLayerInterfaceFactoryInterface()
        return @layerInterfaceFactoryInterface
    end
    

    def paintXY(graphics, x, y)
        super(graphics, x, y)
        index = @animationArray.length
        while (index -= 1) >= 0
            @animationArray[index].paintXY(graphics, x, y)
        end
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/layer/LayerInterfaceFactoryInterface"

