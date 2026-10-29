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
# package org.allbinary.input.motion.button


class CommonButtons
    attr_accessor :STANDARD_BUTTON_SIZE, :NORMAL_BUTTON, :LARGE_BUTTON

    def initialize_fields
        @STANDARD_BUTTON_SIZE = nil
        @NORMAL_BUTTON = nil
        @LARGE_BUTTON = nil
    end
    

    def self.getInstance()
        return CommonButtons.instance
    end
    

    def initialize()
        initialize_fields
        displayInfo = DisplayInfoSingleton.getInstance()
        commonButtonSize = 128
        while commonButtonSize > 64
            totalColumns = displayInfo.getLastWidth() / commonButtonSize
            totalRows = displayInfo.getLastHeight() / commonButtonSize
            max = totalColumns
            if totalRows > max
                max = totalRows
            end
            if max > 9
                break
            end
            commonButtonSize = commonButtonSize >> 1
        end
        @STANDARD_BUTTON_SIZE = commonButtonSize
        @NORMAL_BUTTON = Rectangle.new(PointFactory.getInstance().ZERO_ZERO, @STANDARD_BUTTON_SIZE, @STANDARD_BUTTON_SIZE)
        @LARGE_BUTTON = Rectangle.new(PointFactory.getInstance().ZERO_ZERO, @STANDARD_BUTTON_SIZE << 1, @STANDARD_BUTTON_SIZE << 1)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"

class CommonButtons
    @@instance = CommonButtons.new()
end

