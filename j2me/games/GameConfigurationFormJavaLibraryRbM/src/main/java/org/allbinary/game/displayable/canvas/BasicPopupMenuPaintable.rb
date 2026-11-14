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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "MENU")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicPopupMenuPaintable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

autoload :Font, "javax/microedition/lcdui/Font"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :AndroidUtil, "org/allbinary/AndroidUtil"
autoload :J2MEUtil, "org/allbinary/J2MEUtil"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory"
autoload :RectangleFilledAnimation, "org/allbinary/animation/vector/RectangleFilledAnimation"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :SWTUtil, "org/allbinary/game/layer/SWTUtil"
autoload :GPoint, "org/allbinary/graphics/GPoint"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :BasicColorSetUtil, "org/allbinary/graphics/color/BasicColorSetUtil"
autoload :DrawVerticalStringUtil, "org/allbinary/graphics/draw/DrawVerticalStringUtil"
autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor"
autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor"
autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
autoload :OpenGLFeatureUtil, "org/allbinary/graphics/opengles/OpenGLFeatureUtil"
autoload :SWTJOGLProcessor, "org/allbinary/graphics/threed/SWTJOGLProcessor"

begin
    BasicPopupMenuPaintable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

