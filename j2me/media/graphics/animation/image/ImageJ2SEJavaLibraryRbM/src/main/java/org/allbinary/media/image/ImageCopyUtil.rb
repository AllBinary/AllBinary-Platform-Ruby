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

class ImageCopyUtil
    attr_accessor :logUtil, :imageUtil, :imageCreationUtil, :anchor

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @imageUtil = ImageUtil.getInstance()
        @imageCreationUtil = ImageCreationUtil.getInstance()
        @anchor = Anchor::TOP_LEFT
    end
    

    def self.getInstance()
        return ImageCopyUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def createImageForRotation(originalImage)
        return self.createImage(originalImage)
    end
    

    # throws Exception
    def createImage(originalImage)
        image = @imageCreationUtil.createImageWH(originalImage.getWidth(), originalImage.getHeight())
        if image.isMutable()
            image.getGraphics().drawImage(originalImage, 0, 0, @anchor)
            return image
        else
            raise StandardError.new("Not Mutable")
        end
    end
    

    # throws Exception
    def createImageScale(originalImage, canvasScale, resize)
        newWidth = ((originalImage.getWidth() * canvasScale)).to_i
        newHeight = ((originalImage.getHeight() * canvasScale)).to_i
        if resize
            if newWidth < newHeight
                newWidth = newHeight
            end
            if newHeight < newWidth
                newHeight = newWidth
            end
        end
        originalBufferedImage = @imageUtil.getBufferedImage(originalImage)
        bufferedImage = @imageUtil.createBufferedImageWithLargerCanvas(originalBufferedImage, newWidth, newHeight)
        image = J2SEImmutableImage.new(bufferedImage)
        return image
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/Anchor"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/microemu/device/j2se/J2SEImmutableImage"
require "org/allbinary/media/image/ImageCreationUtil"
require "org/allbinary/media/image/ImageUtil"

class ImageCopyUtil
    @@instance = ImageCopyUtil.new()
end

