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

class ImageScaleUtil
    attr_accessor :logUtil, :commonStrings, :anchor, :imageBasicArrayList, :scaledImageBasicArrayList, :scaleXBasicArrayList, :scaleYBasicArrayList

    def jfields_org_allbinary_media_image_ImageScaleUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
        @imageBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @scaledImageBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @scaleXBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @scaleYBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def self.getInstance()
        return ImageScaleUtil.instance
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
        scaleX = scaleNominatorX / scaleDenominatorX
        scaleY = scaleNominatorY / scaleDenominatorY
        return self.createImage(imageCache, originalImage, scaleX, scaleY, cached)
    end
    

    # throws Exception
    def createImage(imageCache, originalImage, scaleX, scaleY, cached)
        originalAndroidImage = originalImage
        originalBitmap = originalAndroidImage.getBitmap()
        width = (((originalBitmap.getWidth() * scaleX)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        height = (((originalBitmap.getHeight() * scaleY)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        index = @imageBasicArrayList.indexOf(originalImage)
        alreadyAvailable = false
        if index >= 0
            scaleX2Float = @scaleXBasicArrayList.get(index)
            scaleX2 = scaleX2Float.to_f
            scaleY2Float = @scaleYBasicArrayList.get(index)
            scaleY2 = scaleY2Float.to_f
            if scaleX2 == scaleX && scaleY2 == scaleY
                alreadyAvailable = true
            end
        end
        if alreadyAvailable
            return @scaledImageBasicArrayList.get(index)
        else
            scaledImage = self.getScaledImage(imageCache, originalImage, scaleX, scaleY, width, height, cached)
            @imageBasicArrayList.add(originalImage)
            @scaledImageBasicArrayList.add(scaledImage)
            @scaleXBasicArrayList.add(scaleX)
            @scaleYBasicArrayList.add(scaleY)
            return scaledImage
        end
    end
    

    # throws Exception
    def getScaledImage(imageCache, originalImage, scaleX, scaleY, width, height, cached)
        image = ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
        if cached
            image = imageCache.get(self.class.java_name, width, height)
        else
            image = imageCache.get(@commonStrings.CREATE_IMAGE, width, height)
        end
        if image.isMutable()
            matrix = ::Android::Graphics::Matrix.new()
            self.scale(image, matrix, scaleX, scaleY)
            image.getGraphics().drawImage(originalImage, 0, 0, @anchor)
            return image
        else
            raise StandardError.new("Not Mutable")
        end
    end
    

    def scale(image, matrix, scaleX, scaleY)
        matrix.setScale(scaleX, scaleY)
        canvas = (image).getCanvas()
        canvas.concat(matrix)
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

module ::Android; module Graphics; autoload :Bitmap, "android/graphics/Bitmap" unless const_defined?(:Bitmap, false); end; end
module ::Android; module Graphics; autoload :Canvas, "android/graphics/Canvas" unless const_defined?(:Canvas, false); end; end
module ::Android; module Graphics; autoload :Matrix, "android/graphics/Matrix" unless const_defined?(:Matrix, false); end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCache, "org/allbinary/image/ImageCache" unless const_defined?(:ImageCache, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Microemu; module Android; module Device; autoload :AndroidImageInterface, "org/microemu/android/device/AndroidImageInterface" unless const_defined?(:AndroidImageInterface, false); end; end; end; end

begin
    ImageScaleUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

