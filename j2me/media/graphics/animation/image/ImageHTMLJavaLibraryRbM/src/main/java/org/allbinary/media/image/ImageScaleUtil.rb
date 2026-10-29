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

class ImageScaleUtil
    

    def self.getInstance()
        return ImageScaleUtil.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def createImage2(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached)
        return self.createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true)
    end
    

    # throws Exception
    def createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, mutable)
        scaleX = scaleNominatorX / scaleDenominatorX
        scaleY = scaleNominatorY / scaleDenominatorY
        return self.createImage(imageCache, originalImage, scaleX, scaleY, cached)
    end
    

    # throws Exception
    def createImage(imageCache, originalImage, scaleX, scaleY, cached)
        return self.createImageInternal(originalImage, scaleX, scaleY)
    end
    

    # throws Exception
    def createImageInternal(originalImage, scaleX, scaleY)
        image = ImageCreationUtil.getInstance().getInstance(((originalImage.getWidth() * scaleX)).to_i, ((originalImage.getHeight() * scaleY)).to_i)
        if image.isMutable()
            originalPlayNImage = nil
            if originalImage.isMutable()
                originalHTMLImage = originalImage
                originalPlayNImage = originalHTMLImage.getImage()
            else
                originalHTMLImage = originalImage
                originalPlayNImage = originalHTMLImage.getImage()
            end
            htmlImage = image
            canvasImage = htmlImage.getImage()
            canvasSurface = htmlImage.getCanvasSurface(canvasImage)
            canvasSurface.drawImage(originalPlayNImage, 0, 0, image.getWidth(), image.getHeight(), 0, 0, originalPlayNImage.width(), originalPlayNImage.height())
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

require "org/allbinary/graphics/Anchor"
require "org/allbinary/image/ImageCache"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/microemu/device/playn/PlaynImmutableImage"
require "org/microemu/device/playn/PlaynMutableImage"
require "playn/core/CanvasImage"
require "playn/core/CanvasSurface"
require "org/allbinary/media/image/ImageCreationUtil"

class ImageScaleUtil
    @@instance = ImageScaleUtil.new()
end

