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
# package org.allbinary.game.ag.layer.hud.basic.time

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/graphics/hud/BasicHud"

class TimeHudWidget < BasicHud
    attr_accessor :TIME_STRING, :TIME_CHAR_ARRAY, :offset, :string, :totalDigits, :timer

    def initialize_fields
        @TIME_STRING = "Time "
        @TIME_CHAR_ARRAY = ["T", "i", "m", "e", " "]
        @offset = 0
        @string = PrimitiveLongSingleton.getInstance().ZERO
        @totalDigits = 1
        @timer = nil
    end
    

    # throws Exception
    def self.getInstance(location, direction, basicColor, timer)
        return TimeHudWidget.new(location, direction, 2, basicColor, timer)
    end
    

    def initialize(location, direction, bufferZone, basicColor, timer)
        super(location, direction, bufferZone, basicColor)
        initialize_fields
        @timer = timer
        self.set()
        @updateMaxHeight = 14
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @updateMaxWidth = font.getSize() * 5
        @offset = font.stringWidth(@TIME_STRING) + MyFontProcessor.defaultStringWidth(font, 3)
        super(graphics)
    end
    

    def update()
        @timer.update()
        self.set()
    end
    

    def set()
        @string = @timer.getTimeChars()
        @totalDigits = @timer.getCurrentTotalDigits()
    end
    

    def getTimer()
        return @timer
    end
    

    def paint(graphics)
        self.class.superclass.instance_method(:paintDX).bind(self).call(graphics, @TIME_CHAR_ARRAY, 0, @TIME_CHAR_ARRAY.length, @string, 0, @totalDigits, @offset)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/logic/math/PrimitiveLongSingleton"
require "org/allbinary/game/ag/layer/hud/basic/time/Timer"

