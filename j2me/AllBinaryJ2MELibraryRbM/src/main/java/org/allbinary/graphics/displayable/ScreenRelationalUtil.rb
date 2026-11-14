# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.displayable


class ScreenRelationalUtil
    

    def self.getInstance()
        return ScreenRelationalUtil.instance
    end
    

    def getScaleImage(image)
        return self.getScaleWH(image.getWidth(), image.getHeight())
    end
    

    def getScaleWH(aWidth, aHeight)
        return self.getScaleWHA(aWidth, aHeight, 20)
    end
    

    def getScaleWHA(aWidth, aHeight, add)
        displayInfoSingleton = DisplayInfoSingleton.getInstance()
        last = displayInfoSingleton.getLast()
        width = (last[displayInfoSingleton.WIDTH]).to_f
        height = (last[displayInfoSingleton.HEIGHT]).to_f
        largestSize = width
        if largestSize < height
            largestSize = height
        end
        scale = (largestSize) / (aWidth).to_f
        return scale
    end
    

    def getScaledHeight(aWidth, aHeight)
        return ((self.getScaleWH(aWidth, aHeight) * (aHeight).to_f)).to_i
    end
    

    def getScaledHeightAdd(aWidth, aHeight, add)
        return ((self.getScaleWHA(aWidth, aHeight, add) * (aHeight).to_f)).to_i
    end

    def self.instance()
        ScreenRelationalUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ScreenRelationalUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ScreenRelationalUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ScreenRelationalUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Image, "javax/microedition/lcdui/Image"
autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton"

begin
    ScreenRelationalUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

