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

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/graphics/hud/BasicHud"
require "org/allbinary/graphics/paint/PaintableInterface"

class NumberStringHud < BasicHud
    include PaintableInterface
    attr_accessor :primitiveLongUtil, :prependString, :PREPEND_STRING, :value, :max, :offset, :valueString, :valueTotalDigits

    def initialize_fields
        @primitiveLongUtil = nil
        @prependString = nil
        @PREPEND_STRING = nil
        @value = nil
        @max = nil
        @offset = 0
        @valueString = nil
        @valueTotalDigits = 0
    end
    

    def initialize(prependString, max, location, direction, bufferZone, basicColor)
        super(location, direction, bufferZone, basicColor)
        initialize_fields
        @prependString = prependString
        @PREPEND_STRING = prependString.chars
        @valueString = PrimitiveLongSingleton.getInstance().NUMBER_CHAR_ARRAYS[0]
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(max + 1)
        @max = max
        @value = 0
        if direction == 0
            raise RuntimeError.new(BasicHudFactory.getInstance().DIRECTION_EXCEPTION)
        end
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @offset = font.stringWidth(@prependString) + MyFontProcessor.defaultCharWidth(font)
        super(graphics)
    end
    

    def get()
        return @value
    end
    

    def add(value)
        self.set(@value + value)
    end
    

    def set(value)
        @value = value
        if @value > @max
            @value = 0
        end
        @valueString = @primitiveLongUtil.getCharArray(@value)
        @valueTotalDigits = @primitiveLongUtil.getCurrentTotalDigits()
    end
    

    def reduce(value)
        self.set(@value - value)
    end
    

    def paint(graphics)
        self.class.superclass.instance_method(:paintDX).bind(self).call(graphics, @PREPEND_STRING, 0, @PREPEND_STRING.length, @valueString, 0, @valueTotalDigits, @offset)
    end
    

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
    

    def paintThreed(graphics)
    end
end

require "org/allbinary/game/graphics/hud/BasicHudFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/logic/math/PrimitiveLongSingleton"
require "org/allbinary/logic/math/PrimitiveLongUtil"

