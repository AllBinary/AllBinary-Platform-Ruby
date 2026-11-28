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


module ::Org; module Allbinary; module Game; module Paint

class ColorFillPaintableFactory
    

    def self.getInstance()
        return @@instance
    end
    

    def getInstance(basicColor, forThreedCanvas)
        operatingSystem = ::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance()
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

module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystemFactory, "org/allbinary/logic/system/os/OperatingSystemFactory" unless const_defined?(:OperatingSystemFactory, false); end; end; end; end; end
autoload :ColorFillBasePaintable, "org/allbinary/game/paint/ColorFillBasePaintable" unless const_defined?(:ColorFillBasePaintable, false)
autoload :ColorFillPaintable, "org/allbinary/game/paint/ColorFillPaintable" unless const_defined?(:ColorFillPaintable, false)
autoload :OverScanColorFillPaintable, "org/allbinary/game/paint/OverScanColorFillPaintable" unless const_defined?(:OverScanColorFillPaintable, false)

begin
    ColorFillPaintableFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

