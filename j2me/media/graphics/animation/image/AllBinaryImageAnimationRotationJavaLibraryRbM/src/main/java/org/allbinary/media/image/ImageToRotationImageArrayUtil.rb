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
# package org.allbinary.media.image

# require "javax/microedition/lcdui/Image"

class ImageToRotationImageArrayUtil
    

    def self.getInstance()
        return ImageToRotationImageArrayUtil.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def generate(image, angleIncrement, totalAngle)
        imageRotationUtil = ImageRotationUtil.getInstance()
        totalFrames = totalAngle / angleIncrement
        imageArray = Array.new(totalFrames, nil)
        imageArray[0] = image
        (1...totalFrames).each do |index|
            imageArray[index] = imageRotationUtil.createRotatedImage(image, index * angleIncrement)
        end
        return imageArray
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/media/image/ImageRotationUtil"

class ImageToRotationImageArrayUtil
    @@instance = ImageToRotationImageArrayUtil.new()
end

