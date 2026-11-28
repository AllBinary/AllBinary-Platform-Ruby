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
    attr_accessor :imageSwtRotationUtil, :features

    def jfields_org_allbinary_media_image_ImageRotationUtil
        @imageSwtRotationUtil = ImageSwtRotationUtil.getInstance()
        @features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_media_image_ImageRotationUtil
    end
    

    def rotateImage(originalImage, image, totalAngle)
        originalImage2 = originalImage
        if @features.isFeature(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL)
            if image.getType() >= ::Org::Allbinary::Image::Opengles::OpenGLESImage::TYPE
                openGLESImage = SwtOpenGLESImageBridge.getOpenGLESImage(image)
                openGLESImage.openGLESImageProperties.angle = totalAngle
                return
            else
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("OpenGL but image is: " + (image).to_s + " type: " + (image.getType()).to_s, self, "rotateImage")
            end
        end
        originalSwtImage = (originalImage2.getImage())
        gc = nil
        copySwtImage = nil
        if image.isMutable()
            swtImage = image
            copySwtImage = swtImage.getImage()
            gc = swtImage.getGc()
            @imageSwtRotationUtil.rotateImage(originalSwtImage, copySwtImage, gc, totalAngle)
        else
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("No rotation for: " + image.to_s, self, "rotateImage")
        end
    end
    

    # throws Exception
    def createRotatedImage(originalImage, rotationInDegrees)
        return originalImage
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
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage" unless const_defined?(:OpenGLESImage, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :JavaGC, "org/eclipse/swt/graphics/JavaGC" unless const_defined?(:JavaGC, false); end; end; end; end
module ::Org; module Microemu; module Device; module Swt; autoload :SwtImmutableImage, "org/microemu/device/swt/SwtImmutableImage" unless const_defined?(:SwtImmutableImage, false); end; end; end; end
module ::Org; module Microemu; module Device; module Swt; autoload :SwtMutableImage, "org/microemu/device/swt/SwtMutableImage" unless const_defined?(:SwtMutableImage, false); end; end; end; end
autoload :ImageSwtRotationUtil, "org/allbinary/media/image/ImageSwtRotationUtil" unless const_defined?(:ImageSwtRotationUtil, false)
autoload :SwtOpenGLESImageBridge, "org/allbinary/media/image/SwtOpenGLESImageBridge" unless const_defined?(:SwtOpenGLESImageBridge, false)
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end

begin
    ImageRotationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

