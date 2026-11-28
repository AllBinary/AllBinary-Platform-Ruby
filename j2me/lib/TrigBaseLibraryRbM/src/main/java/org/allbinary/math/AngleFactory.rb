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

module ::Org; module Allbinary; module MathPackage

class AngleFactory
    attr_accessor :logUtil, :TOTAL_ANGLE, :QUARTER_TOTAL_ANGLE, :angleArray, :NEGATIVE_ONE, :NOT_ANGLE, :DOWN, :UP, :LEFT, :RIGHT, :frameUtil

    def jfields_org_allbinary_math_AngleFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @TOTAL_ANGLE = 360
        @QUARTER_TOTAL_ANGLE = 90
        @angleArray = Array.new(@TOTAL_ANGLE, nil)
        @NEGATIVE_ONE = (((-1).to_i + 32768) % 65536 - 32768)
        @NOT_ANGLE = NamedAngle.new(@NEGATIVE_ONE, ::Org::Allbinary::StringPackage::CommonStrings.getInstance().EMPTY)
        @DOWN = nil unless instance_variable_defined?(:@DOWN)
        @UP = nil unless instance_variable_defined?(:@UP)
        @LEFT = nil unless instance_variable_defined?(:@LEFT)
        @RIGHT = nil unless instance_variable_defined?(:@RIGHT)
        @frameUtil = FrameUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_math_AngleFactory
        commonPhoneStrings = ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance()
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
        adjustedIndex = ((@frameUtil.adjustAngleToFrameAngle(index)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
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
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        angleFactory = AngleFactory.getInstance()
        (0...360).each do |index|
            stringMaker.appendint(index).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().FORWARD_SLASH).appendshort(((((angleFactory.getClosestDirection(index).getValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + 32768) % 65536 - 32768)).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        end
        ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance().putF(stringMaker.to_s, "main", "main")
    end

    def self.instance()
        AngleFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AngleFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AngleFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AngleFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :Angle, "org/allbinary/math/Angle" unless const_defined?(:Angle, false)
autoload :FrameUtil, "org/allbinary/math/FrameUtil" unless const_defined?(:FrameUtil, false)
autoload :NamedAngle, "org/allbinary/math/NamedAngle" unless const_defined?(:NamedAngle, false)

begin
    AngleFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

