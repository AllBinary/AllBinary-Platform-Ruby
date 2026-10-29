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
# package org.allbinary.game.ag.layer.hud.basic.level

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/graphics/hud/BasicHud"
require "org/allbinary/graphics/paint/PaintableInterface"

class LevelHudWidget < BasicHud
    include PaintableInterface
    attr_accessor :level, :maxlevel, :levelString, :levelNumberCharArray, :levelNumberTotalDigits, :offset, :primitiveLongUtil

    def initialize_fields
        @level = nil
        @maxlevel = nil
        @levelString = nil
        @levelNumberCharArray = NullUtil.getInstance().NULL_CHAR_ARRAY
        @levelNumberTotalDigits = 0
        @offset = 0
        @primitiveLongUtil = nil
    end
    

    # throws Exception
    def self.createHud(maxlevel, location, direction)
        return LevelHudWidget.new(maxlevel, location, direction)
    end
    

    def initialize(maxlevel, location, direction)
        super(location, direction, 2, BasicColorFactory.getInstance().GREY)
        initialize_fields
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000)
        _LEVEL = "Lv "
        @levelString = _LEVEL.chars
        @maxlevel = maxlevel
        @level = maxlevel
        self.update()
        @updateMaxHeight = 14
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @updateMaxWidth = font.getSize() * 4
        @offset = font.charsWidth(@levelString, 0, @levelString.length) + font.getSize()
        super(graphics)
    end
    

    def update()
        @levelNumberCharArray = @primitiveLongUtil.getCharArray(@level)
        @levelNumberTotalDigits = @primitiveLongUtil.getCurrentTotalDigits()
    end
    

    def setLevel(level)
        @level = level
        self.update()
    end
    

    def nextLevel()
        @level += 1
        self.update()
    end
    

    def previousLevel()
        @level -= 1
        if @level < 0
            @level = 0
        end
        self.update()
    end
    

    def isComplete()
        if @level <= @maxlevel
            return false
        else
            return true
        end
    end
    

    def paint(graphics)
        self.class.superclass.instance_method(:paintDX).bind(self).call(graphics, @levelString, 0, @levelString.length, @levelNumberCharArray, 0, @levelNumberTotalDigits, @offset)
    end
    

    def paintThreed(graphics)
    end
end

require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/math/PrimitiveLongUtil"

