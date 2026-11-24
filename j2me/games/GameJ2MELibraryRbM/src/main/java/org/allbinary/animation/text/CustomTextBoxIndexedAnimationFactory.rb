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

class CustomTextBoxIndexedAnimationFactory
    include ::Org::Allbinary::Animation::AnimationInterfaceFactoryInterface
    attr_accessor :logUtil, :scaleProperties, :maxLength

    def jfields_org_allbinary_animation_text_CustomTextBoxIndexedAnimationFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @scaleProperties = nil unless instance_variable_defined?(:@scaleProperties)
        @maxLength = nil unless instance_variable_defined?(:@maxLength)
    end
    

    def initialize(fontSize, maxLength)
        jfields_org_allbinary_animation_text_CustomTextBoxIndexedAnimationFactory
        @scaleProperties = ::Org::Allbinary::Media::ScaleProperties.new()
        @scaleProperties.scaleHeight = fontSize
        @maxLength = maxLength
    end
    

    # throws Exception
    def getInstance(instanceId)
        abToGBUtil = ::Org::Allbinary::Game::Canvas::ABToGBUtil.getInstance()
        abCanvas = abToGBUtil.abCanvas
        font = ::Javax::Microedition::Lcdui::Font.getFont(::Javax::Microedition::Lcdui::Font::FACE_SYSTEM, ::Javax::Microedition::Lcdui::Font::STYLE_PLAIN, @scaleProperties.scaleHeight)
        customTextBox = CustomTextBox2.new(abCanvas.getCustomCommandListener(), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, @maxLength, ::Javax::Microedition::Lcdui::TextField::ANY, font, abCanvas.getLayerManager().getBackgroundBasicColor(), abCanvas.getLayerManager().getForegroundBasicColor())
        return CustomTextBoxIndexedAnimation.new(customTextBox)
    end
    java_overload :getInstance, 1
    

    def setInitialScale(scaleProperties)
        fontSize = @scaleProperties.scaleHeight
        @scaleProperties = scaleProperties
        if @scaleProperties.scaleHeight < 6
            @scaleProperties.scaleHeight = fontSize
        end
    end
    java_overload :setInitialScale, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :TextField, "javax/microedition/lcdui/TextField" unless const_defined?(:TextField, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :CustomTextBox, "org/allbinary/graphics/form/item/CustomTextBox" unless const_defined?(:CustomTextBox, false); end; end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Game; module Canvas; autoload :ABToGBUtil, "org/allbinary/game/canvas/ABToGBUtil" unless const_defined?(:ABToGBUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :CustomTextBox2, "org/allbinary/animation/text/CustomTextBox2" unless const_defined?(:CustomTextBox2, false)
autoload :CustomTextBoxIndexedAnimation, "org/allbinary/animation/text/CustomTextBoxIndexedAnimation" unless const_defined?(:CustomTextBoxIndexedAnimation, false)

end; end; end; end

