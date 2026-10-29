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

# require "java/awt/Graphics2D"
# require "java/awt/geom/AffineTransform"
# require "java/awt/image/BufferedImage"
# require "javax/microedition/lcdui/Image"

class ImageScaleUtil
    attr_accessor :imageUtil, :imageJ2SEUtil, :imageCreationUtil

    def initialize_fields
        @imageUtil = ImageUtil.getInstance()
        @imageJ2SEUtil = ImageJ2SEUtil.getInstance()
        @imageCreationUtil = ImageCreationUtil.getInstance()
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
        width = originalImage.getWidth()
        height = originalImage.getHeight()
        scaleX = scaleNominatorX / scaleDenominatorX
        scaleY = scaleNominatorY / scaleDenominatorY
        image = nil
        if cached
            image = imageCache.get(self.class.name, (((width).to_f * scaleX)).to_i, (((height).to_f * scaleY)).to_i)
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/image/ImageCache"
require "org/allbinary/media/image/ImageCreationUtil"
require "org/allbinary/media/image/ImageJ2SEUtil"
require "org/allbinary/media/image/ImageUtil"

class ImageScaleUtil
    @@instance = ImageScaleUtil.new()
end

