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
    attr_accessor :playnUtil

    def initialize_fields
        @playnUtil = HTMLPlaynUtil.getInstance()
    end
    

    def self.getInstance()
        return ImageRotationUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def rotateImage(originalImage, image, totalAngle)
        if image.isMutable()
            htmlImage = image
            canvasImage = htmlImage.getImage()
            canvas = @playnUtil.getCanvas(canvasImage)
            canvas.save()
            canvas.clear()
            canvas.translate(originalImage.getWidth() / 2, originalImage.getHeight() / 2)
            image2 = self.rotateImageCanvasSurface(originalImage, image, canvas, totalAngle)
            self.drawImage(originalImage, image, canvas)
            canvas.restore()
            return image2
        else
            return nil
        end
    end
    

    def rotateImageCanvasSurfaceClear(originalImage, image, canvasSurface, totalAngle)
        if image.isMutable()
            canvasSurface.translate(-originalImage.getWidth() / 2, -originalImage.getHeight() / 2)
            canvasSurface.clear()
            canvasSurface.translate(originalImage.getWidth() / 2, originalImage.getHeight() / 2)
            return self.rotateImageCanvasSurface(originalImage, image, canvasSurface, totalAngle)
        else
            return nil
        end
    end
    

    def rotateImageCanvasSurface(originalImage, image, canvasSurface, totalAngle)
        if image.isMutable()
            canvasSurface.rotate((((totalAngle) * Math::PI / 180)).to_f)
            return image
        else
            return nil
        end
    end
    

    def drawImage(originalImage, image, canvasSurface)
        originalPlayNImage = nil
        if originalImage.isMutable()
            originalHTMLImage = originalImage
            originalPlayNImage = originalHTMLImage.getImage()
        else
            originalHTMLImage = originalImage
            originalPlayNImage = originalHTMLImage.getImage()
        end
        canvasSurface.draw(originalPlayNImage, -originalImage.getWidth() / 2, -originalImage.getHeight() / 2)
    end
    

    # throws Exception
    def createRotatedImage(originalImage, rotationInDegrees)
        image = ImageCreationUtil.getInstance().createImageWH(originalImage.getWidth(), originalImage.getHeight())
        rotatedImage = self.rotateImage(originalImage, image, rotationInDegrees)
        if rotatedImage == nil
            raise StandardError.new("Not Mutable")
        end
        return rotatedImage
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
require "playn/core/Canvas"
require "playn/core/CoreImage"
require "playn/core/ImageImpl"
require "playn/html/HTMLPlaynUtil"
require "org/allbinary/media/image/ImageCreationUtil"

class ImageRotationUtil
    @@instance = ImageRotationUtil.new()
end

