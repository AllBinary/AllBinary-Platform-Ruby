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
# package org.allbinary.media.image.comparison

# require "java/awt/image/BufferedImage"

class ImageComparisonResult
    attr_accessor :logUtil, :commonStrings, :bufferedImages, :name, :isSameHeight, :isSameWidth, :imageHeight, :imageWidth, :nonMatchingPixelVector, :frameOne, :frameTwo, :pixelsThatMatch, :pixelsIgnored, :tolerance, :matchingPercent

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @bufferedImages = Array.new(2, nil)
        @name = nil
        @isSameHeight = false
        @isSameWidth = false
        @imageHeight = nil
        @imageWidth = nil
        @nonMatchingPixelVector = nil
        @frameOne = nil
        @frameTwo = nil
        @pixelsThatMatch = 0
        @pixelsIgnored = 0
        @tolerance = 0
        @matchingPercent = (-1).to_f
    end
    

    def initialize(name, bufferedImage, bufferedImage2, frameOne, frameTwo, tolerance)
        initialize_fields
        @name = name
        @nonMatchingPixelVector = BasicArrayListD.new()
        @bufferedImages[0] = bufferedImage
        @bufferedImages[1] = bufferedImage2
        @frameOne = frameOne
        @frameTwo = frameTwo
        self.setTolerance(0)
        imageHeight = bufferedImage.getHeight()
        imageWidth = bufferedImage.getWidth()
        if bufferedImage.getHeight() != bufferedImage2.getHeight()
            @isSameHeight = false
            if imageHeight > bufferedImage2.getHeight()
                imageHeight = bufferedImage2.getHeight()
            end
        else
            @isSameHeight = true
        end
        if bufferedImage.getWidth() != bufferedImage2.getWidth()
            @isSameWidth = false
            if imageWidth > bufferedImage2.getWidth()
                imageWidth = bufferedImage2.getWidth()
            end
        else
            @isSameWidth = true
        end
        @imageWidth = imageWidth
        @imageHeight = imageHeight
        if !@isSameWidth || !@isSameHeight
            imageUtil = ImageUtil.getInstance()
            @logUtil.putF("Images were not the same size? Most likely a resolution change.", self, @commonStrings.CONSTRUCTOR)
            @logUtil.putF("1: " + imageUtil.toString(bufferedImage), self, @commonStrings.CONSTRUCTOR)
            @logUtil.putF("2: " + imageUtil.toString(bufferedImage2), self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def getMatchingPercent()
        if @matchingPercent == (-1).to_f
            @matchingPercent = (@pixelsThatMatch).to_f / ((@imageWidth * @imageHeight)).to_f
        end
        return @matchingPercent
    end
    

    def add(pixel)
        @nonMatchingPixelVector.add(pixel)
    end
    

    def getNonMatchingPixelVector()
        return @nonMatchingPixelVector
    end
    

    def toString()
        return StringMaker.new().append("ImageComparisonInfo: ").append(@name).append(" Number Of Matching Pixels: ").appendint(@pixelsThatMatch).append("\nNumber Of Non-Matching Pixels: ").appendint(self.getNonMatchingPixelVector().size()).append("\nNumber Of Pixels Ignored: ").appendint(@pixelsIgnored).append("\nMatching Percentage: ").appendfloat(self.getMatchingPercent()).to_s
    end
    alias_method :to_s, :toString
    

    def getBufferedImages()
        return @bufferedImages
    end
    

    def getTolerance()
        return @tolerance
    end
    

    def setTolerance(tolerance)
        @tolerance = tolerance
    end
    

    def getFrameOne()
        return @frameOne
    end
    

    def getFrameTwo()
        return @frameTwo
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/image/ImageUtil"
require "org/allbinary/media/image/comparison/pixel/PixelDelta"
require "org/allbinary/string/CommonStrings"

