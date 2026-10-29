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
# package org.allbinary.game.layer.hud.basic

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/graphics/hud/BasicHud"

class VelocityWidget < BasicHud
    attr_accessor :KILOMETERS_PER_HOUR_STR, :totalChars, :velocity, :maxVelocity, :string, :totalDigits, :powerOfTenVelocity, :primitiveLongUtil, :offset, :offset2

    def initialize_fields
        @KILOMETERS_PER_HOUR_STR = [" ", "k", "m", "/", "h"]
        @totalChars = @KILOMETERS_PER_HOUR_STR.length
        @velocity = nil
        @maxVelocity = nil
        @string = PrimitiveLongSingleton.getInstance().ZERO
        @totalDigits = 1
        @powerOfTenVelocity = nil
        @primitiveLongUtil = nil
        @offset = 0
        @offset2 = 0
    end
    

    def initialize(powerOfTenVelocity, location, direction, basicColor)
        super(location, direction, 2, basicColor)
        initialize_fields
        @powerOfTenVelocity = powerOfTenVelocity
        @maxVelocity = powerOfTenVelocity
        @velocity = 0
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(powerOfTenVelocity)
        @updateMaxHeight = 14
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @updateMaxWidth = font.getSize() * (5 + MathUtil.getInstance().getTotalDigits(@powerOfTenVelocity) + 1)
        super(graphics)
        @offset = MyFontProcessor.defaultStringWidth(font, @primitiveLongUtil.getMaxDigits()) + MyFontProcessor.defaultStringWidth(font, 2)
        @offset2 = @offset - MyFontProcessor.defaultStringWidth(font, @totalDigits) - MyFontProcessor.defaultStringWidth(font, 2)
    end
    

    def get()
        return @velocity
    end
    

    def add(value)
        self.set(@velocity + value)
    end
    

    def set(value)
        lastVelocity = @velocity
        @velocity = value
        if @velocity > @maxVelocity
            @velocity = 0
        end
        if lastVelocity != @velocity
            @string = @primitiveLongUtil.getCharArray(@velocity * 18)
            if OpenGLFeatureUtil.getInstance().isAnyThreed()
                @totalDigits = @primitiveLongUtil.getCurrentTotalDigits() + 1
            else
                @totalDigits = @primitiveLongUtil.getCurrentTotalDigits()
            end
            @myFontProcessor = @updateMyFontProcessor
        end
    end
    

    def reduce(value)
        self.set(@velocity - value)
    end
    

    def paint(graphics)
        self.class.superclass.instance_method(:paintDXY).bind(self).call(graphics, @string, 0, @totalDigits, @KILOMETERS_PER_HOUR_STR, 0, @totalChars, @offset2, @offset)
    end
end

require "org/allbinary/graphics/opengles/OpenGLFeatureUtil"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/logic/math/MathUtil"
require "org/allbinary/logic/math/PrimitiveLongSingleton"
require "org/allbinary/logic/math/PrimitiveLongUtil"

