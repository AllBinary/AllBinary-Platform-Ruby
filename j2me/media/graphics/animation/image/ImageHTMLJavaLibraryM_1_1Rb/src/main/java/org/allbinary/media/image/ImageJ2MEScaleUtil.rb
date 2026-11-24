#
# AllBinary Open License Version 1
# Copyright (c) 2023 AllBinary
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

class ImageJ2MEScaleUtil
    attr_accessor :logUtil

    def jfields_org_allbinary_media_image_ImageJ2MEScaleUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return ImageJ2MEScaleUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_media_image_ImageJ2MEScaleUtil
    end
    

    # throws Exception
    def scaleArray(images, width, height)
        scaledImages = Array.new(images.length, nil)
        index = images.length
        while (index -= 1) >= 0
            scaledImages[index] = self.scale(images[index], width, height)
        end
        return scaledImages
    end
    

    # throws Exception
    def scale(image, width, height)
        originalPlayNImage = nil
        if image.isMutable()
            originalHTMLImage = image
            originalPlayNImage = originalHTMLImage.getImage()
        else
            originalHTMLImage = image
            originalPlayNImage = originalHTMLImage.getImage()
        end
        scaledImage = ::Javax::Microedition::Lcdui::Image.createImage(width, height)
        htmlImage = scaledImage
        canvasImage = htmlImage.getImage()
        canvasSurface = htmlImage.getCanvasSurface(canvasImage)
        canvasSurface.drawImage(originalPlayNImage, 0, 0, scaledImage.getWidth(), scaledImage.getHeight(), 0, 0, image.getWidth(), image.getHeight())
        return scaledImage
    end

    def self.instance()
        ImageJ2MEScaleUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageJ2MEScaleUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageJ2MEScaleUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageJ2MEScaleUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Microemu; module Device; module Playn; autoload :PlaynImmutableImage, "org/microemu/device/playn/PlaynImmutableImage" unless const_defined?(:PlaynImmutableImage, false); end; end; end; end
module ::Org; module Microemu; module Device; module Playn; autoload :PlaynMutableImage, "org/microemu/device/playn/PlaynMutableImage" unless const_defined?(:PlaynMutableImage, false); end; end; end; end
module ::Playn; module Core; autoload :CanvasImage, "playn/core/CanvasImage" unless const_defined?(:CanvasImage, false); end; end
module ::Playn; module Core; autoload :CanvasSurface, "playn/core/CanvasSurface" unless const_defined?(:CanvasSurface, false); end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end

begin
    ImageJ2MEScaleUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

