# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.media.image

# require "java/awt/image/BufferedImage"

class CanvasExpandUtil
    attr_accessor :logUtil, :stringUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @stringUtil = StringUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CanvasExpandUtil.instance
    end
    

    # throws Exception
    def process(imageProcessorInput, increaseX, increaseY, visitor)
        imageUtil = ImageUtil.getInstance()
        bufferedImageArray = imageProcessorInput.getBufferedImageArray()
        subBufferedImageArray = Array.new(bufferedImageArray.length, nil)
        size = bufferedImageArray.length
        bufferedImage = nil
        (0...size).each do |index|
            bufferedImage = bufferedImageArray[index]
            subBufferedImageArray[index] = imageUtil.createBufferedImage(bufferedImage, bufferedImage.getWidth() + increaseX, bufferedImage.getHeight() + increaseY, false)
            visitor.visit(subBufferedImageArray[index], @stringUtil.EMPTY_STRING, index)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/media/image/ImageProcessedVisitor"
require "org/allbinary/media/image/ImageProcessorInput"
require "org/allbinary/media/image/ImageUtil"

class CanvasExpandUtil
    @@instance = CanvasExpandUtil.new()
end

