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
# require "java/awt/Graphics2D"
# require "java/awt/geom/AffineTransform"
# require "java/awt/image/BufferedImage"

module ::Org; module Allbinary; module Media; module Image

class ImageScaleUtil
    attr_accessor :imageUtil, :imageJ2SEUtil, :imageCreationUtil

    def jfields_org_allbinary_media_image_ImageScaleUtil
        @imageUtil = ImageUtil.getInstance()
        @imageJ2SEUtil = ImageJ2SEUtil.getInstance()
        @imageCreationUtil = ImageCreationUtil.getInstance()
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
        width = originalImage.getWidth()
        height = originalImage.getHeight()
        scaleX = scaleNominatorX / scaleDenominatorX
        scaleY = scaleNominatorY / scaleDenominatorY
        image = nil
        if cached
            image = imageCache.get(self.class.java_name, (((width).to_f * scaleX)).to_i, (((height).to_f * scaleY)).to_i)
        else
            image = imageCache.get("createImage", (((width).to_f * scaleX)).to_i, (((height).to_f * scaleY)).to_i)
        end
        self.scale(originalImage, image, scaleX, scaleY, true)
        return image
    end
    

    # throws Exception
    def scale2(originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY)
        if maxScaleX * originalImage.getWidth() > originalImageArray[0].getWidth() || maxScaleY * originalImage.getHeight() > originalImageArray[0].getHeight()
            originalImageArray[0] = @imageCreationUtil.createImage(originalImage.getWidth(), originalImage.getHeight(), maxScaleX, maxScaleY)
        end
        self.scale(originalImage, originalImageArray[0], scaleX, scaleY, false)
    end
    

    def scale(originalImage, newMaxSizeImage, scaleX, scaleY, clear)
        bufferedImage = @imageUtil.getBufferedImage(originalImage)
        newBufferedImage = @imageUtil.getBufferedImage(newMaxSizeImage)
        at = AffineTransform.getScaleInstance(scaleX, scaleY)
        g = newBufferedImage.createGraphics()
        if clear
            g.setBackground(@imageJ2SEUtil.TRANSPARENT_COLOR)
            g.clearRect(0, 0, newBufferedImage.getWidth(), newBufferedImage.getHeight())
        end
        g.drawRenderedImage(bufferedImage, at)
        g.dispose()
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
autoload :ImageCreationUtil, "org/allbinary/media/image/ImageCreationUtil" unless const_defined?(:ImageCreationUtil, false)
autoload :ImageJ2SEUtil, "org/allbinary/media/image/ImageJ2SEUtil" unless const_defined?(:ImageJ2SEUtil, false)
autoload :ImageUtil, "org/allbinary/media/image/ImageUtil" unless const_defined?(:ImageUtil, false)

begin
    ImageScaleUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

