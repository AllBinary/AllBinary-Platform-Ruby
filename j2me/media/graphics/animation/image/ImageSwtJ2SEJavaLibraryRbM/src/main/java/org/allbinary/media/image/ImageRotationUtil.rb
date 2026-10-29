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

class ImageRotationUtil
    attr_accessor :imageSwtRotationUtil, :features

    def initialize_fields
        @imageSwtRotationUtil = ImageSwtRotationUtil.getInstance()
        @features = Features.getInstance()
    end
    

    def self.getInstance()
        return ImageRotationUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def rotateImage(originalImage, image, totalAngle)
        originalImage2 = originalImage
        if @features.isFeature(OpenGLFeatureFactory.getInstance().OPENGL)
            if image.getType() >= OpenGLESImage::TYPE
                openGLESImage = (image)
                openGLESImage.openGLESImageProperties.angle = totalAngle
                return
            else
                PreLogUtil.put("OpenGL but image is: " + (image).to_s + " type: " + (image.getType()).to_s, self, "rotateImage")
            end
        end
        originalSwtImage = (originalImage2.getImage())
        gc = nil
        copySwtImage = nil
        if image.isMutable()
            swtImage = image
            copySwtImage = swtImage.getImage()
            gc = swtImage.getGc()
            @imageSwtRotationUtil.rotateImage(originalSwtImage, copySwtImage, gc, totalAngle)
        else
            PreLogUtil.put("No rotation for: " + image.to_s, self, "rotateImage")
        end
    end
    

    # throws Exception
    def createRotatedImage(originalImage, rotationInDegrees)
        return originalImage
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/image/opengles/OpenGLESImage"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/eclipse/swt/graphics/GC"
require "org/microemu/device/swt/SwtImmutableImage"
require "org/microemu/device/swt/SwtMutableImage"
require "org/allbinary/media/image/ImageSwtRotationUtil"

class ImageRotationUtil
    @@instance = ImageRotationUtil.new()
end

