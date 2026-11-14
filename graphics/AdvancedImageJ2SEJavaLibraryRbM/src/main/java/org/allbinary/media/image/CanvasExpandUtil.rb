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
        CanvasExpandUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CanvasExpandUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CanvasExpandUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CanvasExpandUtil"
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
autoload :ImageUtil, "org/allbinary/media/image/ImageUtil"

begin
    CanvasExpandUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

