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
# package org.allbinary.animation.text

# require "javax/microedition/lcdui/Font"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

class CustomTextAnimationFactory
    include AnimationInterfaceFactoryInterface
    attr_accessor :logUtil, :animationBehaviorFactory, :basicColor, :text, :initScaleHeight, :dx, :dy, :font, :scaleProperties

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @animationBehaviorFactory = nil
        @basicColor = BasicColorFactory.getInstance().BLACK
        @text = nil
        @initScaleHeight = nil
        @dx = 0
        @dy = 0
        @font = nil
        @scaleProperties = nil
    end
    

    def self.createDXY(text, fontSize, dx, dy, animationBehaviorFactory)
        customTextAnimationFactory = CustomTextAnimationFactory.new(text, fontSize, animationBehaviorFactory)
        customTextAnimationFactory.dx = dx
        customTextAnimationFactory.dy = dy
        return customTextAnimationFactory
    end
    

    def initialize(text, fontSize, animationBehaviorFactory)
        initialize_fields
        @scaleProperties = ScaleProperties.new()
        @text = text
        @scaleProperties.scaleHeight = fontSize - (fontSize / 4)
        @initScaleHeight = @scaleProperties.scaleHeight
        @animationBehaviorFactory = animationBehaviorFactory
        @font = Font.getFont(Font::FACE_SYSTEM, Font::STYLE_PLAIN, @initScaleHeight)
    end
    

    # throws Exception
    def getInstance(instanceId)
        customTextAnimation = nil
        if @dx != 0 || @dy != 0
            customTextAnimation = AdjustCustomTextAnimation.new(@text, @scaleProperties.scaleHeight, @dx, @dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            customTextAnimation = CustomTextAnimation.new(@text, @scaleProperties.scaleHeight, @animationBehaviorFactory.getOrCreateInstance())
        end
        customTextAnimation.setBasicColorP(@basicColor)
        return customTextAnimation
    end
    

    def setInitialScale(scaleProperties)
    end
    

    def getWidth()
        return @font.stringWidth(@text)
    end
    

    def getHeight()
        return @font.getHeight()
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/animation/text/AdjustCustomTextAnimation"
require "org/allbinary/animation/text/CustomTextAnimation"

