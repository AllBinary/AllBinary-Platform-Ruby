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

# require "javax/microedition/lcdui/Image"

class ImageCreationUtil
    

    def self.getInstance()
        return ImageCreationUtil.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def createImageWH(width, height)
        image = GameFeatureImageCacheFactory.getInstance().get(self.class.name, width, height)
        return image
    end
    

    # throws Exception
    def createImage(width, height, maxScaleX, maxScaleY)
        image = GameFeatureImageCacheFactory.getInstance().get(self.class.name, (((width).to_f * maxScaleX)).to_i + 1, (((height).to_f * maxScaleY)).to_i + 1)
        return image
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/image/GameFeatureImageCacheFactory"

class ImageCreationUtil
    @@instance = ImageCreationUtil.new()
end

