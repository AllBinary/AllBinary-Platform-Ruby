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

class ImageJ2MEScaleUtil
    

    def self.getInstance()
        return ImageJ2MEScaleUtil.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def scaleArray(images, width, height)
        scaledImages = Array.new(images.length, nil)
        index = images.length
        while (index -= 1) >= 0
            scaledImages[index] = self.scale(images[index], width, height)
        end
        return scaledImages
    end
    

    # throws Exception
    def scale(image, width, height)
        scaledImage = ImageCopyUtil.getInstance().createImageWH(image, width, height, true)
        return scaledImage
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/media/image/ImageCopyUtil"

class ImageJ2MEScaleUtil
    @@instance = ImageJ2MEScaleUtil.new()
end

