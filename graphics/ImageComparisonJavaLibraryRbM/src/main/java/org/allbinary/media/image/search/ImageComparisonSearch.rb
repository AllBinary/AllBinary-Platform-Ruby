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

module ::Org; module Allbinary; module Media; module Image; module Search

class ImageComparisonSearch
    attr_accessor :logUtil, :commonStrings, :isSameHeight, :isSameWidth, :pixelsThatMatch, :pixelsIgnored, :imageHeight, :imageWidth, :tolerance, :nonMatchingPixelVector, :bufferedImages, :matchingPercent

    def jfields_org_allbinary_media_image_search_ImageComparisonSearch
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @isSameHeight = false unless instance_variable_defined?(:@isSameHeight)
        @isSameWidth = false unless instance_variable_defined?(:@isSameWidth)
        @pixelsThatMatch = 0 unless instance_variable_defined?(:@pixelsThatMatch)
        @pixelsIgnored = 0 unless instance_variable_defined?(:@pixelsIgnored)
        @imageHeight = nil unless instance_variable_defined?(:@imageHeight)
        @imageWidth = nil unless instance_variable_defined?(:@imageWidth)
        @tolerance = 0 unless instance_variable_defined?(:@tolerance)
        @nonMatchingPixelVector = nil unless instance_variable_defined?(:@nonMatchingPixelVector)
        @bufferedImages = nil unless instance_variable_defined?(:@bufferedImages)
        @matchingPercent = (-1).to_f
    end
    

    def initialize(bufferedImage, bufferedImage2, tolerance)
        jfields_org_allbinary_media_image_search_ImageComparisonSearch
        @nonMatchingPixelVector = ::Org::Allbinary::Util::BasicArrayListD.new()
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageUtil, "org/allbinary/media/image/ImageUtil" unless const_defined?(:ImageUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Pixel; autoload :PixelDelta, "org/allbinary/media/image/comparison/pixel/PixelDelta" unless const_defined?(:PixelDelta, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end

