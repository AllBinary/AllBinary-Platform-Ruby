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
        BasicColorUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicColorUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicColorUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicColorUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"

begin
    BasicColorUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

