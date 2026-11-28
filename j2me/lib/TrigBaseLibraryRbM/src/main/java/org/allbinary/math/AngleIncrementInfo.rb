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
# require "jsinterop/annotations/JsProperty"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"

module ::Org; module Allbinary; module MathPackage

class AngleIncrementInfo
    attr_accessor :angleIncrement, :DOWN_FRAME, :UP_FRAME, :LEFT_FRAME, :RIGHT_FRAME, :frameUtil

    def jfields_org_allbinary_math_AngleIncrementInfo
        @angleIncrement = nil unless instance_variable_defined?(:@angleIncrement)
        @DOWN_FRAME = nil unless instance_variable_defined?(:@DOWN_FRAME)
        @UP_FRAME = nil unless instance_variable_defined?(:@UP_FRAME)
        @LEFT_FRAME = nil unless instance_variable_defined?(:@LEFT_FRAME)
        @RIGHT_FRAME = nil unless instance_variable_defined?(:@RIGHT_FRAME)
        @frameUtil = FrameUtil.getInstance()
    end
    

    def initialize(angleIncrement)
        jfields_org_allbinary_math_AngleIncrementInfo
        @angleIncrement = angleIncrement
        angleFactory = AngleFactory.getInstance()
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        @DOWN_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.DOWN.getValue() / @angleIncrement)
        @UP_FRAME = smallIntegerSingletonFactory.getAt(((angleFactory.UP.getValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        @LEFT_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.LEFT.getValue() / @angleIncrement)
        @RIGHT_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.RIGHT.getValue() / @angleIncrement)
    end
    

    def getFrameAngle(frame)
        return @frameUtil.getFrameAngle(frame, @angleIncrement)
    end
    

    def getAngleIncrement()
        return @angleIncrement
    end
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(INCREMENT).appendshort(@angleIncrement).to_s
    end
    alias_method :to_s, :toString
    

    def getClosestGeneralDirection(angle)
        closestDirection = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(360)
        if @UP_FRAME.to_i - angle < closestDirection.to_i - angle
            closestDirection = @UP_FRAME
        end
        if @DOWN_FRAME.to_i - angle < closestDirection.to_i - angle
            closestDirection = @DOWN_FRAME
        end
        if @LEFT_FRAME.to_i - angle < closestDirection.to_i - angle
            closestDirection = @LEFT_FRAME
        end
        if @RIGHT_FRAME.to_i - angle < closestDirection.to_i - angle
            closestDirection = @RIGHT_FRAME
        end
        return closestDirection.to_i
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:INCREMENT, "Inc: ")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AngleIncrementInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:INCREMENT].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false)
autoload :FrameUtil, "org/allbinary/math/FrameUtil" unless const_defined?(:FrameUtil, false)

begin
    AngleIncrementInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

