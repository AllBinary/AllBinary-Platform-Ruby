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

class ImageArrayRotationUtil
    attr_accessor :logUtil, :commonStrings, :TOTAL_ANGLE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @TOTAL_ANGLE = "totalAngle: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ImageArrayRotationUtil.instance
    end
    

    # throws IOException
    def process(imageProcessorInput, input, visitor)
        totalAngle = nil
        if input == @commonStrings.UP
            totalAngle = (-90).to_s
        elsif input == @commonStrings.DOWN
            totalAngle = (90).to_s
        else
            totalAngle = (input).to_s
        end
        generatedBufferedImage = nil
        bufferedImageArray = imageProcessorInput.getBufferedImageArray()
        (0...bufferedImageArray.length).each do |index|
            @logUtil.putF(@TOTAL_ANGLE + (totalAngle).to_s, self, @commonStrings.RUN)
            generatedBufferedImage = ImageJ2SERotationUtil.getInstance().getRotatedImage(bufferedImageArray[index], totalAngle.to_i)
            visitor.visit(generatedBufferedImage, input, index)
        end
    end

    def self.instance()
        ImageArrayRotationUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageArrayRotationUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageArrayRotationUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageArrayRotationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ImageJ2SERotationUtil, "org/allbinary/media/image/ImageJ2SERotationUtil"
autoload :ImageProcessedVisitor, "org/allbinary/media/image/ImageProcessedVisitor"
autoload :ImageProcessorInput, "org/allbinary/media/image/ImageProcessorInput"

begin
    ImageArrayRotationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

