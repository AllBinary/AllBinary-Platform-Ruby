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

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
require "org/allbinary/animation/Animation"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

class RTSLayerTextAnimation < Animation
    include UpdateMyFontInterface
    attr_accessor :image, :text, :myFontProcessor, :fontHeight

    def initialize_fields
        @image = nil
        @text = nil
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @fontHeight = 0
    end
    

    def initialize(text, image)
        super()
        initialize_fields
        @text = text
        @image = image
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paintXY(graphics, x, y)
        @myFontProcessor.process(graphics)
        super(graphics, x, y)
        adjustedCostY = @image.getHeight() - @fontHeight
        graphics.drawString(@text, x, y + adjustedCostY, 0)
    end
end

require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"

