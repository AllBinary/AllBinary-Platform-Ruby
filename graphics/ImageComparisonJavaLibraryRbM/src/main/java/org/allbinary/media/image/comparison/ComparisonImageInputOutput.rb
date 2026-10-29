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
require "org/allbinary/media/image/io/ImageIOInterface"

class ComparisonImageInputOutput
    include ImageIOInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def save(frame)
        commonStrings = CommonStrings.getInstance()
        if frame > 0
            imageComparisonResultFrameCacheable = (ImageComparisonResultCacheSingleton.getInstance()).get(frame)
            if imageComparisonResultFrameCacheable != nil
                imageComparisonResult = imageComparisonResultFrameCacheable.getImageComparisonResult()
                self.save(imageComparisonResult, imageComparisonResultFrameCacheable.getFrame())
            else
                @logUtil.putF("Comparison Results Not Available for Output: " + (frame).to_s, self, commonStrings.SAVE)
            end
        else
            @logUtil.putF("No Comparison Results: for first frame: " + (frame).to_s, self, commonStrings.SAVE)
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def save(imageComparisonResult, frame)
        commonStrings = CommonStrings.getInstance()
        filePathStringBuffer = StringMaker.new()
        filePathStringBuffer.append(ImageOutputData::SAVE_PATH)
        filePathStringBuffer.append(LongUtil.fillIn(frame.to_s))
        filePathStringBuffer.append(ComparisonImageInputOutput::ROOT_NAME)
        filePathStringBuffer1 = StringMaker.new()
        filePathStringBuffer1.append(filePathStringBuffer.to_s)
        filePathStringBuffer1.append("_1")
        filePathStringBuffer1.append(MediaDataFactory.getInstance().JPG.getExtension())
        filePath1 = filePathStringBuffer1.to_s
        filePathStringBuffer2 = StringMaker.new()
        filePathStringBuffer2.append(filePathStringBuffer.to_s)
        filePathStringBuffer2.append("_2")
        filePathStringBuffer2.append(MediaDataFactory.getInstance().JPG.getExtension())
        filePath2 = filePathStringBuffer2.to_s
        bufferedImageCacheables = ChangedPixelsUtil.generateBufferedImageChacheables(imageComparisonResult)
        @logUtil.putF("Comparison Image File Path 1: " + filePath1, self, commonStrings.SAVE)
        @logUtil.putF("Comparison Image File Path 2: " + filePath2, self, commonStrings.SAVE)
        bufferedImageArray = Array.new(2, nil)
        bufferedImageArray[0] = bufferedImageCacheables[0].getBufferedImage()
        bufferedImageArray[1] = bufferedImageCacheables[1].getBufferedImage()
        imagePersistanceUtil = ImagePersistanceUtil.getInstance()
        imagePersistanceUtil.saveWithImageIO(filePath1, bufferedImageArray[0])
        imagePersistanceUtil.saveWithImageIO(filePath2, bufferedImageArray[1])
    end
end

require "org/allbinary/input/automation/ImageOutputData"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/number/LongUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/util/cache/AutomaticCacheInterface"
require "org/allbinary/logic/visual/media/MediaDataFactory"
require "org/allbinary/media/image/ImagePersistanceUtil"
require "org/allbinary/media/image/cache/BufferedImageCacheable"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/image/comparison/ChangedPixelsUtil"
require "org/allbinary/media/image/comparison/ImageComparisonResult"
require "org/allbinary/media/image/comparison/ImageComparisonResultCacheSingleton"
require "org/allbinary/media/image/comparison/ImageComparisonResultFrameCacheable"

class ComparisonImageInputOutput
    ROOT_NAME = "_Changed_"
end

