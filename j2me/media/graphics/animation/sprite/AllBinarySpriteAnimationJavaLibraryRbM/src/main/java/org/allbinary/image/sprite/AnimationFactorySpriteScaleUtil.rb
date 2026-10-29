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
# package org.allbinary.image.sprite

# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/game/Sprite"

class AnimationFactorySpriteScaleUtil
    attr_accessor :imageCache, :imageScaleUtil, :openGLUtil, :j2seMath, :openGLESImageExclusionUtil

    def initialize_fields
        @imageCache = ImageCacheFactory.getInstance()
        @imageScaleUtil = ImageScaleUtil.getInstance()
        @openGLUtil = OpenGLUtil.getInstance()
        @j2seMath = J2SEMath.getInstance()
        @openGLESImageExclusionUtil = OpenGLESImageExclusionUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AnimationFactorySpriteScaleUtil.instance
    end
    

    # throws Exception
    def createImage(image, width, height, scaleWidth, scaleHeight)
        spriteFactory = SpriteFactory.getInstance()
        sprite = nil
        scaledImage = nil
        if scaleWidth != 0 && scaleHeight != 0
            scaleX = ((scaleWidth).to_f) / ((width).to_f)
            scaleY = ((scaleHeight).to_f) / ((height).to_f)
            if (scaleX == 1.0 && scaleY == 1.0) || (scaleX == 0.0 || scaleY == 0.0)
                scaledImage = @openGLUtil.addImage(image)
                sprite = spriteFactory.createSprite(scaledImage, width, height)
            else
                if @openGLESImageExclusionUtil.isCustomScaling(image)
                    width2 = @j2seMath.round(((scaleWidth)).to_f - 0.5)
                    height2 = @j2seMath.round(((scaleHeight)).to_f - 0.5)
                    multiplesOf16Width = width2 / 16
                    by16Width = multiplesOf16Width * 16
                    scaleX = ((by16Width).to_f) / (width).to_f
                    multiplesOf16Height = height2 / 16
                    by16Height = multiplesOf16Height * 16
                    scaleY = ((by16Height).to_f) / (height).to_f
                    if scaleWidth < width
                        scaleX = scaleX * 2.35
                    end
                    if scaleHeight < height
                        scaleY = scaleY * 2.35
                    end
                end
                scaledImage = @imageScaleUtil.createImage2(@imageCache, image, scaleX, 1.0, scaleY, 1.0, true)
                sprite = spriteFactory.createSprite(scaledImage, (((width).to_f * scaleX)).to_i, (((height).to_f * scaleY)).to_i)
            end
        else
            scaledImage = @openGLUtil.addImage(image)
            sprite = spriteFactory.createSprite(scaledImage, width, height)
        end
        return sprite
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/SpriteFactory"
require "org/allbinary/graphics/opengles/OpenGLUtil"
require "org/allbinary/image/ImageCache"
require "org/allbinary/image/ImageCacheFactory"
require "org/allbinary/image/opengles/OpenGLESImageExclusionUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/math/J2SEMath"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/image/ImageScaleUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"

class AnimationFactorySpriteScaleUtil
    @@instance = AnimationFactorySpriteScaleUtil.new()
end

