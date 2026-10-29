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

# require "java/awt"
# require "java/awt/image/BufferedImage"

class ImageComparator
    attr_accessor :imageComparatorConstraintsInterface

    def initialize_fields
        @imageComparatorConstraintsInterface = nil
    end
    

    def initialize(imageComparatorConstraintsInterface)
        initialize_fields
        @imageComparatorConstraintsInterface = imageComparatorConstraintsInterface
    end
    

    # throws Exception
    def process(imageComparisonInfo, point)
        isCollsionWithAvoidRectangles = @imageComparatorConstraintsInterface.isCollisionWithAvoidRectangles(point)
        if !isCollsionWithAvoidRectangles
            rgb1 = imageComparisonInfo.getBufferedImages()[0].getRGB(point.getX(), point.getY())
            rgb2 = imageComparisonInfo.getBufferedImages()[1].getRGB(point.getX(), point.getY())
            automaticCacheInterface = ColorCacheFactory.getInstance()
            colorInteger = (rgb1).to_s
            colorCacheable = automaticCacheInterface.get(colorInteger)
            color = colorCacheable.getColor()
            colorInteger2 = (rgb2).to_s
            colorCacheable2 = automaticCacheInterface.get(colorInteger)
            color2 = colorCacheable.getColor()
            if @imageComparatorConstraintsInterface.isColorAllowed(0, point, color) || @imageComparatorConstraintsInterface.isColorAllowed(1, point, color2)
                if (rgb1 - rgb2).abs <= imageComparisonInfo.getTolerance()
                    imageComparisonInfo.pixelsThatMatch += 1
                else
                    imageComparisonInfo.add(PixelDeltaFactory.getInstance(point.getX(), point.getY(), rgb1, rgb2))
                end
            end
        else
            imageComparisonInfo.pixelsIgnored += 1
        end
    end
    

    # throws Exception
    def compare(bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance)
        return self.compare(bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance, StringUtil.getInstance().EMPTY_STRING)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def compare(bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance, name)
        if bufferedImage1 == nil || bufferedImage2 == nil
            raise StandardError.new("Input images must not be null.")
        end
        imageComparisonInfo = ImageComparisonResult.new(name, bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance)
        (0...imageComparisonInfo.imageHeight).each do |indexY|
            (0...imageComparisonInfo.imageWidth).each do |indexX|
                self.process(imageComparisonInfo, PointFactory.getInstance().createXY(indexX, indexY))
                if imageComparisonInfo.getNonMatchingPixelVector().size() > @imageComparatorConstraintsInterface.getMaxNonMatchingPixelDeltas()
                    break
                end
            end
        end
        return imageComparisonInfo
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/color/ColorCacheFactory"
require "org/allbinary/graphics/color/ColorCacheable"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/util/cache/AutomaticCacheInterface"
require "org/allbinary/media/image/comparison/pixel/PixelDeltaFactory"
require "org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface"
require "org/allbinary/media/image/comparison/ImageComparisonResult"

