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
    attr_accessor :playnUtil

    def jfields_org_allbinary_media_image_ImageRotationUtil
        @playnUtil = ::Playn::Html::HTMLPlaynUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_media_image_ImageRotationUtil
    end
    

    def rotateImage(originalImage, image, totalAngle)
        if image.isMutable()
            htmlImage = image
            canvasImage = htmlImage.getImage()
            canvas = @playnUtil.getCanvas(canvasImage)
            canvas.save()
            canvas.clear()
            canvas.translate(originalImage.getWidth() / 2, originalImage.getHeight() / 2)
            image2 = self.rotateImageCanvasSurface(originalImage, image, canvas, totalAngle)
            self.drawImage(originalImage, image, canvas)
            canvas.restore()
            return image2
        else
            return nil
        end
    end
    

    def rotateImageCanvasSurfaceClear(originalImage, image, canvasSurface, totalAngle)
        if image.isMutable()
            canvasSurface.translate(-originalImage.getWidth() / 2, -originalImage.getHeight() / 2)
            canvasSurface.clear()
            canvasSurface.translate(originalImage.getWidth() / 2, originalImage.getHeight() / 2)
            return self.rotateImageCanvasSurface(originalImage, image, canvasSurface, totalAngle)
        else
            return nil
        end
    end
    

    def rotateImageCanvasSurface(originalImage, image, canvasSurface, totalAngle)
        if image.isMutable()
            canvasSurface.rotate((((totalAngle) * Math::PI / 180)).to_f)
            return image
        else
            return nil
        end
    end
    

    def drawImage(originalImage, image, canvasSurface)
        originalPlayNImage = nil
        if originalImage.isMutable()
            originalHTMLImage = originalImage
            originalPlayNImage = originalHTMLImage.getImage()
        else
            originalHTMLImage = originalImage
            originalPlayNImage = originalHTMLImage.getImage()
        end
        canvasSurface.draw(originalPlayNImage, -originalImage.getWidth() / 2, -originalImage.getHeight() / 2)
    end
    

    # throws Exception
    def createRotatedImage(originalImage, rotationInDegrees)
        image = ImageCreationUtil.getInstance().createImageWH(originalImage.getWidth(), originalImage.getHeight())
        rotatedImage = self.rotateImage(originalImage, image, rotationInDegrees)
        if rotatedImage == nil
            raise StandardError.new("Not Mutable")
        end
        return rotatedImage
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
module ::Playn; module Core; autoload :Canvas, "playn/core/Canvas" unless const_defined?(:Canvas, false); end; end
module ::Playn; module Core; autoload :CoreImage, "playn/core/CoreImage" unless const_defined?(:CoreImage, false); end; end
module ::Playn; module Core; autoload :ImageImpl, "playn/core/ImageImpl" unless const_defined?(:ImageImpl, false); end; end
module ::Playn; module Html; autoload :HTMLPlaynUtil, "playn/html/HTMLPlaynUtil" unless const_defined?(:HTMLPlaynUtil, false); end; end
autoload :ImageCreationUtil, "org/allbinary/media/image/ImageCreationUtil" unless const_defined?(:ImageCreationUtil, false)

begin
    ImageRotationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

