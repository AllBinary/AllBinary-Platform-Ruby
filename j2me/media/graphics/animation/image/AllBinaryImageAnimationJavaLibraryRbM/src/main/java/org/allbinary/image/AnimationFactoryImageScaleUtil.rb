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

# require "javax/microedition/lcdui/Image"

class AnimationFactoryImageScaleUtil
    attr_accessor :imageScaleUtil

    def initialize_fields
        @imageScaleUtil = ImageJ2MEScaleUtil.getInstance()
    end

    def initialize
        initialize_fields
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
                animationFactoryInitializationVisitor.dx = ((animationFactoryInitializationVisitor.originalDx * scaleX)).to_i
                animationFactoryInitializationVisitor.dy = ((animationFactoryInitializationVisitor.originalDy * scaleY)).to_i
            end
        else
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/animation/image/AnimationFactoryInitializationVisitor"
require "org/allbinary/animation/image/BaseImageAnimationFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/media/image/ImageJ2MEScaleUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"

class AnimationFactoryImageScaleUtil
    @@instance = AnimationFactoryImageScaleUtil.new()
end

