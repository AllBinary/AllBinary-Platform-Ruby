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

# require "java/awt"
# require "java/awt/image/BufferedImage"
require "org/allbinary/media/image/io/ImageIOInterface"

class MotionRectanglesImageInputOutput
    include ImageIOInterface
    attr_accessor :logUtil, :NUMBER_OF_IMAGES

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @NUMBER_OF_IMAGES = 1
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def save(frame)
        commonStrings = CommonStrings.getInstance()
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
    # Java overloaded method: Ruby keeps the last definition
    def save(motionRectangles, frame)
        commonStrings = CommonStrings.getInstance()
        filePathStringBuffer = StringMaker.new()
        filePathStringBuffer.append(ImageOutputData::SAVE_PATH)
        filePathStringBuffer.append(LongUtil.fillIn(frame.to_s))
        filePathStringBuffer.append("_")
        filePathStringBuffer.append(motionRectangles.getName())
        filePathStringBuffer1 = StringMaker.new()
        filePathStringBuffer1.append(filePathStringBuffer.to_s)
        filePathStringBuffer1.append("_1")
        filePathStringBuffer1.append(MediaDataFactory.getInstance().JPG.getExtension())
        filePathStringBuffer2 = StringMaker.new()
        filePathStringBuffer2.append(filePathStringBuffer.to_s)
        filePathStringBuffer2.append("_2")
        filePathStringBuffer2.append(MediaDataFactory.getInstance().JPG.getExtension())
        filePathStringBuffer3 = StringMaker.new()
        filePathStringBuffer3.append(filePathStringBuffer.to_s)
        filePathStringBuffer3.append(MediaDataFactory.getInstance().JPG.getExtension())
        @logUtil.putF("Motion Image File Path 1: " + filePathStringBuffer1.to_s, self, commonStrings.SAVE)
        @logUtil.putF("Motion Image File Path 2: " + filePathStringBuffer2.to_s, self, commonStrings.SAVE)
        @logUtil.putF("Motion Image File Path 2: " + filePathStringBuffer3.to_s, self, commonStrings.SAVE)
        bufferedImageCacheables = Array.new(@NUMBER_OF_IMAGES, nil)
        imageComparisonInfo = motionRectangles.getImageComparisonResult()
        originalBufferedImage = imageComparisonInfo.getBufferedImages()[0]
        bufferedImageInfo = BufferedImageInfoFactory.getInstance(imageComparisonInfo.imageWidth, imageComparisonInfo.imageHeight, originalBufferedImage.getType())
        poolInterface = BufferedImagePoolSingleton.getInstance()
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
        imagePersistanceUtil = ImagePersistanceUtil.getInstance()
        if @NUMBER_OF_IMAGES > 1
            imagePersistanceUtil.saveWithImageIO(filePathStringBuffer1.to_s, bufferedImageCacheables[1].getBufferedImage())
        end
        imagePersistanceUtil.saveWithImageIO(filePathStringBuffer2.to_s, bufferedImageCacheables[0].getBufferedImage())
        if @NUMBER_OF_IMAGES > 2
            imagePersistanceUtil.saveWithImageIO(filePathStringBuffer3.to_s, bufferedImageCacheables[2].getBufferedImage())
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/input/automation/ImageOutputData"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/number/LongUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/util/cache/AutomaticCacheInterface"
require "org/allbinary/logic/util/cache/PoolInterface"
require "org/allbinary/logic/visual/media/MediaDataFactory"
require "org/allbinary/media/image/ImagePersistanceUtil"
require "org/allbinary/media/image/cache/BufferedImageCacheable"
require "org/allbinary/media/image/cache/BufferedImageInfo"
require "org/allbinary/media/image/cache/BufferedImageInfoFactory"
require "org/allbinary/media/image/cache/BufferedImagePoolSingleton"
require "org/allbinary/media/image/comparison/ImageComparisonResult"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/image/comparison/motion/AllMotionRectanglesResultsCacheSingleton"
require "org/allbinary/media/image/comparison/motion/ConsolidatedMotionRectanglesResultsCacheSingleton"
require "org/allbinary/media/image/comparison/motion/ConstrainedMotionRectanglesResultsCacheSingleton"
require "org/allbinary/media/image/comparison/motion/MotionRectangle"
require "org/allbinary/media/image/comparison/motion/MotionRectangles"
require "org/allbinary/media/image/comparison/motion/MotionRectanglesResultsFrameCacheable"

