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

class ChangedPixelsUtil
    

    def initialize()
    end
    

    # throws Exception
    def self.generateBufferedImageChacheables(imageComparisonInfo)
        bufferedImageCacheables = nil
        originalBufferedImage = imageComparisonInfo.getBufferedImages()[0]
        bufferedImageCacheables = Array.new(2, nil)
        bufferedImageInfo = BufferedImageInfoFactory.getInstance(imageComparisonInfo.imageWidth, imageComparisonInfo.imageHeight, originalBufferedImage.getType())
        poolInterface = BufferedImagePoolSingleton.getInstance()
        (0...bufferedImageCacheables.length).each do |index|
            bufferedImageCacheable = poolInterface.remove(bufferedImageInfo)
            bufferedImageCacheables[index] = bufferedImageCacheable
            bufferedImageCacheables[index].getBufferedImage().setRGB(ChangedPixelsUtil::START_X, ChangedPixelsUtil::START_Y, bufferedImageInfo.getWidth(), bufferedImageInfo.getHeight(), ChangedPixelsUtil::CLEAR_INT_ARRAY, ChangedPixelsUtil::OFFSET, ChangedPixelsUtil::SCAN_SIZE)
        end
        vector = imageComparisonInfo.getNonMatchingPixelVector()
        size = vector.size()
        (0...size).each do |index|
            pixelDelta = vector.get(index)
            if pixelDelta.getColorDelta() == nil
                print("ColorDelta")
                exit(0)
            end
            bufferedImageCacheables[0].getBufferedImage().setRGB(pixelDelta.getPoint().getX(), pixelDelta.getPoint().getY(), pixelDelta.getColorDelta().getRgb1())
            bufferedImageCacheables[1].getBufferedImage().setRGB(pixelDelta.getPoint().getX(), pixelDelta.getPoint().getY(), pixelDelta.getColorDelta().getRgb2())
        end
        return bufferedImageCacheables
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/util/cache/PoolInterface"
require "org/allbinary/media/image/cache/BufferedImageCacheable"
require "org/allbinary/media/image/cache/BufferedImageInfo"
require "org/allbinary/media/image/cache/BufferedImageInfoFactory"
require "org/allbinary/media/image/cache/BufferedImagePoolSingleton"
require "org/allbinary/media/image/comparison/pixel/PixelDelta"
require "org/allbinary/media/image/comparison/ImageComparisonResult"
require "java/lang/System"

class ChangedPixelsUtil
    START_X = 0
    START_Y = 0
    OFFSET = 0
    SCAN_SIZE = 0
    CLEAR_INT_ARRAY = Array.new(1800 * 1600, 0)
end

