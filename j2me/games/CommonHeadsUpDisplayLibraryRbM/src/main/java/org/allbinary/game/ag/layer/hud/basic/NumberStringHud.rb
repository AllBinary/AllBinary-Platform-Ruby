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
# package org.allbinary.game.ag.layer.hud.basic

require "java/lang/JavaOverload"
require "org/allbinary/game/graphics/hud/BasicHud"
require "org/allbinary/graphics/paint/PaintableInterface"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic

class NumberStringHud < ::Org::Allbinary::Game::Graphics::Hud::BasicHud
    include ::Org::Allbinary::Graphics::Paint::PaintableInterface
    attr_accessor :primitiveLongUtil, :prependString, :PREPEND_STRING, :value, :max, :offset, :valueString, :valueTotalDigits

    def jfields_org_allbinary_game_ag_layer_hud_basic_NumberStringHud
        @primitiveLongUtil = nil unless instance_variable_defined?(:@primitiveLongUtil)
        @prependString = nil unless instance_variable_defined?(:@prependString)
        @PREPEND_STRING = nil unless instance_variable_defined?(:@PREPEND_STRING)
        @value = nil unless instance_variable_defined?(:@value)
        @max = nil unless instance_variable_defined?(:@max)
        @offset = 0 unless instance_variable_defined?(:@offset)
        @valueString = nil unless instance_variable_defined?(:@valueString)
        @valueTotalDigits = 0 unless instance_variable_defined?(:@valueTotalDigits)
    end
    

    def initialize(prependString, max, location, direction, bufferZone, basicColor)
        super(location, direction, bufferZone, basicColor)
        jfields_org_allbinary_game_ag_layer_hud_basic_NumberStringHud
        @prependString = prependString
        @PREPEND_STRING = prependString.chars
        @valueString = ::Org::Allbinary::Logic::MathPackage::PrimitiveLongSingleton.getInstance().NUMBER_CHAR_ARRAYS[0]
        @primitiveLongUtil = ::Org::Allbinary::Logic::MathPackage::PrimitiveLongUtil.createPowerOfTen(max + 1)
        @max = max
        @value = 0
        if direction == 0
            raise RuntimeError.new(::Org::Allbinary::Game::Graphics::Hud::BasicHudFactory.getInstance().DIRECTION_EXCEPTION)
        end
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @offset = font.stringWidth(@prependString) + ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultCharWidth(font)
        NumberStringHud.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
    end
    java_overload :updateMeasurement, 1
    

    def get()
        return @value
    end
    java_overload :get, 0
    

    def add(value)
        self.set(@value + value)
    end
    java_overload :add, 1
    

    def set(value)
        @value = value
        if @value > @max
            @value = 0
        end
        @valueString = @primitiveLongUtil.getCharArray(@value)
        @valueTotalDigits = @primitiveLongUtil.getCurrentTotalDigits()
    end
    java_overload :set, 1
    

    def reduce(value)
        self.set(@value - value)
    end
    java_overload :reduce, 1
    

    def paint(graphics)
        NumberStringHud.superclass.java_super_method(:paintDX, 8).bind(self).call(graphics, @PREPEND_STRING, 0, @PREPEND_STRING.length, @valueString, 0, @valueTotalDigits, @offset)
    end
    java_overload :paint, 1
    

    def paintXY(graphics, x, y)
        @myFontProcessor.process(graphics)
        charArray = @PREPEND_STRING
        len = @PREPEND_STRING.length
        charArray2 = @valueString
        len2 = @valueTotalDigits
        @basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        graphics.drawChars(charArray, 0, len, x, y, 0)
        graphics.drawChars(charArray2, 0, len2, x - @offset, y, 0)
    end
    java_overload :paintXY, 3
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Graphics; module Hud; autoload :BasicHudFactory, "org/allbinary/game/graphics/hud/BasicHudFactory" unless const_defined?(:BasicHudFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveLongSingleton, "org/allbinary/logic/math/PrimitiveLongSingleton" unless const_defined?(:PrimitiveLongSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveLongUtil, "org/allbinary/logic/math/PrimitiveLongUtil" unless const_defined?(:PrimitiveLongUtil, false); end; end; end; end

end; end; end; end; end; end; end

