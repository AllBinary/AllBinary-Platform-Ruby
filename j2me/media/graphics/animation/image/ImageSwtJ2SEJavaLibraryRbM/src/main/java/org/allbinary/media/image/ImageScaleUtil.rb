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
    attr_accessor :logUtil, :commonStrings, :imageCopyUtil, :gameFeatureFactory, :features, :NO_COPY

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @imageCopyUtil = ImageCopyUtil.getInstance()
        @gameFeatureFactory = GameFeatureFactory.getInstance()
        @features = Features.getInstance()
        @NO_COPY = "SWT should not copy images after initial loading as the alpha is not honored"
    end
    

    def self.getInstance()
        return ImageScaleUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def createImage2(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached)
        return self.createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true)
    end
    

    # throws Exception
    def createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, mutable)
        if !@features.isFeature(@gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.putF(@NO_COPY, self, @commonStrings.CONSTRUCTOR)
            return originalImage
        end
        width = originalImage.getWidth()
        height = originalImage.getHeight()
        scaleX = scaleNominatorX / scaleDenominatorX
        scaleY = scaleNominatorY / scaleDenominatorY
        scaledImage = @imageCopyUtil.createImageWH(originalImage, ((scaleX * (width).to_f)).to_i, ((scaleY * (height).to_f)).to_i, mutable)
        return scaledImage
    end
    

    # throws Exception
    def scale2(originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY)
        self.scale(originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY, true)
    end
    

    # throws Exception
    def scale(originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY, mutable)
        width = originalImage.getWidth()
        height = originalImage.getHeight()
        scaledImage = @imageCopyUtil.createImageWH(originalImage, ((scaleX * (width).to_f)).to_i, ((scaleY * (height).to_f)).to_i, mutable)
        originalImageArray[0] = scaledImage
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
require "org/allbinary/image/ImageCache"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/image/ImageCopyUtil"

class ImageScaleUtil
    @@instance = ImageScaleUtil.new()
end

