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
# package org.allbinary.media.image.comparison.motion

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/awt/Graphics"
# require "java/awt/Rectangle"
# require "java/awt/Color"
# require "java/awt/image/BufferedImage"
require "org/allbinary/media/image/io/ImageIOInterface"

module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion

class MotionRectanglesImageInputOutput
    include ::Org::Allbinary::Media::Image::Io::ImageIOInterface
    attr_accessor :logUtil, :NUMBER_OF_IMAGES

    def jfields_org_allbinary_media_image_comparison_motion_MotionRectanglesImageInputOutput
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @NUMBER_OF_IMAGES = 1
    end
    

    def initialize()
        jfields_org_allbinary_media_image_comparison_motion_MotionRectanglesImageInputOutput
    end
    

    # throws Exception
    def save_j1(frame)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        motionRectanglesResultsFrameCacheable = (AllMotionRectanglesResultsCacheSingleton.getInstance()).get(frame)
        if motionRectanglesResultsFrameCacheable != nil
            motionRectangles = motionRectanglesResultsFrameCacheable.getMotionRectangles()
            self.save(motionRectangles, frame)
            motionRectanglesResultsFrameCacheable = (ConsolidatedMotionRectanglesResultsCacheSingleton.getInstance()).get(frame)
            motionRectangles = motionRectanglesResultsFrameCacheable.getMotionRectangles()
            self.save(motionRectangles, frame)
            motionRectanglesResultsFrameCacheable = (ConstrainedMotionRectanglesResultsCacheSingleton.getInstance()).get(frame)
            motionRectangles = motionRectanglesResultsFrameCacheable.getMotionRectangles()
            self.save(motionRectangles, frame)
        else
            @logUtil.putF("No Motion Rectangle Results for Frame: " + (frame).to_s, self, commonStrings.SAVE)
        end
    end
    

    # throws Exception
    def save_j2(motionRectangles, frame)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        filePathStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        filePathStringBuffer.append(::Org::Allbinary::Input::Automation::ImageOutputData::SAVE_PATH)
        filePathStringBuffer.append(::Org::Allbinary::Logic::Java::Number::LongUtil.fillIn(frame.to_s))
        filePathStringBuffer.append("_")
        filePathStringBuffer.append(motionRectangles.getName())
        filePathStringBuffer1 = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        filePathStringBuffer1.append(filePathStringBuffer.to_s)
        filePathStringBuffer1.append("_1")
        filePathStringBuffer1.append(::Org::Allbinary::Logic::Visual::Media::MediaDataFactory.getInstance().JPG.getExtension())
        filePathStringBuffer2 = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        filePathStringBuffer2.append(filePathStringBuffer.to_s)
        filePathStringBuffer2.append("_2")
        filePathStringBuffer2.append(::Org::Allbinary::Logic::Visual::Media::MediaDataFactory.getInstance().JPG.getExtension())
        filePathStringBuffer3 = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        filePathStringBuffer3.append(filePathStringBuffer.to_s)
        filePathStringBuffer3.append(::Org::Allbinary::Logic::Visual::Media::MediaDataFactory.getInstance().JPG.getExtension())
        @logUtil.putF("Motion Image File Path 1: " + filePathStringBuffer1.to_s, self, commonStrings.SAVE)
        @logUtil.putF("Motion Image File Path 2: " + filePathStringBuffer2.to_s, self, commonStrings.SAVE)
        @logUtil.putF("Motion Image File Path 2: " + filePathStringBuffer3.to_s, self, commonStrings.SAVE)
        bufferedImageCacheables = Array.new(@NUMBER_OF_IMAGES, nil)
        imageComparisonInfo = motionRectangles.getImageComparisonResult()
        originalBufferedImage = imageComparisonInfo.getBufferedImages()[0]
        bufferedImageInfo = ::Org::Allbinary::Media::Image::Cache::BufferedImageInfoFactory.getInstance(imageComparisonInfo.imageWidth, imageComparisonInfo.imageHeight, originalBufferedImage.getType())
        poolInterface = ::Org::Allbinary::Media::Image::Cache::BufferedImagePoolSingleton.getInstance()
        (0...@NUMBER_OF_IMAGES).each do |index|
            bufferedImageCacheables[index] = poolInterface.remove(bufferedImageInfo)
        end
        bufferedImageCacheables[0].getBufferedImage().setData(imageComparisonInfo.getBufferedImages()[1].getData())
        if @NUMBER_OF_IMAGES > 1
            bufferedImageCacheables[1].getBufferedImage().setData(imageComparisonInfo.getBufferedImages()[1].getData())
        end
        bufferedImageGraphicsArray = nil
        bufferedImageGraphicsArray = Array.new(@NUMBER_OF_IMAGES, nil)
        (0...@NUMBER_OF_IMAGES).each do |index|
            bufferedImageGraphicsArray[index] = bufferedImageCacheables[index].getBufferedImage().getGraphics()
        end
        rectangelList = motionRectangles.getVector()
        size = rectangelList.size()
        (0...size).each do |index2|
            motionRectangle = rectangelList.get(index2)
            rectangle = motionRectangle.getRectangle()
            (0...@NUMBER_OF_IMAGES).each do |index|
                bufferedImageGraphicsArray[index].setColor(Color::ORANGE)
                bufferedImageGraphicsArray[index].drawRect(rectangle.x, rectangle.y, rectangle.width, rectangle.height)
            end
        end
        imagePersistanceUtil = ::Org::Allbinary::Media::Image::ImagePersistanceUtil.getInstance()
        if @NUMBER_OF_IMAGES > 1
            imagePersistanceUtil.saveWithImageIO(filePathStringBuffer1.to_s, bufferedImageCacheables[1].getBufferedImage())
        end
        imagePersistanceUtil.saveWithImageIO(filePathStringBuffer2.to_s, bufferedImageCacheables[0].getBufferedImage())
        if @NUMBER_OF_IMAGES > 2
            imagePersistanceUtil.saveWithImageIO(filePathStringBuffer3.to_s, bufferedImageCacheables[2].getBufferedImage())
        end
    end

    def save(*java_overload_args)
        return save_j1(*java_overload_args) if java_overload_args.length == 1
        return save_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method save takes #{java_overload_args.length} arguments"
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Input; module Automation; autoload :ImageOutputData, "org/allbinary/input/automation/ImageOutputData" unless const_defined?(:ImageOutputData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Number; autoload :LongUtil, "org/allbinary/logic/java/number/LongUtil" unless const_defined?(:LongUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :AutomaticCacheInterface, "org/allbinary/logic/util/cache/AutomaticCacheInterface" unless const_defined?(:AutomaticCacheInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :PoolInterface, "org/allbinary/logic/util/cache/PoolInterface" unless const_defined?(:PoolInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Media; autoload :MediaDataFactory, "org/allbinary/logic/visual/media/MediaDataFactory" unless const_defined?(:MediaDataFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImagePersistanceUtil, "org/allbinary/media/image/ImagePersistanceUtil" unless const_defined?(:ImagePersistanceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Cache; autoload :BufferedImageCacheable, "org/allbinary/media/image/cache/BufferedImageCacheable" unless const_defined?(:BufferedImageCacheable, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Cache; autoload :BufferedImageInfo, "org/allbinary/media/image/cache/BufferedImageInfo" unless const_defined?(:BufferedImageInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Cache; autoload :BufferedImageInfoFactory, "org/allbinary/media/image/cache/BufferedImageInfoFactory" unless const_defined?(:BufferedImageInfoFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Cache; autoload :BufferedImagePoolSingleton, "org/allbinary/media/image/cache/BufferedImagePoolSingleton" unless const_defined?(:BufferedImagePoolSingleton, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; autoload :ImageComparisonResult, "org/allbinary/media/image/comparison/ImageComparisonResult" unless const_defined?(:ImageComparisonResult, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AllMotionRectanglesResultsCacheSingleton, "org/allbinary/media/image/comparison/motion/AllMotionRectanglesResultsCacheSingleton" unless const_defined?(:AllMotionRectanglesResultsCacheSingleton, false)
autoload :ConsolidatedMotionRectanglesResultsCacheSingleton, "org/allbinary/media/image/comparison/motion/ConsolidatedMotionRectanglesResultsCacheSingleton" unless const_defined?(:ConsolidatedMotionRectanglesResultsCacheSingleton, false)
autoload :ConstrainedMotionRectanglesResultsCacheSingleton, "org/allbinary/media/image/comparison/motion/ConstrainedMotionRectanglesResultsCacheSingleton" unless const_defined?(:ConstrainedMotionRectanglesResultsCacheSingleton, false)
autoload :MotionRectangle, "org/allbinary/media/image/comparison/motion/MotionRectangle" unless const_defined?(:MotionRectangle, false)
autoload :MotionRectangles, "org/allbinary/media/image/comparison/motion/MotionRectangles" unless const_defined?(:MotionRectangles, false)
autoload :MotionRectanglesResultsFrameCacheable, "org/allbinary/media/image/comparison/motion/MotionRectanglesResultsFrameCacheable" unless const_defined?(:MotionRectanglesResultsFrameCacheable, false)

end; end; end; end; end; end

