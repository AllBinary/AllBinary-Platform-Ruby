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

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/NullImage"
require "org/allbinary/graphics/form/item/ABCustomImageItem"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

class TechnologyRTSInterfaceImageItem < ABCustomImageItem
    include UpdateMyFontInterface
    attr_accessor :rtsInterface, :primitiveLongUtil, :LEVEL, :COST, :DOLLAR, :myFontProcessor, :costString, :costLength, :levelString, :levelLength, :adjustedCostLabelY, :adjustedCostX, :adjustedCostY, :adjustedLevelX, :adjustedLevelY

    def initialize_fields
        @rtsInterface = nil
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(10000)
        @LEVEL = "Level"
        @COST = "Cost"
        @DOLLAR = "$"
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @costString = CharArrayFactory.getInstance().getZeroCharArray()
        @costLength = 0
        @levelString = CharArrayFactory.getInstance().getZeroCharArray()
        @levelLength = 0
        @adjustedCostLabelY = 0
        @adjustedCostX = 0
        @adjustedCostY = 0
        @adjustedLevelX = 0
        @adjustedLevelY = 0
    end
    

    def initialize(label, img, layout, altText, basicColor, rtsInterface)
        super(label, img, layout, altText, basicColor, 0)
        initialize_fields
        @rtsInterface = rtsInterface
        self.update()
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        fontHeight = font.getHeight()
        imageHeight = 0
        image = self.getImage()
        if image != NullImage::NULL_IMAGE
            imageHeight = image.getHeight()
        end
        @adjustedCostLabelY = -@yOffset + imageHeight - (3 * fontHeight)
        @adjustedCostY = -@yOffset + imageHeight - (2 * fontHeight)
        @adjustedCostX = 2 + (@DOLLAR.length * (fontHeight - 1))
        @adjustedLevelY = -@yOffset + imageHeight - fontHeight
        @adjustedLevelX = 2 + (@LEVEL.length * (fontHeight - 1))
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def getRtsInterface()
        return @rtsInterface
    end
    

    def update()
        @costString = @primitiveLongUtil.getCharArray(self.getRtsInterface().getUpgradeCost())
        @levelString = @primitiveLongUtil.getCharArray(self.getRtsInterface().getLevel())
    end
    

    def paintXY(graphics, x, y)
        @myFontProcessor.process(graphics)
        super(graphics, x, y)
        xa = x + 2
        graphics.drawString(@COST, xa, y + @adjustedCostLabelY, 0)
        graphics.drawString(@DOLLAR, xa, y + @adjustedCostY, 0)
        graphics.drawChars(@costString, 0, @costLength, x + @adjustedCostX, y + @adjustedCostY, 0)
        graphics.drawString(@LEVEL, xa, y + @adjustedLevelY, 0)
        graphics.drawChars(@levelString, 0, @levelLength, x + @adjustedLevelX, y + @adjustedLevelY, 0)
    end
end

require "org/allbinary/logic/java/character/CharArrayFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/logic/math/PrimitiveLongUtil"
require "org/allbinary/game/layer/RTSInterface"

