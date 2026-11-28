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


module ::Org; module Allbinary; module Image; module Sprite

class AnimationFactorySpriteScaleUtil
    attr_accessor :imageCache, :imageScaleUtil, :openGLUtil, :j2seMath, :openGLESImageExclusionUtil

    def jfields_org_allbinary_image_sprite_AnimationFactorySpriteScaleUtil
        @imageCache = ::Org::Allbinary::Image::ImageCacheFactory.getInstance()
        @imageScaleUtil = ::Org::Allbinary::Media::Image::ImageScaleUtil.getInstance()
        @openGLUtil = ::Org::Allbinary::Graphics::Opengles::OpenGLUtil.getInstance()
        @j2seMath = ::Org::Allbinary::Logic::MathPackage::J2SEMath.getInstance()
        @openGLESImageExclusionUtil = ::Org::Allbinary::Image::Opengles::OpenGLESImageExclusionUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_image_sprite_AnimationFactorySpriteScaleUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    # throws Exception
    def createImage(image, width, height, scaleWidth, scaleHeight)
        spriteFactory = ::Org::Allbinary::Game::Layer::SpriteFactory.getInstance()
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

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; module Game; autoload :Sprite, "javax/microedition/lcdui/game/Sprite" unless const_defined?(:Sprite, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :SpriteFactory, "org/allbinary/game/layer/SpriteFactory" unless const_defined?(:SpriteFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLUtil, "org/allbinary/graphics/opengles/OpenGLUtil" unless const_defined?(:OpenGLUtil, false); end; end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCache, "org/allbinary/image/ImageCache" unless const_defined?(:ImageCache, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCacheFactory, "org/allbinary/image/ImageCacheFactory" unless const_defined?(:ImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESImageExclusionUtil, "org/allbinary/image/opengles/OpenGLESImageExclusionUtil" unless const_defined?(:OpenGLESImageExclusionUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :J2SEMath, "org/allbinary/logic/math/J2SEMath" unless const_defined?(:J2SEMath, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageScaleUtil, "org/allbinary/media/image/ImageScaleUtil" unless const_defined?(:ImageScaleUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    AnimationFactorySpriteScaleUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

