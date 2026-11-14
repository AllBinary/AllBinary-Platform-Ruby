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


class ImageCopyUtil
    attr_accessor :logUtil, :commonStrings, :imageCreationUtil, :anchor, :gameFeatureFactory, :features, :NO_COPY

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @imageCreationUtil = ImageCreationUtil.getInstance()
        @anchor = Anchor::TOP_LEFT
        @gameFeatureFactory = GameFeatureFactory.getInstance()
        @features = Features.getInstance()
        @NO_COPY = "J2ME does not need to copy images after initial loading"
    end
    

    def self.getInstance()
        return ImageCopyUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def createImageForRotation(originalImage)
        return self.createImage(originalImage)
    end
    

    # throws Exception
    def createImage(originalImage)
        if !@features.isFeature(@gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.put(@NO_COPY, self, @commonStrings.CONSTRUCTOR, StandardError.new())
            return originalImage
        end
        image = @imageCreationUtil.createImageWH(originalImage.getWidth(), originalImage.getHeight())
        if image.isMutable()
            image.getGraphics().drawImage(originalImage, 0, 0, @anchor)
            return image
        else
            raise StandardError.new("Not Mutable")
        end
    end
    

    # throws Exception
    def createImageScale(originalImage, canvasScale, resize)
        if !@features.isFeature(@gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.put(@NO_COPY, self, @commonStrings.CONSTRUCTOR, StandardError.new())
            return originalImage
        end
        newWidth = ((originalImage.getWidth() * canvasScale)).to_i
        newHeight = ((originalImage.getHeight() * canvasScale)).to_i
        if resize
            if newWidth < newHeight
                newWidth = newHeight
            end
            if newHeight < newWidth
                newHeight = newWidth
            end
        end
        image = @imageCreationUtil.createImageWH(newWidth, newHeight)
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

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory"
autoload :Anchor, "org/allbinary/graphics/Anchor"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ImageCreationUtil, "org/allbinary/media/image/ImageCreationUtil"

begin
    ImageCopyUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

