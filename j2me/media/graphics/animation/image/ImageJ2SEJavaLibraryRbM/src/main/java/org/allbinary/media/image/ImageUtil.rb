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
# require "java/awt/GraphicsConfiguration"
# require "java/awt/GraphicsDevice"
# require "java/awt/GraphicsEnvironment"
# require "java/awt/Transparency"
# require "java/awt/geom/AffineTransform"
# require "java/awt/image/BufferedImage"

module ::Org; module Allbinary; module Media; module Image

class ImageUtil
    attr_accessor :commonStrings, :commonSeps, :IIOIMAGE_POOL_NAME, :CREATE_BUFFERED_IMAGE

    def jfields_org_allbinary_media_image_ImageUtil
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @IIOIMAGE_POOL_NAME = "IIOIMAGE_POOL_NAME"
        @CREATE_BUFFERED_IMAGE = "createBufferedImage"
    end
    

    def self.getInstance()
        return ImageUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_media_image_ImageUtil
    end
    

    def getDefaultConfiguration()
        ge = GraphicsEnvironment.getLocalGraphicsEnvironment()
        gd = ge.getDefaultScreenDevice()
        return gd.getDefaultConfiguration()
    end
    

    def create(width, height)
        graphicsConfiguration = self.getDefaultConfiguration()
        return graphicsConfiguration.createCompatibleImage(width, height, Transparency::TRANSLUCENT)
    end
    

    # throws Exception
    def createBufferedImageForResize(bufferedImageArray, percent, scale)
        size = bufferedImageArray.length
        scaledBufferedImageArray = Array.new(size, nil)
        bufferedImage = nil
        (0...size).each do |index|
            bufferedImage = bufferedImageArray[index]
            newWidth = (((bufferedImage.getWidth() * percent / 100)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            newHeight = (((bufferedImage.getHeight() * percent / 100)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            scaledBufferedImageArray[index] = self.createBufferedImage(bufferedImage, newWidth, newHeight, scale)
        end
        return scaledBufferedImageArray
    end
    

    # throws Exception
    def createBufferedImage2(bufferedImageArray, percent, scale)
        size = bufferedImageArray.length
        scaledBufferedImageArray = Array.new(size, nil)
        bufferedImage = nil
        (0...size).each do |index|
            bufferedImage = bufferedImageArray[index]
            newWidth = (((bufferedImage.getWidth() * percent)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            newHeight = (((bufferedImage.getHeight() * percent)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            scaledBufferedImageArray[index] = self.createBufferedImage(bufferedImage, newWidth, newHeight, scale)
        end
        return scaledBufferedImageArray
    end
    

    # throws Exception
    def createBufferedImage3(bufferedImageArray, width, height, scale)
        size = bufferedImageArray.length
        scaledBufferedImageArray = Array.new(size, nil)
        (0...size).each do |index|
            scaledBufferedImageArray[index] = self.createBufferedImage(bufferedImageArray[index], width, height, scale)
        end
        return scaledBufferedImageArray
    end
    

    # throws Exception
    def createBufferedImageForSave(bufferedImage, newWidth, newHeight)
        return self.createBufferedImage(bufferedImage, newWidth, newHeight, true)
    end
    

    # throws Exception
    def createBufferedImage(bufferedImage, newWidth, newHeight, scale)
        return self.createBufferedImageAllowTranslate(bufferedImage, newWidth, newHeight, scale, false)
    end
    

    # throws Exception
    def createBufferedImageAllowTranslate(bufferedImage, newWidth, newHeight, scale, allowTranslate)
        width = bufferedImage.getWidth()
        height = bufferedImage.getHeight()
        d_newWidth = (newWidth).to_f
        d_newHeight = (newHeight).to_f
        widthRatio = d_newWidth / width
        heightRatio = d_newHeight / height
        ratioX = 1.0
        ratioY = 1.0
        if scale
            ratioX = widthRatio
            ratioY = heightRatio
        end
        affineTransform = AffineTransform.getScaleInstance(ratioX, ratioY)
        if !scale && allowTranslate
            dx = ((newWidth).to_f - width) / 2.0
            dy = ((newHeight).to_f - height) / 2.0
            affineTransform.translate(dx, dy)
        end
        newBufferedImage = BufferedImage.new(newWidth, newHeight, BufferedImage::TYPE_INT_ARGB_PRE)
        graphics = newBufferedImage.createGraphics()
        graphics.drawRenderedImage(bufferedImage, affineTransform)
        return newBufferedImage
    end
    

    # throws Exception
    def createBufferedImageWithLargerCanvas(bufferedImage, newWidth, newHeight)
        width = bufferedImage.getWidth()
        height = bufferedImage.getHeight()
        d_newWidth = (newWidth).to_f
        d_newHeight = (newHeight).to_f
        widthRatio = d_newWidth / width
        heightRatio = d_newHeight / height
        dx2 = (((newWidth).to_f - width)).to_i
        dy2 = (((newHeight).to_f - height)).to_i
        dx = dx2 / 2
        dy = dy2 / 2
        dx4 = dx2 / 4
        dy4 = dy2 / 4
        newBufferedImage = BufferedImage.new(newWidth, newHeight, BufferedImage::TYPE_INT_ARGB_PRE)
        graphics = newBufferedImage.createGraphics()
        graphics.drawImage(bufferedImage, dx4, dy4, nil)
        return newBufferedImage
    end
    

    def convertToBufferedImage(toolkitImage)
        if toolkitImage == nil
            return nil
        end
        bufferedImage = BufferedImage.new(toolkitImage.getWidth(nil), toolkitImage.getHeight(nil), BufferedImage::TYPE_INT_ARGB)
        g2d = bufferedImage.createGraphics()
        g2d.drawImage(toolkitImage, 0, 0, nil)
        g2d.dispose()
        return bufferedImage
    end
    

    def getBufferedImage(image)
        bufferedImage = nil
        if image.isMutable()
            j2seImage = image
            bufferedImage = j2seImage.getImage()
        else
            j2seImage = image
            bufferedImage = j2seImage.getImage()
        end
        return bufferedImage
    end
    

    def toString(bufferedImage)
        commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(" BufferedImage -")
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(((bufferedImage.getWidth()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(((bufferedImage.getHeight()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(" Type: ")
        stringBuffer.appendint(((bufferedImage.getType()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        return stringBuffer.to_s
    end

    def self.instance()
        ImageUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Microemu; module Device; module J2se; autoload :J2SEImmutableImage, "org/microemu/device/j2se/J2SEImmutableImage" unless const_defined?(:J2SEImmutableImage, false); end; end; end; end
module ::Org; module Microemu; module Device; module J2se; autoload :J2SEMutableImage, "org/microemu/device/j2se/J2SEMutableImage" unless const_defined?(:J2SEMutableImage, false); end; end; end; end

begin
    ImageUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

