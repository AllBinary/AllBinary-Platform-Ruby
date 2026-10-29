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
    

    def self.getInstance()
        return ImageRotationUtil.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def createRotatedImage(originalImage, rotationInDegrees)
        image = ImageCreationUtil.getInstance().getInstance(originalImage.getWidth(), originalImage.getHeight())
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
            canvasSurface.translate(originalPlayNImage.width() / 2, originalPlayNImage.height() / 2)
            canvasSurface.rotate((((rotationInDegrees) * Math::PI / 180)).to_f)
            canvasSurface.drawImage(originalPlayNImage, -originalPlayNImage.width() / 2, -originalPlayNImage.height() / 2)
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

require "org/microemu/device/playn/PlaynImmutableImage"
require "org/microemu/device/playn/PlaynMutableImage"
require "playn/core/CanvasImage"
require "playn/core/CanvasSurface"
require "org/allbinary/media/image/ImageCreationUtil"

class ImageRotationUtil
    @@instance = ImageRotationUtil.new()
end

