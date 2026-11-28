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

class ImageScaleUtil
    attr_accessor :logUtil, :commonStrings, :imageCopyUtil, :gameFeatureFactory, :features, :NO_COPY

    def jfields_org_allbinary_media_image_ImageScaleUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @imageCopyUtil = ImageCopyUtil.getInstance()
        @gameFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance()
        @features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        @NO_COPY = "SWT should not copy images after initial loading as the alpha is not honored"
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_media_image_ImageScaleUtil
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
        ImageScaleUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageScaleUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageScaleUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageScaleUtil"
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
module ::Org; module Allbinary; module Image; autoload :ImageCache, "org/allbinary/image/ImageCache" unless const_defined?(:ImageCache, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :ImageCopyUtil, "org/allbinary/media/image/ImageCopyUtil" unless const_defined?(:ImageCopyUtil, false)

begin
    ImageScaleUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

