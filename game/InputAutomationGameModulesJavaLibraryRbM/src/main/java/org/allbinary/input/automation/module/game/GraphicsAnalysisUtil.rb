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
# package org.allbinary.input.automation.module.game

# require "java/awt"
# require "java/awt/image/BufferedImage"

class GraphicsAnalysisUtil
    

    def initialize()
    end
    

    # throws Exception
    def self.getNominator(bufferedImage, min_x, max_x, y)
        (max_x.to_i).step(min_x.to_i + 1, -(1)) do |index|
            colorInteger = (bufferedImage.getRGB(index, y.to_i)).to_s
            automaticCacheInterface = ColorCacheFactory.getInstance()
            colorCacheable = automaticCacheInterface.get(colorInteger)
            color = colorCacheable.getColor()
            if color.getRed() < GraphicsAnalysisUtil::MAX && color.getGreen() < GraphicsAnalysisUtil::MAX && color.getBlue() < GraphicsAnalysisUtil::MAX
            else
                return index - min_x.to_i
            end
        end
        return 0.0
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MAX, 122)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GraphicsAnalysisUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAX].include?(name)
        end
        super
    end
end

autoload :ColorCacheFactory, "org/allbinary/graphics/color/ColorCacheFactory"
autoload :ColorCacheable, "org/allbinary/graphics/color/ColorCacheable"
autoload :AutomaticCacheInterface, "org/allbinary/logic/util/cache/AutomaticCacheInterface"

begin
    GraphicsAnalysisUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

