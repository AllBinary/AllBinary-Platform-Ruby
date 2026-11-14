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
        AnimationFactorySpriteScaleUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AnimationFactorySpriteScaleUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AnimationFactorySpriteScaleUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AnimationFactorySpriteScaleUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Image, "javax/microedition/lcdui/Image"
autoload :Sprite, "javax/microedition/lcdui/game/Sprite"
autoload :SpriteFactory, "org/allbinary/game/layer/SpriteFactory"
autoload :OpenGLUtil, "org/allbinary/graphics/opengles/OpenGLUtil"
autoload :ImageCache, "org/allbinary/image/ImageCache"
autoload :ImageCacheFactory, "org/allbinary/image/ImageCacheFactory"
autoload :OpenGLESImageExclusionUtil, "org/allbinary/image/opengles/OpenGLESImageExclusionUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :J2SEMath, "org/allbinary/logic/math/J2SEMath"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :ImageScaleUtil, "org/allbinary/media/image/ImageScaleUtil"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    AnimationFactorySpriteScaleUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

