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


module ::Org; module Allbinary; module Media; module Image

class ImageSwtRotationUtil
    attr_accessor :logUtil, :commonStrings, :imageUtil, :gameFeatureFactory, :features, :NO_COPY

    def jfields_org_allbinary_media_image_ImageSwtRotationUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @imageUtil = ImageUtil.getInstance()
        @gameFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance()
        @features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        @NO_COPY = "SWT should not copy images after initial loading as the alpha is not honored"
    end
    

    def self.getInstance()
        return ImageSwtRotationUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_media_image_ImageSwtRotationUtil
    end
    

    def getRotatedImage(bufferedImage, totalAngle)
        if !@features.isFeature(@gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.putF(@NO_COPY, self, @commonStrings.CONSTRUCTOR)
            return bufferedImage
        end
        return bufferedImage
    end
    

    def getRotatedImage2(bufferedImage, newBufferedImage, gc, angle)
        if !@features.isFeature(@gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.putF(@NO_COPY, self, @commonStrings.CONSTRUCTOR)
            return bufferedImage
        end
        return bufferedImage
    end
    

    def rotateImage(originalSwtImage, newSwtImage, gc, totalAngle)
        return self.getRotatedImage2(originalSwtImage, newSwtImage, gc, totalAngle)
    end
    

    def getRotatedImageSWT(bufferedImage, newSwtImage, gc, totalAngle)
        return self.getRotatedImage2(bufferedImage, newSwtImage, gc, totalAngle)
    end
    

    def getRotatedImages(bufferedImage, numberOfFrames, totalAngle)
        bufferedImageArray = Array.new(numberOfFrames, nil)
        angle = 0
        size = bufferedImageArray.length
        (0...size).each do |index|
            angle = (totalAngle / size) * index
            bufferedImageArray[index] = self.getRotatedImage(bufferedImage, angle)
        end
        return bufferedImageArray
    end
    

    def createSpriteImage(bufferedImageArray)
        columns = 9
        rows = 0
        size = bufferedImageArray.length
        if size < columns
            columns = size
        end
        rows = (size / columns)
        if size % columns != 0
            rows += 1
        end
        firstBufferedImage = bufferedImageArray[0]
        imageData = firstBufferedImage.getImageData()
        bufferedImage = @imageUtil.create(imageData.width * columns, imageData.height * rows)
        gc = ::Org::Eclipse::Swt::Graphics::JavaGC.new(bufferedImage)
        gc.setAntialias(::Org::Eclipse::Swt::SWT::ON)
        gc.setInterpolation(::Org::Eclipse::Swt::SWT::HIGH)
        columnIndex = 0
        rowIndex = 0
        nextBufferedImage = nil
        (0...size).each do |index|
            if index / 9 != 0 && index % 9 == 0
                rowIndex += 1
                columnIndex = 0
            end
            nextBufferedImage = bufferedImageArray[index]
            imageData = nextBufferedImage.getImageData()
            gc.drawImage(bufferedImage, 0, 0, bufferedImage.getBounds().width, bufferedImage.getBounds().height, imageData.width * columnIndex, imageData.height * rowIndex, imageData.width, imageData.height)
            columnIndex += 1
        end
        gc.dispose()
        return bufferedImage
    end

    def self.instance()
        ImageSwtRotationUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageSwtRotationUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageSwtRotationUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageSwtRotationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory" unless const_defined?(:GameFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Eclipse; module Swt; autoload :SWT, "org/eclipse/swt/SWT" unless const_defined?(:SWT, false); end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :JavaGC, "org/eclipse/swt/graphics/JavaGC" unless const_defined?(:JavaGC, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :ImageData, "org/eclipse/swt/graphics/ImageData" unless const_defined?(:ImageData, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
autoload :ImageUtil, "org/allbinary/media/image/ImageUtil" unless const_defined?(:ImageUtil, false)

begin
    ImageSwtRotationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

