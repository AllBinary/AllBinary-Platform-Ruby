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
# package org.allbinary.media.graphics.geography.map


class ColorFromEventUtil
    attr_accessor :YELLOW, :COLOR_INT

    def initialize_fields
        @YELLOW = BasicColorFactory.getInstance().YELLOW
        @COLOR_INT = @YELLOW.to_i
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ColorFromEventUtil.instance
    end
    

    def getForegroundColor(gameCanvasInterface)
        color = @YELLOW
        geographicMapCompositeInterface = gameCanvasInterface.getLayerManager()
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        if geographicMapInterface != nil
            foregroundBasicColor = geographicMapInterface.getForegroundBasicColor()
            color = foregroundBasicColor
        end
        return color
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"

class ColorFromEventUtil
    @@instance = ColorFromEventUtil.new()
end

