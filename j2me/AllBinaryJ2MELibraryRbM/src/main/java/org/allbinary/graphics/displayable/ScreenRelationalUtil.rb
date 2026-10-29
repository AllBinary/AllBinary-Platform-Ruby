# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.displayable

# require "javax/microedition/lcdui/Image"

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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/displayable/DisplayInfoSingleton"

class ScreenRelationalUtil
    @@instance = ScreenRelationalUtil.new()
end

