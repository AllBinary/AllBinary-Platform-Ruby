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

require "java/lang/JavaOverload"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation; module Text

class CustomTextAnimationFactory
    include ::Org::Allbinary::Animation::AnimationInterfaceFactoryInterface
    attr_accessor :logUtil, :animationBehaviorFactory, :basicColor, :text, :initScaleHeight, :dx, :dy, :font, :scaleProperties

    def jfields_org_allbinary_animation_text_CustomTextAnimationFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @animationBehaviorFactory = nil unless instance_variable_defined?(:@animationBehaviorFactory)
        @basicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK
        @text = nil unless instance_variable_defined?(:@text)
        @initScaleHeight = nil unless instance_variable_defined?(:@initScaleHeight)
        @dx = 0
        @dy = 0
        @font = nil unless instance_variable_defined?(:@font)
        @scaleProperties = nil unless instance_variable_defined?(:@scaleProperties)
    end
    

    def self.createDXY(text, fontSize, dx, dy, animationBehaviorFactory)
        customTextAnimationFactory = CustomTextAnimationFactory.new(text, fontSize, animationBehaviorFactory)
        customTextAnimationFactory.dx = dx
        customTextAnimationFactory.dy = dy
        return customTextAnimationFactory
    end
    

    def initialize(text, fontSize, animationBehaviorFactory)
        jfields_org_allbinary_animation_text_CustomTextAnimationFactory
        @scaleProperties = ::Org::Allbinary::Media::ScaleProperties.new()
        @text = text
        @scaleProperties.scaleHeight = fontSize - (fontSize / 4)
        @initScaleHeight = @scaleProperties.scaleHeight
        @animationBehaviorFactory = animationBehaviorFactory
        @font = ::Javax::Microedition::Lcdui::Font.getFont(::Javax::Microedition::Lcdui::Font::FACE_SYSTEM, ::Javax::Microedition::Lcdui::Font::STYLE_PLAIN, @initScaleHeight)
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
    java_overload :getInstance, 1
    

    def setInitialScale(scaleProperties)
    end
    java_overload :setInitialScale, 1
    

    def getWidth()
        return @font.stringWidth(@text)
    end
    java_overload :getWidth, 0
    

    def getHeight()
        return @font.getHeight()
    end
    java_overload :getHeight, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :AdjustCustomTextAnimation, "org/allbinary/animation/text/AdjustCustomTextAnimation" unless const_defined?(:AdjustCustomTextAnimation, false)
autoload :CustomTextAnimation, "org/allbinary/animation/text/CustomTextAnimation" unless const_defined?(:CustomTextAnimation, false)

end; end; end; end

