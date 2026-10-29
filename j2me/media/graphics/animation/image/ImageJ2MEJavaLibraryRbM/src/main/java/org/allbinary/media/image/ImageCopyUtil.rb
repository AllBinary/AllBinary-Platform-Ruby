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

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"

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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureFactory"
require "org/allbinary/graphics/Anchor"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/image/ImageCreationUtil"

class ImageCopyUtil
    @@instance = ImageCopyUtil.new()
end

