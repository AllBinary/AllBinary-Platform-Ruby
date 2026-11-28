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
    attr_accessor :playnUtil

    def jfields_org_allbinary_media_image_ImageScaleUtil
        @playnUtil = ::Playn::Html::HTMLPlaynUtil.getInstance()
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
        scaleX = scaleNominatorX / scaleDenominatorX
        scaleY = scaleNominatorY / scaleDenominatorY
        return self.createImage(imageCache, originalImage, scaleX, scaleY, cached)
    end
    

    # throws Exception
    def createImage(imageCache, originalImage, scaleX, scaleY, cached)
        return self.createImageInternal(originalImage, scaleX, scaleY)
    end
    

    # throws Exception
    def createImageInternal(originalImage, scaleX, scaleY)
        image = ImageCreationUtil.getInstance().createImageWH((((originalImage.getWidth() * scaleX)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }), (((originalImage.getHeight() * scaleY)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        if image.isMutable()
            originalPlayNImage = nil
            if originalImage.isMutable()
                originalHTMLImage = originalImage
                originalPlayNImage = originalHTMLImage.getImage()
            else
                originalHTMLImage = originalImage
                originalPlayNImage = originalHTMLImage.getImage()
            end
            htmlImage = image
            canvasImage = htmlImage.getImage()
            canvas = @playnUtil.getCanvas(canvasImage)
            canvas.drawScale(originalPlayNImage, 0, 0, image.getWidth(), image.getHeight(), 0, 0, originalImage.getWidth(), originalImage.getHeight())
            return image
        else
            raise StandardError.new("Not Mutable")
        end
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
module ::Org; module Allbinary; module Image; autoload :ImageCache, "org/allbinary/image/ImageCache" unless const_defined?(:ImageCache, false); end; end; end
module ::Org; module Microemu; module Device; module Playn; autoload :PlaynImmutableImage, "org/microemu/device/playn/PlaynImmutableImage" unless const_defined?(:PlaynImmutableImage, false); end; end; end; end
module ::Org; module Microemu; module Device; module Playn; autoload :PlaynMutableImage, "org/microemu/device/playn/PlaynMutableImage" unless const_defined?(:PlaynMutableImage, false); end; end; end; end
module ::Playn; module Core; autoload :Canvas, "playn/core/Canvas" unless const_defined?(:Canvas, false); end; end
module ::Playn; module Core; autoload :CoreImage, "playn/core/CoreImage" unless const_defined?(:CoreImage, false); end; end
module ::Playn; module Core; autoload :ImageImpl, "playn/core/ImageImpl" unless const_defined?(:ImageImpl, false); end; end
module ::Playn; module Html; autoload :HTMLPlaynUtil, "playn/html/HTMLPlaynUtil" unless const_defined?(:HTMLPlaynUtil, false); end; end
autoload :ImageCreationUtil, "org/allbinary/media/image/ImageCreationUtil" unless const_defined?(:ImageCreationUtil, false)

begin
    ImageScaleUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

