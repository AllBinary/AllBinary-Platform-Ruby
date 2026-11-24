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


module ::Org; module Allbinary; module Media; module Image

class ImageModifierUtil
    attr_accessor :logUtil, :imageCopyUtil, :features

    def jfields_org_allbinary_media_image_ImageModifierUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @imageCopyUtil = ImageCopyUtil.getInstance()
        @features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
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
        if @features.isFeature(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL)
            if image.getType() >= ::Org::Allbinary::Image::Opengles::OpenGLESImage::TYPE
                openGLESImage = SwtOpenGLESImageBridge.getOpenGLESImage(image)
                openGLESImage.imageProcessor = ::Org::Allbinary::Image::Opengles::ModifierOpenGLESImageProcessor.getInstance()
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
        if @features.isFeature(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL)
            if image.getType() >= ::Org::Allbinary::Image::Opengles::OpenGLESImage::TYPE
                openGLESImage = SwtOpenGLESImageBridge.getOpenGLESImage(image)
                openGLESImage.imageProcessor = ::Org::Allbinary::Image::Opengles::ModifierOpenGLESImageProcessor.getInstance()
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
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :ModifierOpenGLESImageProcessor, "org/allbinary/image/opengles/ModifierOpenGLESImageProcessor" unless const_defined?(:ModifierOpenGLESImageProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage" unless const_defined?(:OpenGLESImage, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :ImageData, "org/eclipse/swt/graphics/ImageData" unless const_defined?(:ImageData, false); end; end; end; end
module ::Org; module Microemu; module Device; module Swt; autoload :SwtImmutableImage, "org/microemu/device/swt/SwtImmutableImage" unless const_defined?(:SwtImmutableImage, false); end; end; end; end
module ::Org; module Microemu; module Device; module Swt; autoload :SwtMutableImage, "org/microemu/device/swt/SwtMutableImage" unless const_defined?(:SwtMutableImage, false); end; end; end; end
autoload :ImageCopyUtil, "org/allbinary/media/image/ImageCopyUtil" unless const_defined?(:ImageCopyUtil, false)
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end

begin
    ImageModifierUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

