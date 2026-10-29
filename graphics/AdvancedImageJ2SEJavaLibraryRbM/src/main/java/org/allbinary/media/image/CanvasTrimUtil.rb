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
# require "java/io/IOException"

class CanvasTrimUtil
    attr_accessor :logUtil, :stringUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @stringUtil = StringUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CanvasTrimUtil.instance
    end
    

    # throws IOException
    def process(imageProcessorInput, cutCanvasFromLeftReduction, cutCanvasFromTopReduction, cutCanvasFromRightReduction, cutCanvasFromBottomReduction, visitor)
        bufferedImageArray = imageProcessorInput.getBufferedImageArray()
        subBufferedImageArray = Array.new(bufferedImageArray.length, nil)
        size = bufferedImageArray.length
        bufferedImage = nil
        (0...size).each do |index|
            bufferedImage = bufferedImageArray[index]
            subBufferedImageArray[index] = bufferedImage.getSubimage(cutCanvasFromLeftReduction, cutCanvasFromTopReduction, bufferedImage.getWidth() - cutCanvasFromLeftReduction - cutCanvasFromRightReduction, bufferedImage.getHeight() - cutCanvasFromTopReduction - cutCanvasFromBottomReduction)
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

class CanvasTrimUtil
    @@instance = CanvasTrimUtil.new()
end

