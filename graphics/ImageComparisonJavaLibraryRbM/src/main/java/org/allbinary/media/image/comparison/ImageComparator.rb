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

# require "java/awt/Color"
# require "java/awt/image/BufferedImage"

module ::Org; module Allbinary; module Media; module Image; module Comparison

class ImageComparator
    attr_accessor :imageComparatorConstraintsInterface

    def jfields_org_allbinary_media_image_comparison_ImageComparator
        @imageComparatorConstraintsInterface = nil unless instance_variable_defined?(:@imageComparatorConstraintsInterface)
    end
    

    def initialize(imageComparatorConstraintsInterface)
        jfields_org_allbinary_media_image_comparison_ImageComparator
        @imageComparatorConstraintsInterface = imageComparatorConstraintsInterface
    end
    

    # throws Exception
    def process(imageComparisonInfo, point)
        isCollsionWithAvoidRectangles = @imageComparatorConstraintsInterface.isCollisionWithAvoidRectangles(point)
        if !isCollsionWithAvoidRectangles
            rgb1 = imageComparisonInfo.getBufferedImages()[0].getRGB(point.getX(), point.getY())
            rgb2 = imageComparisonInfo.getBufferedImages()[1].getRGB(point.getX(), point.getY())
            automaticCacheInterface = ::Org::Allbinary::Graphics::Color::ColorCacheFactory.getInstance()
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
                    imageComparisonInfo.add(::Org::Allbinary::Media::Image::Comparison::Pixel::PixelDeltaFactory.getInstance(point.getX(), point.getY(), rgb1, rgb2))
                end
            end
        else
            imageComparisonInfo.pixelsIgnored += 1
        end
    end
    

    # throws Exception
    def compare_j5(bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance)
        return self.compare(bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    

    # throws Exception
    def compare_j6(bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance, name)
        if bufferedImage1 == nil || bufferedImage2 == nil
            raise StandardError.new("Input images must not be null.")
        end
        imageComparisonInfo = ImageComparisonResult.new(name, bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance)
        (0...imageComparisonInfo.imageHeight).each do |indexY|
            (0...imageComparisonInfo.imageWidth).each do |indexX|
                self.process(imageComparisonInfo, ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(indexX, indexY))
                if imageComparisonInfo.getNonMatchingPixelVector().size() > @imageComparatorConstraintsInterface.getMaxNonMatchingPixelDeltas()
                    break
                end
            end
        end
        return imageComparisonInfo
    end

    def compare(*java_overload_args)
        return compare_j5(*java_overload_args) if java_overload_args.length == 5
        return compare_j6(*java_overload_args) if java_overload_args.length == 6
        raise ArgumentError, "No method compare takes #{java_overload_args.length} arguments"
    end
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :ColorCacheFactory, "org/allbinary/graphics/color/ColorCacheFactory" unless const_defined?(:ColorCacheFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :ColorCacheable, "org/allbinary/graphics/color/ColorCacheable" unless const_defined?(:ColorCacheable, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :AutomaticCacheInterface, "org/allbinary/logic/util/cache/AutomaticCacheInterface" unless const_defined?(:AutomaticCacheInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Pixel; autoload :PixelDeltaFactory, "org/allbinary/media/image/comparison/pixel/PixelDeltaFactory" unless const_defined?(:PixelDeltaFactory, false); end; end; end; end; end; end
autoload :ImageComparatorConstraintsInterface, "org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface" unless const_defined?(:ImageComparatorConstraintsInterface, false)
autoload :ImageComparisonResult, "org/allbinary/media/image/comparison/ImageComparisonResult" unless const_defined?(:ImageComparisonResult, false)

end; end; end; end; end

