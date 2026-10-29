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

# require "java/awt/image/BufferedImage"
# require "java/awt/image/ColorModel"
# require "java/awt/image/WritableRaster"
# require "javax/microedition/lcdui/Image"

class ImageModifierUtil
    attr_accessor :imageUtil, :colorArray

    def initialize_fields
        @imageUtil = ImageUtil.getInstance()
        @colorArray = Array.new(1, 0)
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
        newBufferedImage = @imageUtil.getBufferedImage(image)
        r = basicColor.red
        g = basicColor.green
        b = basicColor.blue
        width = image.getWidth()
        height = image.getHeight()
        colorModel = nil
        dataElements = nil
        ax = 0
        rx = 0
        gx = 0
        bx = 0
        (0...width).each do |index|
            (0...height).each do |index2|
                colorModel = newBufferedImage.getColorModel()
                dataElements = newBufferedImage.getRaster().getDataElements(index, index2, nil)
                ax = colorModel.getAlpha(dataElements)
                rx = colorModel.getRed(dataElements)
                gx = colorModel.getGreen(dataElements)
                bx = colorModel.getBlue(dataElements)
                if rx != 0 || gx != 0 || bx != 0
                    newBufferedImage.setRGB(index, index2, (ax << 24) | (r << 16) | (g << 8) | (b))
                end
            end
        end
    end
    

    def changeColor(unusedOriginalImage, image, imageIndex, basicColor)
        newBufferedImage = @imageUtil.getBufferedImage(image)
        _MAX = 255.0
        r = ((basicColor.red).to_f) / _MAX
        g = ((basicColor.green).to_f) / _MAX
        b = ((basicColor.blue).to_f) / _MAX
        width = image.getWidth()
        height = image.getHeight()
        colorModel = nil
        dataElements = nil
        ax = 0
        rx = 0
        gx = 0
        bx = 0
        (0...width).each do |index|
            (0...height).each do |index2|
                colorModel = newBufferedImage.getColorModel()
                dataElements = newBufferedImage.getRaster().getDataElements(index, index2, nil)
                ax = colorModel.getAlpha(dataElements)
                rx = colorModel.getRed(dataElements)
                gx = colorModel.getGreen(dataElements)
                bx = colorModel.getBlue(dataElements)
                rx = (rx * r).to_i
                gx = (gx * g).to_i
                bx = (bx * b).to_i
                newBufferedImage.setRGB(index, index2, (ax << 24) | (rx << 16) | (gx << 8) | (bx))
            end
        end
    end
    

    def setAlpha(unusedOriginalImage, image, imageIndex, alphaInt)
        alpha = (((alphaInt).to_i + 128) % 256 - 128)
        newBufferedImage = @imageUtil.getBufferedImage(image)
        width = image.getWidth()
        height = image.getHeight()
        raster = newBufferedImage.getAlphaRaster()
        (0...width).each do |index|
            (0...height).each do |index2|
                raster.getPixel(index, index2, @colorArray)
                @colorArray[0] = alpha & @colorArray[0]
                raster.setPixel(index, index2, @colorArray)
            end
        end
    end
    

    def getImageArray(originalImageArray)
        begin
            newImageArray = Array.new(originalImageArray.length, nil)
            size = newImageArray.length
            originalImage = nil
            (0...size).each do |index|
                originalImage = originalImageArray[index]
                image = ImageCreationUtil.getInstance().createImageWH(originalImage.getWidth(), originalImage.getHeight())
                image.getGraphics().drawImage(originalImage, 0, 0, Anchor::TOP_LEFT)
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

require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/image/ImageCreationUtil"
require "org/allbinary/media/image/ImageUtil"

class ImageModifierUtil
    @@instance = ImageModifierUtil.new()
end

