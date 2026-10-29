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

# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/NullImage"

class ImageScaleUtil
    attr_accessor :logUtil, :commonStrings, :anchor, :imageBasicArrayList, :scaledImageBasicArrayList, :scaleXBasicArrayList, :scaleYBasicArrayList

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @anchor = Anchor::TOP_LEFT
        @imageBasicArrayList = BasicArrayListD.new()
        @scaledImageBasicArrayList = BasicArrayListD.new()
        @scaleXBasicArrayList = BasicArrayListD.new()
        @scaleYBasicArrayList = BasicArrayListD.new()
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
        scaleX = scaleNominatorX / scaleDenominatorX
        scaleY = scaleNominatorY / scaleDenominatorY
        return self.createImage(imageCache, originalImage, scaleX, scaleY, cached)
    end
    

    # throws Exception
    def createImage(imageCache, originalImage, scaleX, scaleY, cached)
        originalAndroidImage = originalImage
        originalBitmap = originalAndroidImage.getBitmap()
        width = ((originalBitmap.getWidth() * scaleX)).to_i
        height = ((originalBitmap.getHeight() * scaleY)).to_i
        index = @imageBasicArrayList.indexOf(originalImage)
        alreadyAvailable = false
        if index >= 0
            scaleX2Float = @scaleXBasicArrayList.get(index)
            scaleX2 = scaleX2Float.to_f
            scaleY2Float = @scaleYBasicArrayList.get(index)
            scaleY2 = scaleY2Float.to_f
            if scaleX2 == scaleX && scaleY2 == scaleY
                alreadyAvailable = true
            end
        end
        if alreadyAvailable
            return @scaledImageBasicArrayList.get(index)
        else
            scaledImage = self.getScaledImage(imageCache, originalImage, scaleX, scaleY, width, height, cached)
            @imageBasicArrayList.add(originalImage)
            @scaledImageBasicArrayList.add(scaledImage)
            @scaleXBasicArrayList.add(scaleX)
            @scaleYBasicArrayList.add(scaleY)
            return scaledImage
        end
    end
    

    # throws Exception
    def getScaledImage(imageCache, originalImage, scaleX, scaleY, width, height, cached)
        image = NullImage::NULL_IMAGE
        if cached
            image = imageCache.get(self.class.name, width, height)
        else
            image = imageCache.get(@commonStrings.CREATE_IMAGE, width, height)
        end
        if image.isMutable()
            matrix = Matrix.new()
            self.scale(image, matrix, scaleX, scaleY)
            image.getGraphics().drawImage(originalImage, 0, 0, @anchor)
            return image
        else
            raise StandardError.new("Not Mutable")
        end
    end
    

    def scale(image, matrix, scaleX, scaleY)
        matrix.setScale(scaleX, scaleY)
        canvas = (image).getCanvas()
        canvas.concat(matrix)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/graphics/Bitmap"
require "android/graphics/Canvas"
require "android/graphics/Matrix"
require "org/allbinary/graphics/Anchor"
require "org/allbinary/image/ImageCache"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/microemu/android/device/AndroidImageInterface"

class ImageScaleUtil
    @@instance = ImageScaleUtil.new()
end

