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

# require "javax/microedition/lcdui/Image"

class ImageJ2MEScaleUtil
    

    def self.getInstance()
        return ImageJ2MEScaleUtil.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def scaleArray(images, width, height)
        (0...images.length).each do |index|
            image = images[index]
            images[index] = ImageScaleUtil.getInstance().createImage2(GameFeatureImageCacheFactory.getInstance(), image, (width).to_f / 2.0, (image.getWidth()).to_f, (height).to_f, (image.getHeight()).to_f, false)
        end
        return images
    end
    

    # throws Exception
    def scale(image, width, height)
        return ImageScaleUtil.getInstance().createImage2(GameFeatureImageCacheFactory.getInstance(), image, (width).to_f, (image.getWidth()).to_f, (height).to_f, (image.getHeight()).to_f, false)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/image/GameFeatureImageCacheFactory"
require "org/allbinary/media/image/ImageScaleUtil"

class ImageJ2MEScaleUtil
    @@instance = ImageJ2MEScaleUtil.new()
end

