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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/InitUpdatePaintable"

module ::Org; module Allbinary; module Game; module Layer

class SelectionHudPaintable < ::Org::Allbinary::Graphics::Paint::InitUpdatePaintable
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :y, :primitiveLongUtil, :updateMyFontProcessor, :myFontProcessor, :x, :textX, :imageX, :basicColor, :color, :width, :height, :name, :animationInterface, :backgroundColor

    def jfields_org_allbinary_game_layer_SelectionHudPaintable
        @y = ::Org::Allbinary::Input::Motion::Button::CommonButtons.getInstance().STANDARD_BUTTON_SIZE + 17
        @primitiveLongUtil = nil unless instance_variable_defined?(:@primitiveLongUtil)
        @updateMyFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @x = 0 unless instance_variable_defined?(:@x)
        @textX = 0 unless instance_variable_defined?(:@textX)
        @imageX = 0 unless instance_variable_defined?(:@imageX)
        @basicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK
        @color = 0 unless instance_variable_defined?(:@color)
        @width = 0 unless instance_variable_defined?(:@width)
        @height = 0 unless instance_variable_defined?(:@height)
        @name = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @animationInterface = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        @backgroundColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().GREY.to_i
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_layer_SelectionHudPaintable
        self.update()
        @primitiveLongUtil = ::Org::Allbinary::Logic::MathPackage::PrimitiveLongUtil.createPowerOfTen(10000)
    end
    

    def updateMeasurement(graphics)
        commonButtons = ::Org::Allbinary::Input::Motion::Button::CommonButtons.getInstance()
        font = graphics.getFont()
        self.setHeight(commonButtons.STANDARD_BUTTON_SIZE + font.getHeight())
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def update()
        commonButtons = ::Org::Allbinary::Input::Motion::Button::CommonButtons.getInstance()
        touchButtonLocationHelper = ::Org::Allbinary::Input::Motion::Button::TouchButtonLocationHelper.new()
        displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @x = commonButtons.STANDARD_BUTTON_SIZE + touchButtonLocationHelper.getColumnsRemainderHalf()
        @textX = self.getX() + 4
        @width = displayInfoSingleton.getLastWidth() - self.getX() * 2
        @imageX = self.getWidth() + touchButtonLocationHelper.getColumnsRemainderHalf() - 10
        @myFontProcessor = @updateMyFontProcessor
    end
    java_overload :update, 0
    

    def updateSelectionInfo()
    end
    java_overload :updateSelectionInfo, 0
    

    def updateInfo()
    end
    java_overload :updateInfo, 0
    

    def getPrimitiveLongUtil()
        return @primitiveLongUtil
    end
    java_overload :getPrimitiveLongUtil, 0
    

    def setAnimationInterface(animationInterface)
        @animationInterface = animationInterface
    end
    java_overload :setAnimationInterface, 1
    

    def getAnimationInterface()
        return @animationInterface
    end
    java_overload :getAnimationInterface, 0
    

    def setName(name)
        @name = name
    end
    java_overload :setName, 1
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
        self.setColor(basicColor.to_i)
    end
    java_overload :setBasicColorP, 1
    

    def getBasicColorP()
        return @basicColor
    end
    java_overload :getBasicColorP, 0
    

    def setColor(color)
        @color = color
    end
    java_overload :setColor, 1
    

    def getColor()
        return @color
    end
    java_overload :getColor, 0
    

    def getWidth()
        return @width
    end
    java_overload :getWidth, 0
    

    def setHeight(height)
        @height = height
    end
    java_overload :setHeight, 1
    

    def getHeight()
        return @height
    end
    java_overload :getHeight, 0
    

    def getX()
        return @x
    end
    java_overload :getX, 0
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        graphics.setColor(@backgroundColor)
        graphics.drawRect(self.getX(), @y, self.getWidth(), self.getHeight())
        graphics.setColor(self.getColor())
        graphics.drawString(self.getName(), @textX, @y, 0)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :CommonButtons, "org/allbinary/input/motion/button/CommonButtons" unless const_defined?(:CommonButtons, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonLocationHelper, "org/allbinary/input/motion/button/TouchButtonLocationHelper" unless const_defined?(:TouchButtonLocationHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveLongUtil, "org/allbinary/logic/math/PrimitiveLongUtil" unless const_defined?(:PrimitiveLongUtil, false); end; end; end; end

end; end; end; end

