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

autoload :ImageOutputData, "org/allbinary/input/automation/ImageOutputData"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :LongUtil, "org/allbinary/logic/java/number/LongUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :AutomaticCacheInterface, "org/allbinary/logic/util/cache/AutomaticCacheInterface"
autoload :MediaDataFactory, "org/allbinary/logic/visual/media/MediaDataFactory"
autoload :ImagePersistanceUtil, "org/allbinary/media/image/ImagePersistanceUtil"
autoload :ImageUtil, "org/allbinary/media/image/ImageUtil"
autoload :BufferedImageFrameCacheable, "org/allbinary/media/image/cache/BufferedImageFrameCacheable"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :CapturedBufferedImagesCacheSingleton, "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton"

