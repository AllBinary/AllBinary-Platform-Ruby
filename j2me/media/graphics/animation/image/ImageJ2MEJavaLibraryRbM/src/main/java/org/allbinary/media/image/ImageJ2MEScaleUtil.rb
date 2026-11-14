#
# AllBinary Open License Version 1
# Copyright (c) 2023 AllBinary
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


class ImageJ2MEScaleUtil
    

    def self.getInstance()
        return ImageJ2MEScaleUtil.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def scaleArray(images, width, height)
        scaledImages = Array.new(images.length, nil)
        index = images.length
        while (index -= 1) >= 0
            scaledImages[index] = self.scale(images[index], width, height)
        end
        return scaledImages
    end
    

    # throws Exception
    def scale(image, width, height)
        sourceWidth = image.getWidth()
        sourceHeight = image.getHeight()
        originalData = Array.new(image.getWidth() * image.getHeight(), 0)
        image.getRGB(originalData, 0, image.getWidth(), 0, 0, image.getWidth(), image.getHeight())
        scaledData = Array.new(width * height, 0)
        heightRatioFactor = (8 * sourceHeight) / height
        widthRatioFactor = (8 * sourceWidth) / width
        scaledIndex = scaledData.length - 1
        dx = 0
        dy = 0
        index = height
        while (index -= 1) >= 0
            dy = (index * heightRatioFactor) >> 3
            index2 = width
            while (index2 -= 1) >= 0
                dx = (index2 * widthRatioFactor) >> 3
                scaledData[((scaledIndex -= 1) + 1)] = originalData[(sourceWidth * dy) + dx]
            end
        end
        scaledImage = Image.createRGBImage(scaledData, width, height, true)
        return scaledImage
    end

    def self.instance()
        ImageJ2MEScaleUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageJ2MEScaleUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageJ2MEScaleUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageJ2MEScaleUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Image, "javax/microedition/lcdui/Image"

begin
    ImageJ2MEScaleUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

