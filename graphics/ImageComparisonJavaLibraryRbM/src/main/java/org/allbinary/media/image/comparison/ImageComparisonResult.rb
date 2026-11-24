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

module ::Org; module Allbinary; module Media; module Image; module Comparison

class ImageComparisonResult
    attr_accessor :logUtil, :commonStrings, :bufferedImages, :name, :isSameHeight, :isSameWidth, :imageHeight, :imageWidth, :nonMatchingPixelVector, :frameOne, :frameTwo, :pixelsThatMatch, :pixelsIgnored, :tolerance, :matchingPercent

    def jfields_org_allbinary_media_image_comparison_ImageComparisonResult
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @bufferedImages = Array.new(2, nil)
        @name = nil unless instance_variable_defined?(:@name)
        @isSameHeight = false unless instance_variable_defined?(:@isSameHeight)
        @isSameWidth = false unless instance_variable_defined?(:@isSameWidth)
        @imageHeight = nil unless instance_variable_defined?(:@imageHeight)
        @imageWidth = nil unless instance_variable_defined?(:@imageWidth)
        @nonMatchingPixelVector = nil unless instance_variable_defined?(:@nonMatchingPixelVector)
        @frameOne = nil unless instance_variable_defined?(:@frameOne)
        @frameTwo = nil unless instance_variable_defined?(:@frameTwo)
        @pixelsThatMatch = 0 unless instance_variable_defined?(:@pixelsThatMatch)
        @pixelsIgnored = 0 unless instance_variable_defined?(:@pixelsIgnored)
        @tolerance = 0 unless instance_variable_defined?(:@tolerance)
        @matchingPercent = (-1).to_f
    end
    

    def initialize(name, bufferedImage, bufferedImage2, frameOne, frameTwo, tolerance)
        jfields_org_allbinary_media_image_comparison_ImageComparisonResult
        @name = name
        @nonMatchingPixelVector = ::Org::Allbinary::Util::BasicArrayListD.new()
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
            imageUtil = ::Org::Allbinary::Media::Image::ImageUtil.getInstance()
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
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("ImageComparisonInfo: ").append(@name).append(" Number Of Matching Pixels: ").appendint(@pixelsThatMatch).append("\nNumber Of Non-Matching Pixels: ").appendint(self.getNonMatchingPixelVector().size()).append("\nNumber Of Pixels Ignored: ").appendint(@pixelsIgnored).append("\nMatching Percentage: ").appendfloat(self.getMatchingPercent()).to_s
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageUtil, "org/allbinary/media/image/ImageUtil" unless const_defined?(:ImageUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Pixel; autoload :PixelDelta, "org/allbinary/media/image/comparison/pixel/PixelDelta" unless const_defined?(:PixelDelta, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end

