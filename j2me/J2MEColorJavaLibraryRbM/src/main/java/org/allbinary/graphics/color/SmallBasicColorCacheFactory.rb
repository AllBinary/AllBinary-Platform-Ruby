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


class SmallBasicColorCacheFactory
    attr_accessor :SIZE, :INDEX_TO_COLOR, :BASIC_COLOR_ARRAY, :colorIndex

    def initialize_fields
        @SIZE = 255
        @INDEX_TO_COLOR = Array.new(@SIZE, 0)
        @BASIC_COLOR_ARRAY = Array.new(@SIZE, nil)
        @colorIndex = 0
    end
    

    def self.getInstance()
        return SmallBasicColorCacheFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def add(basicDefaultColor)
        @BASIC_COLOR_ARRAY[@colorIndex] = basicDefaultColor
        @INDEX_TO_COLOR[@colorIndex] = basicDefaultColor.to_i
        @colorIndex += 1
    end
    

    def getAndOrCreate(colorAsInt)
        basicColor = nil
        (0...@SIZE).each do |index|
            if @INDEX_TO_COLOR[index] == colorAsInt
                return @BASIC_COLOR_ARRAY[index]
            end
        end
        _ALPHA_MASK = 0xFF000000
        basicColor = BasicColorFactory.getInstance().createInstanceAN(colorAsInt & _ALPHA_MASK, colorAsInt & 0x00FFFFFF, StringUtil.getInstance().EMPTY_STRING)
        self.add(basicColor)
        return basicColor
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"

class SmallBasicColorCacheFactory
    @@instance = SmallBasicColorCacheFactory.new()
end

