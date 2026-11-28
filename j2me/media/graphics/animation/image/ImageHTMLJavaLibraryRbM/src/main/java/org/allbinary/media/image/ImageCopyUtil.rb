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

class ImageCopyUtil
    attr_accessor :logUtil, :imageCreationUtil, :anchor

    def jfields_org_allbinary_media_image_ImageCopyUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @imageCreationUtil = ImageCreationUtil.getInstance()
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_media_image_ImageCopyUtil
    end
    

    # throws Exception
    def createImageForRotation(originalImage)
        return self.createImage(originalImage)
    end
    

    # throws Exception
    def createImage(originalImage)
        image = @imageCreationUtil.getInstance(originalImage.getWidth(), originalImage.getHeight())
        if image.isMutable()
            image.getGraphics().drawImage(originalImage, 0, 0, @anchor)
            return image
        else
            raise StandardError.new("Not Mutable")
        end
    end
    

    # throws Exception
    def createImageScale(originalImage, canvasScale, resize)
        newWidth = (((originalImage.getWidth() * canvasScale)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        newHeight = (((originalImage.getHeight() * canvasScale)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        if resize
            if newWidth < newHeight
                newWidth = newHeight
            end
            if newHeight < newWidth
                newHeight = newWidth
            end
        end
        image = @imageCreationUtil.getInstance(newWidth, newHeight)
        if image.isMutable()
            halfWidthDelta = (newWidth - originalImage.getWidth()) / 2
            halfHeightDelta = (newHeight - originalImage.getHeight()) / 2
            graphics = image.getGraphics()
            graphics.drawImage(originalImage, halfWidthDelta, halfHeightDelta, @anchor)
            return image
        else
            raise StandardError.new("Not Mutable")
        end
    end

    def self.instance()
        ImageCopyUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageCopyUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageCopyUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageCopyUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorSetUtil, "org/allbinary/graphics/color/BasicColorSetUtil" unless const_defined?(:BasicColorSetUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :ImageCreationUtil, "org/allbinary/media/image/ImageCreationUtil" unless const_defined?(:ImageCreationUtil, false)

begin
    ImageCopyUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

