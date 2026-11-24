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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Media; module Image

class ImageCopyUtil
    attr_accessor :logUtil, :commonStrings, :gameFeatureFactory, :features, :openGLFeatureFactory, :openGLUtil, :openGLESImageExclusionUtil, :NO_COPY, :UNABLE, :INFORMATION, :LEADERBOARD

    def jfields_org_allbinary_media_image_ImageCopyUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @gameFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance()
        @features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        @openGLFeatureFactory = ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance()
        @openGLUtil = ::Org::Allbinary::Graphics::Opengles::OpenGLUtil.getInstance()
        @openGLESImageExclusionUtil = ::Org::Allbinary::Image::Opengles::OpenGLESImageExclusionUtil.getInstance()
        @NO_COPY = "SWT should not copy images after initial loading as the alpha is not honored"
        @UNABLE = "Unable to scale image without dimensions"
        @INFORMATION = "about_"
        @LEADERBOARD = "leaderboard"
    end
    

    def self.getInstance()
        return ImageCopyUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_media_image_ImageCopyUtil
    end
    

    # throws Exception
    def createImageForRotation(originalImage)
        if @features.isFeature(@openGLFeatureFactory.OPENGL)
            image = originalImage
            image = SwtOpenGLESImageBridge.addImage(@openGLUtil, image)
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
            if originalImage.getType() >= ::Org::Allbinary::Image::Opengles::OpenGLESImage::TYPE
                openGLESImage = SwtOpenGLESImageBridge.getOpenGLESImage(originalImage)
                originalImage2 = SwtOpenGLESImageBridge.getBitmapImage(openGLESImage)
            end
        end
        image = nil
        if originalImage2.isMutable()
            originalMutableImage = originalImage2
            image = ::Org::Microemu::Device::Swt::SwtMutableImage.new(::Org::Microemu::App::Ui::Swt::SwtDeviceComponent.createImage(originalMutableImage.image.getImageData()))
        else
            originalImmutableImage = originalImage2
            image = ::Org::Microemu::Device::Swt::SwtMutableImage.new(::Org::Microemu::App::Ui::Swt::SwtDeviceComponent.createImage(originalImmutableImage.image.getImageData()))
        end
        image = SwtOpenGLESImageBridge.addImage(@openGLUtil, image)
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
            if SwtOpenGLESImageBridge.isCustomScaling(@openGLESImageExclusionUtil, originalImage)
                return self.createImage2(originalImage, width, height, mutable)
            end
            if originalImage.getType() >= ::Org::Allbinary::Image::Opengles::OpenGLESImage::TYPE
                openGLESImage = SwtOpenGLESImageBridge.getOpenGLESImage(originalImage)
                originalImage2 = SwtOpenGLESImageBridge.getBitmapImage(openGLESImage)
            end
        end
        image = nil
        if originalImage2.isMutable() && mutable
            originalMutableImage = originalImage2
            if originalMutableImage.getImage() != nil
                imageData2 = originalMutableImage.image.getImageData()
                imageData = imageData2.scaledTo(width, height)
                image = ::Org::Microemu::Device::Swt::SwtMutableImage.new(::Org::Microemu::App::Ui::Swt::SwtDeviceComponent.createImage(imageData))
            else
                image = ::Org::Microemu::Device::Swt::SwtMutableImage.new(originalMutableImage.getName(), ::Org::Microemu::Device::Swt::PostLoadSwtMutableImageProcessor.new(originalMutableImage))
            end
        else
            originalImmutableImage = originalImage2
            if originalImmutableImage.getImage() != nil
                imageData2 = originalImmutableImage.image.getImageData()
                if width > 0 && height > 0
                    imageData = imageData2.scaledTo(width, height)
                    image = ::Org::Microemu::Device::Swt::SwtImmutableImage.new(originalImage.getName(), ::Org::Microemu::App::Ui::Swt::SwtDeviceComponent.createImage(imageData))
                else
                    @logUtil.putF(@UNABLE, self, @commonStrings.CONSTRUCTOR)
                    image = ::Org::Microemu::Device::Swt::SwtImmutableImage.new(originalImmutableImage.getName(), ::Org::Microemu::Device::Swt::PostLoadSwtImmutableImageProcessor.new(originalImmutableImage))
                end
            else
                image = ::Org::Microemu::Device::Swt::SwtImmutableImage.new(originalImmutableImage.getName(), ::Org::Microemu::Device::Swt::PostLoadSwtImmutableImageProcessor.new(originalImmutableImage))
            end
        end
        image = SwtOpenGLESImageBridge.addImage(@openGLUtil, image)
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
            displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
            if originalImage.getType() >= ::Org::Allbinary::Image::Opengles::OpenGLESImage::TYPE
                openGLESImage = SwtOpenGLESImageBridge.getOpenGLESImage(originalImage)
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
                image = SwtOpenGLESImageBridge.asImage(openGLESImage)
            else
                image = originalImage
                openGLESImage = SwtOpenGLESImageBridge.getOpenGLESImage(SwtOpenGLESImageBridge.addImage(@openGLUtil, image))
                openGLESImageProperties = openGLESImage.openGLESImageProperties
                openGLESImageProperties.scaleX2 = ((((width).to_f) / openGLESImage.getWidth())).to_f
                openGLESImageProperties.scaleX = openGLESImageProperties.scaleX2
                openGLESImageProperties.scaleY2 = ((((height).to_f) / openGLESImage.getHeight())).to_f
                openGLESImageProperties.scaleY = openGLESImageProperties.scaleY2
                if image.getName().startsWith(@INFORMATION)
                    openGLESImage.openGLESImageTranslate = ::Org::Allbinary::Image::Opengles::OpenGLESDeviceImageTranslate.new()
                    openGLESDeviceImageTranslate = openGLESImage.openGLESImageTranslate
                    openGLESDeviceImageTranslate.translateX = displayInfoSingleton.getLastWidth() / 1.4 / openGLESImageProperties.scaleX
                    openGLESDeviceImageTranslate.translateY = displayInfoSingleton.getLastHeight() / 4 / openGLESImageProperties.scaleY
                    openGLESImageProperties.scaleX = openGLESImageProperties.scaleX * 0.25
                    openGLESImageProperties.scaleY = openGLESImageProperties.scaleY * 0.25
                else
                    openGLESImageProperties.scaleX = openGLESImageProperties.scaleX * 0.75
                    openGLESImageProperties.scaleY = openGLESImageProperties.scaleY * 0.75
                    if image.getName().startsWith(@LEADERBOARD)
                        openGLESImage.openGLESImageTranslate = ::Org::Allbinary::Image::Opengles::OpenGLESDeviceImageTranslate.new()
                        openGLESDeviceImageTranslate = openGLESImage.openGLESImageTranslate
                        openGLESDeviceImageTranslate.translateX = -displayInfoSingleton.getLastWidth() / 40 / openGLESImageProperties.scaleX
                    end
                    if image.getName().startsWith(@LEADERBOARD)
                    else
                        openGLESImageProperties.scaleX = 1.0
                        openGLESImageProperties.scaleY = 1.0
                    end
                end
                image = SwtOpenGLESImageBridge.asImage(openGLESImage)
            end
        else
            if originalImage2.isMutable() && mutable
                originalMutableImage = originalImage2
                if originalMutableImage.getImage() != nil
                    imageData2 = originalMutableImage.image.getImageData()
                    imageData = imageData2.scaledTo(width, height)
                    image = ::Org::Microemu::Device::Swt::SwtMutableImage.new(::Org::Microemu::App::Ui::Swt::SwtDeviceComponent.createImage(imageData))
                else
                    image = ::Org::Microemu::Device::Swt::SwtMutableImage.new(originalMutableImage.getName(), ::Org::Microemu::Device::Swt::PostLoadSwtMutableImageProcessor.new(originalMutableImage))
                end
            else
                originalImmutableImage = originalImage2
                if originalImmutableImage.getImage() != nil
                    imageData2 = originalImmutableImage.image.getImageData()
                    imageData = imageData2.scaledTo(width, height)
                    image = ::Org::Microemu::Device::Swt::SwtImmutableImage.new(originalImage.getName(), ::Org::Microemu::App::Ui::Swt::SwtDeviceComponent.createImage(imageData))
                else
                    image = ::Org::Microemu::Device::Swt::SwtImmutableImage.new(originalImmutableImage.getName(), ::Org::Microemu::Device::Swt::PostLoadSwtImmutableImageProcessor.new(originalImmutableImage))
                end
            end
            image = SwtOpenGLESImageBridge.addImage(@openGLUtil, image)
        end
        return image
    end
    

    # throws Exception
    def createImageScale(originalImage, canvasScale, resize)
        if !@features.isFeature(@gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.putF(@NO_COPY, self, @commonStrings.CONSTRUCTOR)
            return originalImage
        end
        newWidth = (((originalImage.getWidth() * canvasScale)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        newHeight = (((originalImage.getHeight() * canvasScale)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
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
            originalPixelArray = (Array.new(originalImage.getWidth() * originalImage.getHeight(), 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
            newPixelArray = (Array.new(image.getWidth() * image.getHeight(), 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
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
            originalPixelArray = (Array.new(originalImage.getWidth() * originalImage.getHeight(), 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
            newPixelArray = (Array.new(image.getWidth() * image.getHeight(), 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
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
        ImageCopyUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageCopyUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageCopyUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageCopyUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory" unless const_defined?(:GameFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLUtil, "org/allbinary/graphics/opengles/OpenGLUtil" unless const_defined?(:OpenGLUtil, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESDeviceImageTranslate, "org/allbinary/image/opengles/OpenGLESDeviceImageTranslate" unless const_defined?(:OpenGLESDeviceImageTranslate, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage" unless const_defined?(:OpenGLESImage, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESImageExclusionUtil, "org/allbinary/image/opengles/OpenGLESImageExclusionUtil" unless const_defined?(:OpenGLESImageExclusionUtil, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESImageProperties, "org/allbinary/image/opengles/OpenGLESImageProperties" unless const_defined?(:OpenGLESImageProperties, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :ImageData, "org/eclipse/swt/graphics/ImageData" unless const_defined?(:ImageData, false); end; end; end; end
module ::Org; module Microemu; module App; module Ui; module Swt; autoload :SwtDeviceComponent, "org/microemu/app/ui/swt/SwtDeviceComponent" unless const_defined?(:SwtDeviceComponent, false); end; end; end; end; end
module ::Org; module Microemu; module Device; module Swt; autoload :PostLoadSwtImmutableImageProcessor, "org/microemu/device/swt/PostLoadSwtImmutableImageProcessor" unless const_defined?(:PostLoadSwtImmutableImageProcessor, false); end; end; end; end
module ::Org; module Microemu; module Device; module Swt; autoload :PostLoadSwtMutableImageProcessor, "org/microemu/device/swt/PostLoadSwtMutableImageProcessor" unless const_defined?(:PostLoadSwtMutableImageProcessor, false); end; end; end; end
module ::Org; module Microemu; module Device; module Swt; autoload :SwtImmutableImage, "org/microemu/device/swt/SwtImmutableImage" unless const_defined?(:SwtImmutableImage, false); end; end; end; end
module ::Org; module Microemu; module Device; module Swt; autoload :SwtMutableImage, "org/microemu/device/swt/SwtMutableImage" unless const_defined?(:SwtMutableImage, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end

begin
    ImageCopyUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

