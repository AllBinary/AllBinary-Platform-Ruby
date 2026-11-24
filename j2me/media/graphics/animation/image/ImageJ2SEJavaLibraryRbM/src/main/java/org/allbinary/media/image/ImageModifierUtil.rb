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

module ::Org; module Allbinary; module Media; module Image

class ImageModifierUtil
    attr_accessor :imageUtil, :colorArray

    def jfields_org_allbinary_media_image_ImageModifierUtil
        @imageUtil = ImageUtil.getInstance()
        @colorArray = (Array.new(1, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
    end

    def initialize
        jfields_org_allbinary_media_image_ImageModifierUtil
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
                image.getGraphics().drawImage(originalImage, 0, 0, ::Org::Allbinary::Graphics::Anchor::TOP_LEFT)
                newImageArray[index] = image
            end
            return newImageArray
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(commonStrings.EXCEPTION, self, "getImageArray", e)
            return originalImageArray
        end
    end
    

    def handleImage(imageArray, index, image)
    end
    

    def reset()
    end

    def self.instance()
        ImageModifierUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageModifierUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageModifierUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageModifierUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :ImageCreationUtil, "org/allbinary/media/image/ImageCreationUtil" unless const_defined?(:ImageCreationUtil, false)
autoload :ImageUtil, "org/allbinary/media/image/ImageUtil" unless const_defined?(:ImageUtil, false)

begin
    ImageModifierUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

