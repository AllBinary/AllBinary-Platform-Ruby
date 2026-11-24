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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/item/ABCustomImageItem"

module ::Org; module Allbinary; module Game; module Layer; module Item

class LayerInterfaceFactoryImageItem < ::Org::Allbinary::Graphics::Form::Item::ABCustomImageItem
    attr_accessor :animationArray, :layerInterfaceFactoryInterface

    def jfields_org_allbinary_game_layer_item_LayerInterfaceFactoryImageItem
        @animationArray = nil unless instance_variable_defined?(:@animationArray)
        @layerInterfaceFactoryInterface = nil unless instance_variable_defined?(:@layerInterfaceFactoryInterface)
    end
    

    def initialize(label, img, layout, altText, basicColor, animationArray, layerInterfaceFactoryInterface)
        super(label, img, layout, altText, basicColor, 0)
        jfields_org_allbinary_game_layer_item_LayerInterfaceFactoryImageItem
        @animationArray = animationArray
        @layerInterfaceFactoryInterface = layerInterfaceFactoryInterface
    end
    

    def getLayerInterfaceFactoryInterface()
        return @layerInterfaceFactoryInterface
    end
    java_overload :getLayerInterfaceFactoryInterface, 0
    

    def paintXY(graphics, x, y)
        LayerInterfaceFactoryImageItem.superclass.java_super_method(:paintXY, 3).bind(self).call(graphics, x, y)
        index = @animationArray.length
        while (index -= 1) >= 0
            @animationArray[index].paintXY(graphics, x, y)
        end
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :LayerInterfaceFactoryInterface, "org/allbinary/layer/LayerInterfaceFactoryInterface" unless const_defined?(:LayerInterfaceFactoryInterface, false); end; end; end

end; end; end; end; end

