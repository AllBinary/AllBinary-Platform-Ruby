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
# package org.allbinary.graphics.color

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"
# require "jsinterop/annotations/JsProperty"

module ::Org; module Allbinary; module Graphics; module Color

class BasicColor
    attr_accessor :name, :value, :redComponent, :greenComponent, :blueComponent, :alphaComponent, :red, :green, :blue, :alpha

    def jfields_org_allbinary_graphics_color_BasicColor
        @name = nil unless instance_variable_defined?(:@name)
        @value = nil unless instance_variable_defined?(:@value)
        @redComponent = nil unless instance_variable_defined?(:@redComponent)
        @greenComponent = nil unless instance_variable_defined?(:@greenComponent)
        @blueComponent = nil unless instance_variable_defined?(:@blueComponent)
        @alphaComponent = nil unless instance_variable_defined?(:@alphaComponent)
        @red = nil unless instance_variable_defined?(:@red)
        @green = nil unless instance_variable_defined?(:@green)
        @blue = nil unless instance_variable_defined?(:@blue)
        @alpha = nil unless instance_variable_defined?(:@alpha)
    end
    

    def initialize(alphaValue, value, name)
        jfields_org_allbinary_graphics_color_BasicColor
        @name = name
        tempValue = 0
        basicColorUtil = BasicColorUtil.getInstance()
        if basicColorUtil.isAlpha
            if basicColorUtil.ffOpaque
                tempValue = alphaValue | value
            else
                tempValue = 0x00000000 | value
            end
        else
            tempValue = value
        end
        alphaInt = ((tempValue >> 24) & 255)
        @alpha = (((alphaInt).to_i + 32768) % 65536 - 32768)
        @alphaComponent = ((alphaInt).to_f) / 255.0
        redInt = ((tempValue >> 16) & 255)
        @red = (((redInt).to_i + 32768) % 65536 - 32768)
        @redComponent = ((redInt).to_f) / 255.0
        greenInt = ((tempValue >> 8) & 255)
        @green = (((greenInt).to_i + 32768) % 65536 - 32768)
        @greenComponent = ((greenInt).to_f) / 255.0
        blueInt = ((tempValue) & 255)
        @blue = (((blueInt).to_i + 32768) % 65536 - 32768)
        @blueComponent = ((blueInt).to_f) / 255.0
        @value = tempValue
    end
    

    def intValue()
        return @value
    end
    

    def toInt()
        return @value
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("BasicColor: ")
        stringBuffer.append("Alpha: ")
        stringBuffer.appendshort(@alpha)
        stringBuffer.append(" Red: ")
        stringBuffer.appendshort(@red)
        stringBuffer.append(" Green: ")
        stringBuffer.appendshort(@green)
        stringBuffer.append(" Blue: ")
        stringBuffer.appendshort(@blue)
        stringBuffer.append(" Value: ")
        stringBuffer.appendint(@value)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def getName()
        return @name
    end
    

    def getRedComponent()
        return @redComponent
    end
    

    def getGreenComponent()
        return @greenComponent
    end
    

    def getBlueComponent()
        return @blueComponent
    end
    

    def getAlphaComponent()
        return @alphaComponent
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :BasicColorUtil, "org/allbinary/graphics/color/BasicColorUtil" unless const_defined?(:BasicColorUtil, false)

end; end; end; end

