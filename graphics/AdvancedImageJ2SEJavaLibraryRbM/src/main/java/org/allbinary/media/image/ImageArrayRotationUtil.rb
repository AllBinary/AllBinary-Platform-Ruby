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

module ::Org; module Allbinary; module Media; module Image

class ImageArrayRotationUtil
    attr_accessor :logUtil, :commonStrings, :TOTAL_ANGLE

    def jfields_org_allbinary_media_image_ImageArrayRotationUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @TOTAL_ANGLE = "totalAngle: "
    end

    def initialize
        jfields_org_allbinary_media_image_ImageArrayRotationUtil
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

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :ImageJ2SERotationUtil, "org/allbinary/media/image/ImageJ2SERotationUtil" unless const_defined?(:ImageJ2SERotationUtil, false)
autoload :ImageProcessedVisitor, "org/allbinary/media/image/ImageProcessedVisitor" unless const_defined?(:ImageProcessedVisitor, false)
autoload :ImageProcessorInput, "org/allbinary/media/image/ImageProcessorInput" unless const_defined?(:ImageProcessorInput, false)

begin
    ImageArrayRotationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

