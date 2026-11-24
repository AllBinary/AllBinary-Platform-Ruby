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

class ChangedPixelsUtil
    

    def initialize()
    end
    

    # throws Exception
    def self.generateBufferedImageChacheables(imageComparisonInfo)
        bufferedImageCacheables = nil
        originalBufferedImage = imageComparisonInfo.getBufferedImages()[0]
        bufferedImageCacheables = Array.new(2, nil)
        bufferedImageInfo = ::Org::Allbinary::Media::Image::Cache::BufferedImageInfoFactory.getInstance(imageComparisonInfo.imageWidth, imageComparisonInfo.imageHeight, originalBufferedImage.getType())
        poolInterface = ::Org::Allbinary::Media::Image::Cache::BufferedImagePoolSingleton.getInstance()
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:START_X, 0)
        const_set(:START_Y, 0)
        const_set(:OFFSET, 0)
        const_set(:SCAN_SIZE, 0)
        begin
            const_set(:CLEAR_INT_ARRAY, (Array.new(1800 * 1600, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) })
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ChangedPixelsUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:START_X, :START_Y, :OFFSET, :SCAN_SIZE, :CLEAR_INT_ARRAY].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :PoolInterface, "org/allbinary/logic/util/cache/PoolInterface" unless const_defined?(:PoolInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Cache; autoload :BufferedImageCacheable, "org/allbinary/media/image/cache/BufferedImageCacheable" unless const_defined?(:BufferedImageCacheable, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Cache; autoload :BufferedImageInfo, "org/allbinary/media/image/cache/BufferedImageInfo" unless const_defined?(:BufferedImageInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Cache; autoload :BufferedImageInfoFactory, "org/allbinary/media/image/cache/BufferedImageInfoFactory" unless const_defined?(:BufferedImageInfoFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Cache; autoload :BufferedImagePoolSingleton, "org/allbinary/media/image/cache/BufferedImagePoolSingleton" unless const_defined?(:BufferedImagePoolSingleton, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Pixel; autoload :PixelDelta, "org/allbinary/media/image/comparison/pixel/PixelDelta" unless const_defined?(:PixelDelta, false); end; end; end; end; end; end
autoload :ImageComparisonResult, "org/allbinary/media/image/comparison/ImageComparisonResult" unless const_defined?(:ImageComparisonResult, false)
require "java/lang/System"

begin
    ChangedPixelsUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

