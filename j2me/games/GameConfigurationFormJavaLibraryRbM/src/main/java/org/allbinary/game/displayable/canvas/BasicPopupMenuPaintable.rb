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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class BasicPopupMenuPaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :basicSetColorUtil, :drawStringUtil, :label, :foregroundBasicColor, :myFontProcessor, :rectangle, :BORDER, :heightOffset, :offset, :animationInterface

    def jfields_org_allbinary_game_displayable_canvas_BasicPopupMenuPaintable
        @basicSetColorUtil = ::Org::Allbinary::Graphics::Color::BasicColorSetUtil.getInstance()
        @drawStringUtil = ::Org::Allbinary::Graphics::Draw::DrawVerticalStringUtil.getInstance()
        @label = nil unless instance_variable_defined?(:@label)
        @foregroundBasicColor = nil unless instance_variable_defined?(:@foregroundBasicColor)
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @rectangle = nil unless instance_variable_defined?(:@rectangle)
        @BORDER = 0 unless instance_variable_defined?(:@BORDER)
        @heightOffset = 0 unless instance_variable_defined?(:@heightOffset)
        @offset = 0 unless instance_variable_defined?(:@offset)
        @animationInterface = nil unless instance_variable_defined?(:@animationInterface)
    end
    

    def initialize(rectangle, backgroundBasicColor, foregroundBasicColor)
        super()
        jfields_org_allbinary_game_displayable_canvas_BasicPopupMenuPaintable
        @foregroundBasicColor = foregroundBasicColor
        @label = BasicPopupMenuPaintable::NAME
        @rectangle = rectangle
        if ::Org::Allbinary::J2MEUtil.isJ2ME() || ::Org::Allbinary::J2MEUtil.isHTML()
            @animationInterface = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        else
            @animationInterface = ::Org::Allbinary::Animation::Vector::RectangleFilledAnimation.new(@rectangle.getWidth(), @rectangle.getHeight(), ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().TRANSPARENT_GREY)
        end
        self.init(rectangle)
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        isOpenGL = features.isDefault(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL)
        @drawStringUtil.updateMeasurement(graphics, @label)
        _BORDER = 0
        if ::Org::Allbinary::J2MEUtil.isHTML() || isOpenGL
            _BORDER = ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultCharWidth(font) / 2
        elsif ::Org::Allbinary::AndroidUtil.isAndroid() || ::Org::Allbinary::J2MEUtil.isJ2SE() || ::Org::Allbinary::Game::Layer::SWTUtil.isSWT
            _BORDER = ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultCharWidth(font)
        else
            _BORDER = ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultCharWidth(font) * 2
        end
        @BORDER = _BORDER
        @heightOffset = @rectangle.getHeight() - (font.getHeight() * BasicPopupMenuPaintable::NAME.length())
        if ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureUtil.getInstance().isAnyThreed()
            @heightOffset -= font.getHeight() + 2
            if ::Org::Allbinary::AndroidUtil.isAndroid()
                @heightOffset = font.getHeight()
            else
                @heightOffset -= font.getHeight() + 2
            end
        end
        @offset = (@heightOffset >> 1) + ((::Org::Allbinary::Graphics::Threed::SWTJOGLProcessor.getInstance().isJOGL() ? 4 : 0))
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    # throws Exception
    def init(rectangle)
        @rectangle = rectangle
        width = @rectangle.getWidth()
        height = @rectangle.getHeight()
        if ::Org::Allbinary::J2MEUtil.isJ2ME() || ::Org::Allbinary::J2MEUtil.isHTML()
        else
            rectangleFilledAnimation = @animationInterface
            rectangleFilledAnimation.setWidth(width)
            rectangleFilledAnimation.setHeight(height)
        end
    end
    java_overload :init, 1
    

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
    java_overload :paint, 1

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

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; autoload :AndroidUtil, "org/allbinary/AndroidUtil" unless const_defined?(:AndroidUtil, false); end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; module Vector; autoload :RectangleFilledAnimation, "org/allbinary/animation/vector/RectangleFilledAnimation" unless const_defined?(:RectangleFilledAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :SWTUtil, "org/allbinary/game/layer/SWTUtil" unless const_defined?(:SWTUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorSetUtil, "org/allbinary/graphics/color/BasicColorSetUtil" unless const_defined?(:BasicColorSetUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Draw; autoload :DrawVerticalStringUtil, "org/allbinary/graphics/draw/DrawVerticalStringUtil" unless const_defined?(:DrawVerticalStringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureUtil, "org/allbinary/graphics/opengles/OpenGLFeatureUtil" unless const_defined?(:OpenGLFeatureUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Threed; autoload :SWTJOGLProcessor, "org/allbinary/graphics/threed/SWTJOGLProcessor" unless const_defined?(:SWTJOGLProcessor, false); end; end; end; end

begin
    BasicPopupMenuPaintable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

