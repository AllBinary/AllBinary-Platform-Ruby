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
# package org.allbinary.image


module ::Org; module Allbinary; module Image

class AnimationFactoryImageScaleUtil
    attr_accessor :imageScaleUtil

    def jfields_org_allbinary_image_AnimationFactoryImageScaleUtil
        @imageScaleUtil = ::Org::Allbinary::Media::Image::ImageJ2MEScaleUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_image_AnimationFactoryImageScaleUtil
    end
    

    def self.getInstance()
        return AnimationFactoryImageScaleUtil.instance
    end
    

    # throws Exception
    def createImage(image, width, height, scaleWidth, scaleHeight)
        scaledImage = nil
        if scaleWidth != 0 && scaleHeight != 0
            scaleX = ((scaleWidth).to_f) / ((width).to_f)
            scaleY = ((scaleHeight).to_f) / ((height).to_f)
            if (scaleX == 1.0 && scaleY == 1.0) || (scaleX == 0.0 || scaleY == 0.0)
                scaledImage = image
            else
                scaledWidth = ((scaleX * (width).to_f)).to_i
                scaledHeight = ((scaleY * (height).to_f)).to_i
                scaledImage = @imageScaleUtil.scale(image, scaledWidth, scaledHeight)
            end
        else
            scaledImage = image
        end
        return scaledImage
    end
    

    # throws Exception
    def processAdjust(baseImageAnimationFactory)
        scaleProperties = baseImageAnimationFactory.getScalePropertiesP()
        if scaleProperties.scaleWidth != 0 && scaleProperties.scaleHeight != 0
            animationFactoryInitializationVisitor = baseImageAnimationFactory.getAnimationFactoryInitializationVisitorP()
            scaleX = ((scaleProperties.scaleWidth).to_f) / ((animationFactoryInitializationVisitor.width).to_f)
            scaleY = ((scaleProperties.scaleHeight).to_f) / ((animationFactoryInitializationVisitor.height).to_f)
            if (scaleX == 1.0 && scaleY == 1.0) || (scaleX == 0.0 || scaleY == 0.0)
            else
                animationFactoryInitializationVisitor.dx = (((animationFactoryInitializationVisitor.originalDx * scaleX)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
                animationFactoryInitializationVisitor.dy = (((animationFactoryInitializationVisitor.originalDy * scaleY)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            end
        else
        end
    end

    def self.instance()
        AnimationFactoryImageScaleUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AnimationFactoryImageScaleUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AnimationFactoryImageScaleUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AnimationFactoryImageScaleUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; module Image; autoload :AnimationFactoryInitializationVisitor, "org/allbinary/animation/image/AnimationFactoryInitializationVisitor" unless const_defined?(:AnimationFactoryInitializationVisitor, false); end; end; end; end
module ::Org; module Allbinary; module Animation; module Image; autoload :BaseImageAnimationFactory, "org/allbinary/animation/image/BaseImageAnimationFactory" unless const_defined?(:BaseImageAnimationFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageJ2MEScaleUtil, "org/allbinary/media/image/ImageJ2MEScaleUtil" unless const_defined?(:ImageJ2MEScaleUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    AnimationFactoryImageScaleUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

