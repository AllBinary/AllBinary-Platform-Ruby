#
# AllBinary Open License Version 1
# Copyright (c) 2023 AllBinary
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
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return ImageJ2MEScaleUtil.instance
    end
    

    def initialize()
        initialize_fields
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
        originalPlayNImage = nil
        if image.isMutable()
            originalHTMLImage = image
            originalPlayNImage = originalHTMLImage.getImage()
        else
            originalHTMLImage = image
            originalPlayNImage = originalHTMLImage.getImage()
        end
        scaledImage = Image.createImage(width, height)
        htmlImage = scaledImage
        canvasImage = htmlImage.getImage()
        canvasSurface = htmlImage.getCanvasSurface(canvasImage)
        canvasSurface.drawImage(originalPlayNImage, 0, 0, scaledImage.getWidth(), scaledImage.getHeight(), 0, 0, image.getWidth(), image.getHeight())
        return scaledImage
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/microemu/device/playn/PlaynImmutableImage"
require "org/microemu/device/playn/PlaynMutableImage"
require "playn/core/CanvasImage"
require "playn/core/CanvasSurface"

class ImageJ2MEScaleUtil
    @@instance = ImageJ2MEScaleUtil.new()
end

