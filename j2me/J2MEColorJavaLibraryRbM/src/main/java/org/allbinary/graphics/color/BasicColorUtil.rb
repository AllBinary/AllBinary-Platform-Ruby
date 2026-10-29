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


class BasicColorUtil
    attr_accessor :ZERO_ARRAY, :ALPHA, :isAlpha, :ffOpaque

    def initialize_fields
        @ZERO_ARRAY = Array.new(0, nil)
        @ALPHA = 0xFF000000
        @isAlpha = true
        @ffOpaque = true
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return BasicColorUtil.instance
    end
    

    def getRGB(red, green, blue)
        value = 0
        if @isAlpha
            if @ffOpaque
                value = @ALPHA
            end
        end
        value = (red << 16) | value
        value = (green << 8) | value
        value = blue | value
        return value
    end
    

    def getARGB(alphaValue, r, g, b)
        return ((alphaValue << 24) & @ALPHA) + ((r << 16) & 0x00FF0000) + ((g << 8) & 0x0000FF00) + (b & 0x000000FF)
    end
    

    def get(alphaValue, color)
        return ((alphaValue << 24) & @ALPHA) + color
    end
    

    def invert(color)
        return (0xFFFFFF - color) | @ALPHA
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/color/BasicColor"

class BasicColorUtil
    @@instance = BasicColorUtil.new()
end

