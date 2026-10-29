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

# require "java/awt/image/BufferedImage"
# require "javax/microedition/lcdui/Image"

class ImageRotationUtil
    attr_accessor :imageJ2SERotationUtil

    def initialize_fields
        @imageJ2SERotationUtil = ImageJ2SERotationUtil.getInstance()
    end
    

    def self.getInstance()
        return ImageRotationUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def rotateImage(originalImage, image, totalAngle)
        if image.isMutable()
            j2seImage = image
            newBufferedImage = j2seImage.getImage()
            originalAwtImage = nil
            if originalImage.isMutable()
                originalJ2SEImage = originalImage
                originalAwtImage = originalJ2SEImage.getImage()
            else
                originalJ2SEImage = originalImage
                originalAwtImage = originalJ2SEImage.getImage()
            end
            @imageJ2SERotationUtil.rotateImage(originalAwtImage, newBufferedImage, totalAngle)
        else
            PreLogUtil.putOE("Not Mutable", self, "getRotatedImage", StandardError.new())
        end
    end
    

    # throws Exception
    def createRotatedImage(originalImage, rotationInDegrees)
        image = ImageCreationUtil.getInstance().createImageWH(originalImage.getWidth(), originalImage.getHeight())
        if image.isMutable()
            originalAwtImage = nil
            if originalImage.isMutable()
                originalJ2SEImage = originalImage
                originalAwtImage = originalJ2SEImage.getImage()
            else
                originalJ2SEImage = originalImage
                originalAwtImage = originalJ2SEImage.getImage()
            end
            j2seImage = image
            newBufferedImage = j2seImage.getImage()
            bufferedImage = @imageJ2SERotationUtil.createRotatedImage(originalAwtImage, newBufferedImage, rotationInDegrees)
            return image
        else
            raise StandardError.new("Not Mutable")
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/microemu/device/j2se/J2SEImmutableImage"
require "org/microemu/device/j2se/J2SEMutableImage"
require "org/allbinary/media/image/ImageCreationUtil"
require "org/allbinary/media/image/ImageJ2SERotationUtil"

class ImageRotationUtil
    @@instance = ImageRotationUtil.new()
end

