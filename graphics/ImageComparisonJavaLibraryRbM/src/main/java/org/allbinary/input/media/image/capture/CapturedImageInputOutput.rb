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
# package org.allbinary.input.media.image.capture

# require "java/awt/image/BufferedImage"
require "org/allbinary/media/image/io/ImageIOInterface"

class CapturedImageInputOutput
    include ImageIOInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception
    def save(frame)
        commonStrings = CommonStrings.getInstance()
        capturedBufferedImageCacheable = ((CapturedBufferedImagesCacheSingleton.getInstance()).get(frame))
        @logUtil.putF(("Saving: " + capturedBufferedImageCacheable.to_s), self, commonStrings.SAVE)
        self.save(capturedBufferedImageCacheable.getBufferedImage(), frame)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def save(bufferedImage, frame)
        commonStrings = CommonStrings.getInstance()
        imageUtil = ImageUtil.getInstance()
        filePathStringBuffer = StringMaker.new()
        filePathStringBuffer.append(ImageOutputData::SAVE_PATH)
        filePathStringBuffer.append(LongUtil.fillIn(frame.to_s))
        filePathStringBuffer.append(MediaDataFactory.getInstance().JPG.getExtension())
        filePath = filePathStringBuffer.to_s
        @logUtil.putF(("Image File Path: " + filePath + imageUtil.toString(bufferedImage)), self, commonStrings.SAVE)
        imagePersistanceUtil = ImagePersistanceUtil.getInstance()
        imagePersistanceUtil.saveWithImageIO(filePath, bufferedImage)
    end
end

require "org/allbinary/input/automation/ImageOutputData"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/number/LongUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/util/cache/AutomaticCacheInterface"
require "org/allbinary/logic/visual/media/MediaDataFactory"
require "org/allbinary/media/image/ImagePersistanceUtil"
require "org/allbinary/media/image/ImageUtil"
require "org/allbinary/media/image/cache/BufferedImageFrameCacheable"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton"

