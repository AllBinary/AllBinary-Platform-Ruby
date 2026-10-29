# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.media.image

# require "javax/microedition/lcdui/Image"

class ImageModifierUtil
    attr_accessor :paint

    def initialize_fields
        @paint = Paint.new(Paint::ANTI_ALIAS_FLAG)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstanceOrCreate()
        return ImageModifierUtil.new()
    end
    

    def setColor(unusedOriginalImage, image, imageIndex, basicColor)
        @paint.setColorFilter(PorterDuffColorFilter.new(basicColor.to_i, PorterDuff::Mode.SRC_IN))
    end
    

    def changeColor(unusedOriginalImage, image, imageIndex, basicColor)
        @paint.setColorFilter(PorterDuffColorFilter.new(basicColor.to_i, PorterDuff::Mode.SRC_IN))
    end
    

    def setAlpha(originalImage, image, imageIndex, alphaInt)
        if alphaInt != @paint.getAlpha()
            @paint.setAlpha(alphaInt)
        end
    end
    

    def getImageArray(originalImageArray)
        return originalImageArray
    end
    

    def handleImage(imageArray, index, image)
    end
    

    def reset()
    end
end

require "android/graphics/Paint"
require "android/graphics/PorterDuff"
require "android/graphics/PorterDuffColorFilter"
require "org/allbinary/graphics/color/BasicColor"

