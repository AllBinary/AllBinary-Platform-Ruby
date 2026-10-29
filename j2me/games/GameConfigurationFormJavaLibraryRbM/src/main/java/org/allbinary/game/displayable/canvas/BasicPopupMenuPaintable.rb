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
# package org.allbinary.game.displayable.canvas

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/Paintable"

class BasicPopupMenuPaintable < Paintable
    include UpdateMyFontInterface
    attr_accessor :basicSetColorUtil, :drawStringUtil, :label, :foregroundBasicColor, :myFontProcessor, :rectangle, :BORDER, :heightOffset, :offset, :animationInterface

    def initialize_fields
        @basicSetColorUtil = BasicColorSetUtil.getInstance()
        @drawStringUtil = DrawVerticalStringUtil.getInstance()
        @label = nil
        @foregroundBasicColor = nil
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @rectangle = nil
        @BORDER = 0
        @heightOffset = 0
        @offset = 0
        @animationInterface = nil
    end
    

    def initialize(rectangle, backgroundBasicColor, foregroundBasicColor)
        super()
        initialize_fields
        @foregroundBasicColor = foregroundBasicColor
        @label = BasicPopupMenuPaintable::NAME
        @rectangle = rectangle
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
            @animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
        else
            @animationInterface = RectangleFilledAnimation.new(@rectangle.getWidth(), @rectangle.getHeight(), BasicColorFactory.getInstance().TRANSPARENT_GREY)
        end
        self.init(rectangle)
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        features = Features.getInstance()
        isOpenGL = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
        @drawStringUtil.updateMeasurement(graphics, @label)
        _BORDER = 0
        if J2MEUtil.isHTML() || isOpenGL
            _BORDER = MyFontProcessor.defaultCharWidth(font) / 2
        elsif AndroidUtil.isAndroid() || J2MEUtil.isJ2SE() || SWTUtil.isSWT
            _BORDER = MyFontProcessor.defaultCharWidth(font)
        else
            _BORDER = MyFontProcessor.defaultCharWidth(font) * 2
        end
        @BORDER = _BORDER
        @heightOffset = @rectangle.getHeight() - (font.getHeight() * BasicPopupMenuPaintable::NAME.length())
        if OpenGLFeatureUtil.getInstance().isAnyThreed()
            @heightOffset -= font.getHeight() + 2
            if AndroidUtil.isAndroid()
                @heightOffset = font.getHeight()
            else
                @heightOffset -= font.getHeight() + 2
            end
        end
        @offset = (@heightOffset >> 1) + ((SWTJOGLProcessor.getInstance().isJOGL() ? 4 : 0))
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    # throws Exception
    def init(rectangle)
        @rectangle = rectangle
        width = @rectangle.getWidth()
        height = @rectangle.getHeight()
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
        else
            rectangleFilledAnimation = @animationInterface
            rectangleFilledAnimation.setWidth(width)
            rectangleFilledAnimation.setHeight(height)
        end
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        point = @rectangle.getPoint()
        x = point.getX()
        y = point.getY()
        width = @rectangle.getWidth()
        height = @rectangle.getHeight()
        @animationInterface.paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP(graphics, @foregroundBasicColor)
        @drawStringUtil.paintVerticle(graphics, @label, x + @BORDER, y + @offset, 0)
        graphics.drawRect(x, y, width, height)
    end
end

require "org/allbinary/AndroidUtil"
require "org/allbinary/J2MEUtil"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/animation/vector/RectangleFilledAnimation"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/layer/SWTUtil"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/color/BasicColorSetUtil"
require "org/allbinary/graphics/draw/DrawVerticalStringUtil"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/graphics/opengles/OpenGLFeatureUtil"
require "org/allbinary/graphics/threed/SWTJOGLProcessor"

class BasicPopupMenuPaintable
    NAME = "MENU"
end

