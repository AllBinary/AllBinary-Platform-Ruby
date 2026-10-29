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
    

    def self.getInstanceOrCreate()
        return ImageModifierUtil.instance
    end
    

    def setColor(unusedOriginalImage, image, imageIndex, basicColor)
    end
    

    def changeColor(unusedOriginalImage, image, imageIndex, basicColor)
    end
    

    def setAlpha(originalImage, image, imageIndex, alphaInt)
    end
    

    def getImageArray(originalImageArray)
        return originalImageArray
    end
    

    def handleImage(imageArray, index, image)
    end
    

    def reset()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/color/BasicColor"

class ImageModifierUtil
    @@instance = ImageModifierUtil.new()
end

