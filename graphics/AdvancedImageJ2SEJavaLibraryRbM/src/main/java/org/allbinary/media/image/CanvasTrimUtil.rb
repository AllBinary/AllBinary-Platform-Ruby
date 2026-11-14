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
        CanvasTrimUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CanvasTrimUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CanvasTrimUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CanvasTrimUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :ImageProcessedVisitor, "org/allbinary/media/image/ImageProcessedVisitor"
autoload :ImageProcessorInput, "org/allbinary/media/image/ImageProcessorInput"

begin
    CanvasTrimUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

