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
# package org.allbinary.math

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"
# require "jsinterop/annotations/JsProperty"

class AngleFactory
    attr_accessor :logUtil, :TOTAL_ANGLE, :QUARTER_TOTAL_ANGLE, :angleArray, :NEGATIVE_ONE, :NOT_ANGLE, :DOWN, :UP, :LEFT, :RIGHT, :frameUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @TOTAL_ANGLE = 360
        @QUARTER_TOTAL_ANGLE = 90
        @angleArray = Array.new(@TOTAL_ANGLE, nil)
        @NEGATIVE_ONE = (((-1).to_i + 32768) % 65536 - 32768)
        @NOT_ANGLE = NamedAngle.new(@NEGATIVE_ONE, CommonStrings.getInstance().EMPTY)
        @DOWN = nil
        @UP = nil
        @LEFT = nil
        @RIGHT = nil
        @frameUtil = FrameUtil.getInstance()
    end
    

    def self.getInstance()
        return AngleFactory.instance
    end
    

    def initialize()
        initialize_fields
        commonPhoneStrings = CommonPhoneStrings.getInstance()
        total = (((@angleArray.length).to_i + 32768) % 65536 - 32768)
        @UP = NamedAngle.new((((0).to_i + 32768) % 65536 - 32768), commonPhoneStrings.UP)
        @angleArray[0] = @UP
        (1...90).each do |index|
            @angleArray[index] = Angle.new((((index).to_i + 32768) % 65536 - 32768))
        end
        @RIGHT = NamedAngle.new((((90).to_i + 32768) % 65536 - 32768), commonPhoneStrings.RIGHT)
        @angleArray[90] = @RIGHT
        (91...180).each do |index|
            @angleArray[index] = Angle.new((((index).to_i + 32768) % 65536 - 32768))
        end
        @DOWN = NamedAngle.new((((180).to_i + 32768) % 65536 - 32768), commonPhoneStrings.DOWN)
        @angleArray[180] = @DOWN
        (181...270).each do |index|
            @angleArray[index] = Angle.new((((index).to_i + 32768) % 65536 - 32768))
        end
        @LEFT = NamedAngle.new((((270).to_i + 32768) % 65536 - 32768), commonPhoneStrings.LEFT)
        @angleArray[270] = @LEFT
        (271...total).each do |index|
            @angleArray[index] = Angle.new((((index).to_i + 32768) % 65536 - 32768))
        end
    end
    

    def getAt(index)
        adjustedIndex = (@frameUtil.adjustAngleToFrameAngle(index)).to_i
        return @angleArray[adjustedIndex]
    end
    

    def getClosestDirection(angle)
        if (angle >= 315 && angle < 360) || (angle >= 0 && angle < 45)
            return @UP
        elsif angle >= 45 && angle < 135
            return @RIGHT
        elsif angle >= 135 && angle < 225
            return @DOWN
        elsif angle >= 225 && angle < 315
            return @LEFT
        end
        raise RuntimeError.new()
    end
    

    def getGeneralDirection()
        return @NOT_ANGLE
    end
    

    def self.main(args)
        stringMaker = StringMaker.new()
        angleFactory = AngleFactory.getInstance()
        (0...360).each do |index|
            stringMaker.appendint(index).append(CommonSeps.getInstance().FORWARD_SLASH).appendshort((((angleFactory.getClosestDirection(index).getValue()).to_i + 32768) % 65536 - 32768)).append(CommonSeps.getInstance().NEW_LINE)
        end
        LogUtil.getInstance().putF(stringMaker.to_s, "main", "main")
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/math/Angle"
require "org/allbinary/math/FrameUtil"
require "org/allbinary/math/NamedAngle"

class AngleFactory
    @@instance = AngleFactory.new()
end

