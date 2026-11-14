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
# package org.allbinary.media.image


class ImageToRotationImageArrayUtil
    

    def self.getInstance()
        return ImageToRotationImageArrayUtil.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def generate(image, angleIncrement, totalAngle)
        imageRotationUtil = ImageRotationUtil.getInstance()
        totalFrames = totalAngle / angleIncrement
        imageArray = Array.new(totalFrames, nil)
        imageArray[0] = image
        (1...totalFrames).each do |index|
            imageArray[index] = imageRotationUtil.createRotatedImage(image, index * angleIncrement)
        end
        return imageArray
    end

    def self.instance()
        ImageToRotationImageArrayUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageToRotationImageArrayUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageToRotationImageArrayUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageToRotationImageArrayUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Image, "javax/microedition/lcdui/Image"
autoload :ImageRotationUtil, "org/allbinary/media/image/ImageRotationUtil"

begin
    ImageToRotationImageArrayUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

