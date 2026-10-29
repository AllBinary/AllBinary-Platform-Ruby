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

class ImageCopyUtil
    attr_accessor :logUtil, :commonStrings, :gameFeatureFactory, :features, :openGLFeatureFactory, :openGLUtil, :openGLESImageExclusionUtil, :NO_COPY, :UNABLE, :INFORMATION, :LEADERBOARD

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @gameFeatureFactory = GameFeatureFactory.getInstance()
        @features = Features.getInstance()
        @openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        @openGLUtil = OpenGLUtil.getInstance()
        @openGLESImageExclusionUtil = OpenGLESImageExclusionUtil.getInstance()
        @NO_COPY = "SWT should not copy images after initial loading as the alpha is not honored"
        @UNABLE = "Unable to scale image without dimensions"
        @INFORMATION = "about_"
        @LEADERBOARD = "leaderboard"
    end
    

    def self.getInstance()
        return ImageCopyUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def createImageForRotation(originalImage)
        if @features.isFeature(@openGLFeatureFactory.OPENGL)
            image = originalImage
            image = @openGLUtil.addImage(image)
            return image
        else
            return self.createImage(originalImage)
        end
    end
    

    # throws Exception
    def createImage(originalImage)
        if !@features.isFeature(@gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.putF(@NO_COPY, self, @commonStrings.CONSTRUCTOR)
            return originalImage
        end
        originalImage2 = originalImage
        if @features.isFeature(@openGLFeatureFactory.OPENGL)
            if originalImage.getType() >= OpenGLESImage::TYPE
                openGLESImage = (originalImage)
                originalImage2 = openGLESImage.openGLBitmap.getImage()
            end
        end
        image = nil
        if originalImage2.isMutable()
            originalMutableImage = originalImage2
            image = SwtMutableImage.new(SwtDeviceComponent.createImage(originalMutableImage.image.getImageData()))
        else
            originalImmutableImage = originalImage2
            image = SwtMutableImage.new(SwtDeviceComponent.createImage(originalImmutableImage.image.getImageData()))
        end
        image = @openGLUtil.addImage(image)
        return image
    end
    

    # throws Exception
    def createImageWH(originalImage, width, height, mutable)
        originalImage2 = originalImage
        if !@features.isFeature(@gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.putF(@NO_COPY, self, @commonStrings.CONSTRUCTOR)
            return originalImage
        end
        if @features.isFeature(@openGLFeatureFactory.OPENGL)
            if @openGLESImageExclusionUtil.isCustomScaling(originalImage)
                return self.createImage2(originalImage, width, height, mutable)
            end
            if originalImage.getType() >= OpenGLESImage::TYPE
                openGLESImage = (originalImage)
                originalImage2 = openGLESImage.openGLBitmap.getImage()
            end
        end
        image = nil
        if originalImage2.isMutable() && mutable
            originalMutableImage = originalImage2
            if originalMutableImage.getImage() != nil
                imageData2 = originalMutableImage.image.getImageData()
                imageData = imageData2.scaledTo(width, height)
                image = SwtMutableImage.new(SwtDeviceComponent.createImage(imageData))
            else
                image = SwtMutableImage.new(originalMutableImage.getName(), PostLoadSwtMutableImageProcessor.new(originalMutableImage))
            end
        else
            originalImmutableImage = originalImage2
            if originalImmutableImage.getImage() != nil
                imageData2 = originalImmutableImage.image.getImageData()
                if width > 0 && height > 0
                    imageData = imageData2.scaledTo(width, height)
                    image = SwtImmutableImage.new(originalImage.getName(), SwtDeviceComponent.createImage(imageData))
                else
                    @logUtil.putF(@UNABLE, self, @commonStrings.CONSTRUCTOR)
                    image = SwtImmutableImage.new(originalImmutableImage.getName(), PostLoadSwtImmutableImageProcessor.new(originalImmutableImage))
                end
            else
                image = SwtImmutableImage.new(originalImmutableImage.getName(), PostLoadSwtImmutableImageProcessor.new(originalImmutableImage))
            end
        end
        image = @openGLUtil.addImage(image)
        return image
    end
    

    # throws Exception
    def createImage2(originalImage, width, height, mutable)
        originalImage2 = originalImage
        if !@features.isFeature(@gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.putF(@NO_COPY, self, @commonStrings.CONSTRUCTOR)
            return originalImage
        end
        image = nil
        if @features.isFeature(@openGLFeatureFactory.OPENGL)
            displayInfoSingleton = DisplayInfoSingleton.getInstance()
            if originalImage.getType() >= OpenGLESImage::TYPE
                openGLESImage = (originalImage)
                openGLESImageProperties = openGLESImage.openGLESImageProperties
                openGLWidth = openGLESImage.openGLBitmap.getWidth()
                openGLHeight = openGLESImage.openGLBitmap.getHeight()
                openGLESImageProperties.scaleX2 = (((width).to_f) / (openGLWidth).to_f)
                openGLESImageProperties.scaleX = openGLESImageProperties.scaleX2
                openGLESImageProperties.scaleY2 = (((height).to_f) / (openGLHeight).to_f)
                openGLESImageProperties.scaleY = openGLESImageProperties.scaleY2
                openGLESImageProperties.scaleX = openGLESImageProperties.scaleX * 0.75
                openGLESImageProperties.scaleY = openGLESImageProperties.scaleY * 0.75
                if originalImage.getHeight() % 2 != 0
                    openGLESImageProperties.scaleX2 += 1.0 / (openGLWidth).to_f
                    openGLESImageProperties.scaleY2 += 1.0 / (openGLHeight).to_f
                end
                image = openGLESImage
            else
                image = originalImage
                openGLESImage = @openGLUtil.addImage(image)
                openGLESImageProperties = openGLESImage.openGLESImageProperties
                openGLESImageProperties.scaleX2 = ((((width).to_f) / openGLESImage.getWidth())).to_f
                openGLESImageProperties.scaleX = openGLESImageProperties.scaleX2
                openGLESImageProperties.scaleY2 = ((((height).to_f) / openGLESImage.getHeight())).to_f
                openGLESImageProperties.scaleY = openGLESImageProperties.scaleY2
                if image.getName().startsWith(@INFORMATION)
                    openGLESImage.openGLESImageTranslate = OpenGLESDeviceImageTranslate.new()
                    openGLESDeviceImageTranslate = openGLESImage.openGLESImageTranslate
                    openGLESDeviceImageTranslate.translateX = displayInfoSingleton.getLastWidth() / 1.4 / openGLESImageProperties.scaleX
                    openGLESDeviceImageTranslate.translateY = displayInfoSingleton.getLastHeight() / 4 / openGLESImageProperties.scaleY
                    openGLESImageProperties.scaleX = openGLESImageProperties.scaleX * 0.25
                    openGLESImageProperties.scaleY = openGLESImageProperties.scaleY * 0.25
                else
                    openGLESImageProperties.scaleX = openGLESImageProperties.scaleX * 0.75
                    openGLESImageProperties.scaleY = openGLESImageProperties.scaleY * 0.75
                    if image.getName().startsWith(@LEADERBOARD)
                        openGLESImage.openGLESImageTranslate = OpenGLESDeviceImageTranslate.new()
                        openGLESDeviceImageTranslate = openGLESImage.openGLESImageTranslate
                        openGLESDeviceImageTranslate.translateX = -displayInfoSingleton.getLastWidth() / 40 / openGLESImageProperties.scaleX
                    end
                    if image.getName().startsWith(@LEADERBOARD)
                    else
                        openGLESImageProperties.scaleX = 1.0
                        openGLESImageProperties.scaleY = 1.0
                    end
                end
                image = openGLESImage
            end
        else
            if originalImage2.isMutable() && mutable
                originalMutableImage = originalImage2
                if originalMutableImage.getImage() != nil
                    imageData2 = originalMutableImage.image.getImageData()
                    imageData = imageData2.scaledTo(width, height)
                    image = SwtMutableImage.new(SwtDeviceComponent.createImage(imageData))
                else
                    image = SwtMutableImage.new(originalMutableImage.getName(), PostLoadSwtMutableImageProcessor.new(originalMutableImage))
                end
            else
                originalImmutableImage = originalImage2
                if originalImmutableImage.getImage() != nil
                    imageData2 = originalImmutableImage.image.getImageData()
                    imageData = imageData2.scaledTo(width, height)
                    image = SwtImmutableImage.new(originalImage.getName(), SwtDeviceComponent.createImage(imageData))
                else
                    image = SwtImmutableImage.new(originalImmutableImage.getName(), PostLoadSwtImmutableImageProcessor.new(originalImmutableImage))
                end
            end
            image = @openGLUtil.addImage(image)
        end
        return image
    end
    

    # throws Exception
    def createImageScale(originalImage, canvasScale, resize)
        if !@features.isFeature(@gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.putF(@NO_COPY, self, @commonStrings.CONSTRUCTOR)
            return originalImage
        end
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
        image = self.createImageWH(originalImage, newWidth, newHeight, true)
        if image.isMutable()
            originalImageData = (originalImage.getImage()).getImageData()
            mutableImage2 = image
            halfWidthDelta = (newWidth - originalImage.getWidth()) / 2
            halfHeightDelta = (newHeight - originalImage.getHeight()) / 2
            originalPixelArray = Array.new(originalImage.getWidth() * originalImage.getHeight(), 0)
            newPixelArray = Array.new(image.getWidth() * image.getHeight(), 0)
            width = originalImage.getWidth()
            height = originalImage.getHeight()
            (0...height).each do |i|
                originalImageData.getPixels(0, i, width, originalPixelArray, (i * width))
            end
            (halfWidthDelta...width).each do |index|
                (halfHeightDelta...height).each do |index2|
                    newPixelArray[index + (index2 * width)] = originalPixelArray[(index - halfWidthDelta) + ((index2 - halfHeightDelta) * width)]
                end
            end
            (mutableImage2.getImage()).getImageData().setPixels(0, 0, image.getWidth(), newPixelArray, 0)
            return image
        else
            originalImmutableImage = image
            originalImageData = (originalImage.getImage()).getImageData()
            halfWidthDelta = (newWidth - originalImage.getWidth()) / 2
            halfHeightDelta = (newHeight - originalImage.getHeight()) / 2
            originalPixelArray = Array.new(originalImage.getWidth() * originalImage.getHeight(), 0)
            newPixelArray = Array.new(image.getWidth() * image.getHeight(), 0)
            width = originalImage.getWidth()
            height = originalImage.getHeight()
            (0...height).each do |i|
                originalImageData.getPixels(0, i, width, originalPixelArray, (i * width))
            end
            (halfWidthDelta...width).each do |index|
                (halfHeightDelta...height).each do |index2|
                    newPixelArray[index + (index2 * width)] = originalPixelArray[(index - halfWidthDelta) + ((index2 - halfHeightDelta) * width)]
                end
            end
            (originalImmutableImage.getImage()).getImageData().setPixels(0, 0, image.getWidth(), newPixelArray, 0)
            return image
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureFactory"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/graphics/opengles/OpenGLUtil"
require "org/allbinary/image/opengles/OpenGLESDeviceImageTranslate"
require "org/allbinary/image/opengles/OpenGLESImage"
require "org/allbinary/image/opengles/OpenGLESImageExclusionUtil"
require "org/allbinary/image/opengles/OpenGLESImageProperties"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/eclipse/swt/graphics/ImageData"
require "org/microemu/app/ui/swt/SwtDeviceComponent"
require "org/microemu/device/swt/PostLoadSwtImmutableImageProcessor"
require "org/microemu/device/swt/PostLoadSwtMutableImageProcessor"
require "org/microemu/device/swt/SwtImmutableImage"
require "org/microemu/device/swt/SwtMutableImage"

class ImageCopyUtil
    @@instance = ImageCopyUtil.new()
end

