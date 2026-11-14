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

class AngleInfo
    attr_accessor :angleIncrementInfo, :angle, :frameUtil

    def initialize_fields
        @angleIncrementInfo = nil
        @angle = 0
        @frameUtil = FrameUtil.getInstance()
    end
    

    def self.getInstance(angleIncrement)
        return AngleInfo.new(AngleIncrementInfoFactory.getInstance().getAt(angleIncrement))
    end
    

    def initialize(angleIncrementInfo)
        initialize_fields
        @angleIncrementInfo = angleIncrementInfo
    end
    

    def adjustAngle(frame)
        newAngle = @angleIncrementInfo.getAngleIncrement() * frame - 90
        self.setAngle((((@frameUtil.adjustAngleToFrameAngle(newAngle)).to_i + 32768) % 65536 - 32768))
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
        stringBuffer = StringMaker.new()
        stringBuffer.append(AngleInfo::ANGLE)
        stringBuffer.appendshort(@angle)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(StringUtil.getInstance().toString(self.getAngleIncrementInfo()))
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

autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :AngleIncrementInfo, "org/allbinary/math/AngleIncrementInfo"
autoload :AngleIncrementInfoFactory, "org/allbinary/math/AngleIncrementInfoFactory"
autoload :FrameUtil, "org/allbinary/math/FrameUtil"

begin
    AngleInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

