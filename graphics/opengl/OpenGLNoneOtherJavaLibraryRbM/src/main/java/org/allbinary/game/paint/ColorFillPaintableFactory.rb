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
        ColorFillPaintableFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ColorFillPaintableFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ColorFillPaintableFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ColorFillPaintableFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem"
autoload :OperatingSystemFactory, "org/allbinary/logic/system/os/OperatingSystemFactory"
autoload :ColorFillBasePaintable, "org/allbinary/game/paint/ColorFillBasePaintable"
autoload :ColorFillPaintable, "org/allbinary/game/paint/ColorFillPaintable"
autoload :OverScanColorFillPaintable, "org/allbinary/game/paint/OverScanColorFillPaintable"

begin
    ColorFillPaintableFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

