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

class ImageRotationUtil
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def createRotatedImage(originalImage, rotationInDegrees)
        image = ImageCreationUtil.getInstance().getInstance(originalImage.getWidth(), originalImage.getHeight())
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
            canvasSurface = htmlImage.getCanvasSurface(canvasImage)
            canvasSurface.translate(originalPlayNImage.width() / 2, originalPlayNImage.height() / 2)
            canvasSurface.rotate((((rotationInDegrees) * Math::PI / 180)).to_f)
            canvasSurface.drawImage(originalPlayNImage, -originalPlayNImage.width() / 2, -originalPlayNImage.height() / 2)
            return image
        else
            raise StandardError.new("Not Mutable")
        end
    end

    def self.instance()
        ImageRotationUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageRotationUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageRotationUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageRotationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Microemu; module Device; module Playn; autoload :PlaynImmutableImage, "org/microemu/device/playn/PlaynImmutableImage" unless const_defined?(:PlaynImmutableImage, false); end; end; end; end
module ::Org; module Microemu; module Device; module Playn; autoload :PlaynMutableImage, "org/microemu/device/playn/PlaynMutableImage" unless const_defined?(:PlaynMutableImage, false); end; end; end; end
module ::Playn; module Core; autoload :CanvasImage, "playn/core/CanvasImage" unless const_defined?(:CanvasImage, false); end; end
module ::Playn; module Core; autoload :CanvasSurface, "playn/core/CanvasSurface" unless const_defined?(:CanvasSurface, false); end; end
autoload :ImageCreationUtil, "org/allbinary/media/image/ImageCreationUtil" unless const_defined?(:ImageCreationUtil, false)
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end

begin
    ImageRotationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

