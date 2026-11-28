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

# require "java/awt/image/BufferedImage"

module ::Org; module Allbinary; module Media; module Image

class ImageRotationUtil
    attr_accessor :imageJ2SERotationUtil

    def jfields_org_allbinary_media_image_ImageRotationUtil
        @imageJ2SERotationUtil = ImageJ2SERotationUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_media_image_ImageRotationUtil
    end
    

    def rotateImage(originalImage, image, totalAngle)
        if image.isMutable()
            j2seImage = image
            newBufferedImage = j2seImage.getImage()
            originalAwtImage = nil
            if originalImage.isMutable()
                originalJ2SEImage = originalImage
                originalAwtImage = originalJ2SEImage.getImage()
            else
                originalJ2SEImage = originalImage
                originalAwtImage = originalJ2SEImage.getImage()
            end
            @imageJ2SERotationUtil.rotateImage(originalAwtImage, newBufferedImage, totalAngle)
        else
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("Not Mutable", self, "getRotatedImage", StandardError.new())
        end
    end
    

    # throws Exception
    def createRotatedImage(originalImage, rotationInDegrees)
        image = ImageCreationUtil.getInstance().createImageWH(originalImage.getWidth(), originalImage.getHeight())
        if image.isMutable()
            originalAwtImage = nil
            if originalImage.isMutable()
                originalJ2SEImage = originalImage
                originalAwtImage = originalJ2SEImage.getImage()
            else
                originalJ2SEImage = originalImage
                originalAwtImage = originalJ2SEImage.getImage()
            end
            j2seImage = image
            newBufferedImage = j2seImage.getImage()
            bufferedImage = @imageJ2SERotationUtil.createRotatedImage(originalAwtImage, newBufferedImage, rotationInDegrees)
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
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Microemu; module Device; module J2se; autoload :J2SEImmutableImage, "org/microemu/device/j2se/J2SEImmutableImage" unless const_defined?(:J2SEImmutableImage, false); end; end; end; end
module ::Org; module Microemu; module Device; module J2se; autoload :J2SEMutableImage, "org/microemu/device/j2se/J2SEMutableImage" unless const_defined?(:J2SEMutableImage, false); end; end; end; end
autoload :ImageCreationUtil, "org/allbinary/media/image/ImageCreationUtil" unless const_defined?(:ImageCreationUtil, false)
autoload :ImageJ2SERotationUtil, "org/allbinary/media/image/ImageJ2SERotationUtil" unless const_defined?(:ImageJ2SERotationUtil, false)

begin
    ImageRotationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

