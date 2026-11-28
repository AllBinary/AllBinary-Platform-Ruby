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

module ::Org; module Allbinary; module MathPackage

class AngleInfo
    attr_accessor :angleIncrementInfo, :angle, :frameUtil

    def jfields_org_allbinary_math_AngleInfo
        @angleIncrementInfo = nil unless instance_variable_defined?(:@angleIncrementInfo)
        @angle = 0
        @frameUtil = FrameUtil.getInstance()
    end
    

    def self.getInstance(angleIncrement)
        return AngleInfo.new(AngleIncrementInfoFactory.getInstance().getAt(angleIncrement))
    end
    

    def initialize(angleIncrementInfo)
        jfields_org_allbinary_math_AngleInfo
        @angleIncrementInfo = angleIncrementInfo
    end
    

    def adjustAngle(frame)
        newAngle = @angleIncrementInfo.getAngleIncrement() * frame - 90
        self.setAngle(((((@frameUtil.adjustAngleToFrameAngle(newAngle)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + 32768) % 65536 - 32768))
    end
    

    def getAngle()
        return @angle
    end
    

    def setAngle(angle)
        @angle = angle
    end
    

    def getAngleIncrementInfo()
        return @angleIncrementInfo
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(ANGLE)
        stringBuffer.appendshort(@angle)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(self.getAngleIncrementInfo()))
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:ANGLE, "Angle: ")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AngleInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ANGLE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :AngleIncrementInfo, "org/allbinary/math/AngleIncrementInfo" unless const_defined?(:AngleIncrementInfo, false)
autoload :AngleIncrementInfoFactory, "org/allbinary/math/AngleIncrementInfoFactory" unless const_defined?(:AngleIncrementInfoFactory, false)
autoload :FrameUtil, "org/allbinary/math/FrameUtil" unless const_defined?(:FrameUtil, false)

begin
    AngleInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

