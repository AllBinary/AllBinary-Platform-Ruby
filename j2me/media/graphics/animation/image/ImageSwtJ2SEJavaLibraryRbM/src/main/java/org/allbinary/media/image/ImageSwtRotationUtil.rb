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


class ImageSwtRotationUtil
    attr_accessor :logUtil, :commonStrings, :imageUtil, :gameFeatureFactory, :features, :NO_COPY

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @imageUtil = ImageUtil.getInstance()
        @gameFeatureFactory = GameFeatureFactory.getInstance()
        @features = Features.getInstance()
        @NO_COPY = "SWT should not copy images after initial loading as the alpha is not honored"
    end
    

    def self.getInstance()
        return ImageSwtRotationUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getRotatedImage(bufferedImage, totalAngle)
        if !@features.isFeature(@gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.putF(@NO_COPY, self, @commonStrings.CONSTRUCTOR)
            return bufferedImage
        end
        return bufferedImage
    end
    

    def getRotatedImage2(bufferedImage, newBufferedImage, gc, angle)
        if !@features.isFeature(@gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.putF(@NO_COPY, self, @commonStrings.CONSTRUCTOR)
            return bufferedImage
        end
        return bufferedImage
    end
    

    def rotateImage(originalSwtImage, newSwtImage, gc, totalAngle)
        return self.getRotatedImage2(originalSwtImage, newSwtImage, gc, totalAngle)
    end
    

    def getRotatedImageSWT(bufferedImage, newSwtImage, gc, totalAngle)
        return self.getRotatedImage2(bufferedImage, newSwtImage, gc, totalAngle)
    end
    

    def getRotatedImages(bufferedImage, numberOfFrames, totalAngle)
        bufferedImageArray = Array.new(numberOfFrames, nil)
        angle = 0
        size = bufferedImageArray.length
        (0...size).each do |index|
            angle = (totalAngle / size) * index
            bufferedImageArray[index] = self.getRotatedImage(bufferedImage, angle)
        end
        return bufferedImageArray
    end
    

    def createSpriteImage(bufferedImageArray)
        columns = 9
        rows = 0
        size = bufferedImageArray.length
        if size < columns
            columns = size
        end
        rows = (size / columns)
        if size % columns != 0
            rows += 1
        end
        firstBufferedImage = bufferedImageArray[0]
        imageData = firstBufferedImage.getImageData()
        bufferedImage = @imageUtil.create(imageData.width * columns, imageData.height * rows)
        gc = GC.new(bufferedImage)
        gc.setAntialias(SWT::ON)
        gc.setInterpolation(SWT::HIGH)
        columnIndex = 0
        rowIndex = 0
        nextBufferedImage = nil
        (0...size).each do |index|
            if index / 9 != 0 && index % 9 == 0
                rowIndex += 1
                columnIndex = 0
            end
            nextBufferedImage = bufferedImageArray[index]
            imageData = nextBufferedImage.getImageData()
            gc.drawImage(bufferedImage, 0, 0, bufferedImage.getBounds().width, bufferedImage.getBounds().height, imageData.width * columnIndex, imageData.height * rowIndex, imageData.width, imageData.height)
            columnIndex += 1
        end
        gc.dispose()
        return bufferedImage
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
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/eclipse/swt/SWT"
require "org/eclipse/swt/graphics/GC"
require "org/eclipse/swt/graphics/ImageData"
require "org/allbinary/media/image/ImageUtil"

class ImageSwtRotationUtil
    @@instance = ImageSwtRotationUtil.new()
end

