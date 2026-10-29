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
# package org.allbinary.game.layer

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/InitUpdatePaintable"

class SelectionHudPaintable < InitUpdatePaintable
    include UpdateMyFontInterface
    attr_accessor :y, :primitiveLongUtil, :updateMyFontProcessor, :myFontProcessor, :x, :textX, :imageX, :basicColor, :color, :width, :height, :name, :animationInterface, :backgroundColor

    def initialize_fields
        @y = CommonButtons.getInstance().STANDARD_BUTTON_SIZE + 17
        @primitiveLongUtil = nil
        @updateMyFontProcessor = UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @x = 0
        @textX = 0
        @imageX = 0
        @basicColor = BasicColorFactory.getInstance().BLACK
        @color = 0
        @width = 0
        @height = 0
        @name = StringUtil.getInstance().EMPTY_STRING
        @animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
        @backgroundColor = BasicColorFactory.getInstance().GREY.to_i
    end
    

    def initialize()
        super()
        initialize_fields
        self.update()
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(10000)
    end
    

    def updateMeasurement(graphics)
        commonButtons = CommonButtons.getInstance()
        font = graphics.getFont()
        self.setHeight(commonButtons.STANDARD_BUTTON_SIZE + font.getHeight())
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def update()
        commonButtons = CommonButtons.getInstance()
        touchButtonLocationHelper = TouchButtonLocationHelper.new()
        displayInfoSingleton = DisplayInfoSingleton.getInstance()
        @x = commonButtons.STANDARD_BUTTON_SIZE + touchButtonLocationHelper.getColumnsRemainderHalf()
        @textX = self.getX() + 4
        @width = displayInfoSingleton.getLastWidth() - self.getX() * 2
        @imageX = self.getWidth() + touchButtonLocationHelper.getColumnsRemainderHalf() - 10
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def updateSelectionInfo()
    end
    

    def updateInfo()
    end
    

    def getPrimitiveLongUtil()
        return @primitiveLongUtil
    end
    

    def setAnimationInterface(animationInterface)
        @animationInterface = animationInterface
    end
    

    def getAnimationInterface()
        return @animationInterface
    end
    

    def setName(name)
        @name = name
    end
    

    def getName()
        return @name
    end
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
        self.setColor(basicColor.to_i)
    end
    

    def getBasicColorP()
        return @basicColor
    end
    

    def setColor(color)
        @color = color
    end
    

    def getColor()
        return @color
    end
    

    def getWidth()
        return @width
    end
    

    def setHeight(height)
        @height = height
    end
    

    def getHeight()
        return @height
    end
    

    def getX()
        return @x
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        graphics.setColor(@backgroundColor)
        graphics.drawRect(self.getX(), @y, self.getWidth(), self.getHeight())
        graphics.setColor(self.getColor())
        graphics.drawString(self.getName(), @textX, @y, 0)
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/input/motion/button/CommonButtons"
require "org/allbinary/input/motion/button/TouchButtonLocationHelper"
require "org/allbinary/logic/math/PrimitiveLongUtil"

