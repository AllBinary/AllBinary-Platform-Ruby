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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/image/ImageJ2SERotationUtil"
require "org/allbinary/media/image/ImageProcessedVisitor"
require "org/allbinary/media/image/ImageProcessorInput"

class ImageArrayRotationUtil
    @@instance = ImageArrayRotationUtil.new()
end

