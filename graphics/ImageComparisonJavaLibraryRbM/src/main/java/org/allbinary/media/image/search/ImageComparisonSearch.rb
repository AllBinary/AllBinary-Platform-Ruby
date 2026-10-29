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
# package org.allbinary.media.image.search

# require "java/awt/image/BufferedImage"

class ImageComparisonSearch
    attr_accessor :logUtil, :commonStrings, :isSameHeight, :isSameWidth, :pixelsThatMatch, :pixelsIgnored, :imageHeight, :imageWidth, :tolerance, :nonMatchingPixelVector, :bufferedImages, :matchingPercent

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @isSameHeight = false
        @isSameWidth = false
        @pixelsThatMatch = 0
        @pixelsIgnored = 0
        @imageHeight = nil
        @imageWidth = nil
        @tolerance = 0
        @nonMatchingPixelVector = nil
        @bufferedImages = nil
        @matchingPercent = (-1).to_f
    end
    

    def initialize(bufferedImage, bufferedImage2, tolerance)
        initialize_fields
        @nonMatchingPixelVector = BasicArrayListD.new()
        self.setBufferedImages(Array.new(2, nil))
        self.getBufferedImages()[0] = bufferedImage
        self.getBufferedImages()[1] = bufferedImage2
        @imageHeight = bufferedImage.getHeight()
        @imageWidth = bufferedImage.getWidth()
        if bufferedImage.getHeight() != bufferedImage2.getHeight()
            @isSameHeight = false
            if @imageHeight > bufferedImage2.getHeight()
                @imageHeight = bufferedImage2.getHeight()
            end
        else
            @isSameHeight = true
        end
        if bufferedImage.getWidth() != bufferedImage2.getWidth()
            @isSameWidth = false
            if @imageWidth > bufferedImage2.getWidth()
                @imageWidth = bufferedImage2.getWidth()
            end
        else
            @isSameWidth = true
        end
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
        return "ImageComparisonInfo: " + " Number Of Matching Pixels: " + (@pixelsThatMatch).to_s + "\nNumber Of Non-Matching Pixels: " + (self.getNonMatchingPixelVector().size()).to_s + "\nNumber Of Pixels Ignored: " + (@pixelsIgnored).to_s + "\nMatching Percentage: " + (self.getMatchingPercent()).to_s
    end
    alias_method :to_s, :toString
    

    def getBufferedImages()
        return @bufferedImages
    end
    

    def setBufferedImages(bufferedImages)
        @bufferedImages = bufferedImages
    end
    

    def getTolerance()
        return @tolerance
    end
    

    def setTolerance(tolerance)
        @tolerance = tolerance
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/image/ImageUtil"
require "org/allbinary/media/image/comparison/pixel/PixelDelta"
require "org/allbinary/string/CommonStrings"

