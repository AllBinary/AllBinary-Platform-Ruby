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
# package org.allbinary.game.paint


class ColorFillPaintableFactory
    

    def self.getInstance()
        return ColorFillPaintableFactory.instance
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(basicColor, forThreedCanvas)
        operatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
        if operatingSystem.isOverScan()
            return OverScanColorFillPaintable.new(basicColor)
        else
            return ColorFillPaintable.new(basicColor)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/logic/system/os/OperatingSystemFactory"
require "org/allbinary/game/paint/ColorFillBasePaintable"
require "org/allbinary/game/paint/ColorFillPaintable"
require "org/allbinary/game/paint/OverScanColorFillPaintable"

class ColorFillPaintableFactory
    @@instance = ColorFillPaintableFactory.new()
end

