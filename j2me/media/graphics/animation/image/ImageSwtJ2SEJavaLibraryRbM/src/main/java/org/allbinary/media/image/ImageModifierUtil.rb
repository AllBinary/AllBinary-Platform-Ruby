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
    attr_accessor :logUtil, :imageCopyUtil, :features

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @imageCopyUtil = ImageCopyUtil.getInstance()
        @features = Features.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstanceOrCreate()
        return ImageModifierUtil.instance
    end
    

    def setBasicColorP(basicColor)
    end
    

    def setColor(unusedOriginalImage, image, imageIndex, basicColor)
        newBufferedImage = nil
        if image.isMutable()
            swtImage = image
            newBufferedImage = swtImage.getImage()
        else
            swtImage = image
            newBufferedImage = swtImage.getImage()
        end
        r = basicColor.red
        g = basicColor.green
        b = basicColor.blue
        width = image.getWidth()
        height = image.getHeight()
        imageData = newBufferedImage.getImageData()
        if imageData.depth == 24
            rx = 0
            gx = 0
            bx = 0
            index3 = 0
            (0...width).each do |index|
                (0...height).each do |index2|
                    index3 = (index2 * imageData.bytesPerLine) + (index * 4)
                    rx = (imageData.data[index3] & 0xFF) << 16
                    gx = (imageData.data[index3 + 1] & 0xFF) << 8
                    bx = (imageData.data[index3 + 2] & 0xFF)
                    if rx != 0 || gx != 0 || bx != 0
                        imageData.data[index3] = (((r).to_i + 128) % 256 - 128)
                        imageData.data[index3 + 1] = (((g).to_i + 128) % 256 - 128)
                        imageData.data[index3 + 2] = (((b).to_i + 128) % 256 - 128)
                    end
                end
            end
        end
    end
    

    def changeColor(unusedOriginalImage, image, imageIndex, basicColor)
        if @features.isFeature(OpenGLFeatureFactory.getInstance().OPENGL)
            if image.getType() >= OpenGLESImage::TYPE
                openGLESImage = (image)
                openGLESImage.imageProcessor = ModifierOpenGLESImageProcessor.getInstance()
                openGLESImage.openGLESImageProperties.redf = basicColor.getRedComponent()
                openGLESImage.openGLESImageProperties.greenf = basicColor.getGreenComponent()
                openGLESImage.openGLESImageProperties.bluef = basicColor.getBlueComponent()
                return
            end
        end
        newBufferedImage = nil
        if image.isMutable()
            swtImage = image
            newBufferedImage = swtImage.getImage()
        else
            swtImage = image
            newBufferedImage = swtImage.getImage()
        end
        _MAX = 255.0
        r = ((basicColor.red).to_f) / _MAX
        g = ((basicColor.green).to_f) / _MAX
        b = ((basicColor.blue).to_f) / _MAX
        rx = 0
        gx = 0
        bx = 0
        imageData = newBufferedImage.getImageData()
        if imageData.depth == 24
            size = imageData.data.length
            (0...size).step(4) do |index|
                rx = (imageData.data[index] & 0xFF) << 16
                gx = (imageData.data[index + 1] & 0xFF) << 8
                bx = (imageData.data[index + 2] & 0xFF)
                rx = (rx * r).to_i
                gx = (gx * g).to_i
                bx = (bx * b).to_i
                imageData.data[index] = (((rx).to_i + 128) % 256 - 128)
                imageData.data[index + 1] = (((gx).to_i + 128) % 256 - 128)
                imageData.data[index + 2] = (((bx).to_i + 128) % 256 - 128)
            end
        end
    end
    

    def setAlpha(unusedOriginalImage, image, imageIndex, alphaInt)
        if @features.isFeature(OpenGLFeatureFactory.getInstance().OPENGL)
            if image.getType() >= OpenGLESImage::TYPE
                openGLESImage = (image)
                openGLESImage.imageProcessor = ModifierOpenGLESImageProcessor.getInstance()
                openGLESImage.openGLESImageProperties.alphaf = ((alphaInt).to_f) / 255.0
                return
            end
        end
        self.setAlphaSWT(image, alphaInt)
    end
    

    def setAlphaSWT(image, alphaInt)
        alpha = (((alphaInt).to_i + 128) % 256 - 128)
        newBufferedImage = nil
        if image.isMutable()
            swtImage = image
            newBufferedImage = swtImage.getImage()
        else
            swtImage = image
            newBufferedImage = swtImage.getImage()
        end
        newBufferedImage.getImageData().alpha = alpha
    end
    

    def getImageArray(originalImageArray)
        begin
            newImageArray = Array.new(originalImageArray.length, nil)
            size = newImageArray.length
            originalImage = nil
            (0...size).each do |index|
                originalImage = originalImageArray[index]
                image = @imageCopyUtil.createImage(originalImage)
                newImageArray[index] = image
            end
            return newImageArray
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, self, "getImageArray", e)
            return originalImageArray
        end
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

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/image/opengles/ModifierOpenGLESImageProcessor"
require "org/allbinary/image/opengles/OpenGLESImage"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/eclipse/swt/graphics/ImageData"
require "org/microemu/device/swt/SwtImmutableImage"
require "org/microemu/device/swt/SwtMutableImage"
require "org/allbinary/media/image/ImageCopyUtil"

class ImageModifierUtil
    @@instance = ImageModifierUtil.new()
end

