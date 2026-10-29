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


class ColorTemperatureUtil
    attr_accessor :basicColorFactory

    def initialize_fields
        @basicColorFactory = BasicColorFactory.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ColorTemperatureUtil.instance
    end
    

    def getBasicColor(thirdTemp)
        basicColor = @basicColorFactory.RED
        if thirdTemp > 3700
            basicColor = @basicColorFactory.PURPLE
        elsif thirdTemp > 3200
            basicColor = @basicColorFactory.BLUE
        elsif thirdTemp > 2700
            basicColor = @basicColorFactory.PUCE
        elsif thirdTemp > 2200
            basicColor = @basicColorFactory.WHITE
        elsif thirdTemp > 1700
            basicColor = @basicColorFactory.GREEN
        elsif thirdTemp > 1200
            basicColor = @basicColorFactory.YELLOW
        elsif thirdTemp > 700
            basicColor = @basicColorFactory.ORANGE
        end
        return basicColor
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"

class ColorTemperatureUtil
    @@instance = ColorTemperatureUtil.new()
end

