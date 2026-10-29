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
# package org.allbinary.image

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"

class AnimationFrameToImageUtil
    

    def self.getInstance()
        return AnimationFrameToImageUtil.instance
    end
    

    # throws Exception
    def getInstanceTranslate(width, height, animationInterface)
        image = GameFeatureImageCacheFactory.getInstance().get(AnimationFrameToImageUtil.instance.class.name, ((width * 3) >> 1), ((height * 3) >> 1))
        graphics = image.getGraphics()
        tranlateX = (width >> 2)
        tranlateY = (height >> 2)
        graphics.translate(tranlateX, tranlateY)
        animationInterface.paintXY(graphics, 0, 0)
        graphics.translate(-tranlateX, -tranlateY)
        return image
    end
    

    # throws Exception
    def getInstanceWH(width, height, animationInterface)
        image = GameFeatureImageCacheFactory.getInstance().get(AnimationFrameToImageUtil.instance.class.name, width, height)
        graphics = image.getGraphics()
        animationInterface.paintXY(graphics, 0, 0)
        return image
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/image/GameFeatureImageCacheFactory"

class AnimationFrameToImageUtil
    @@instance = AnimationFrameToImageUtil.new()
end

