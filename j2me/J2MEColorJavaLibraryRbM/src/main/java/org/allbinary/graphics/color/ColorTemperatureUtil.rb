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
        ColorTemperatureUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ColorTemperatureUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ColorTemperatureUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ColorTemperatureUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"

begin
    ColorTemperatureUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

