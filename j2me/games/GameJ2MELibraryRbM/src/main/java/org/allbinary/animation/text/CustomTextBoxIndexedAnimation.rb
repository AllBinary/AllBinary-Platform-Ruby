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
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/game/input/event/RawKeyEventListener"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/animation/text/TextInterface"

module ::Org; module Allbinary; module Animation; module Text

class CustomTextBoxIndexedAnimation < ::Org::Allbinary::Animation::IndexedAnimation
    include ::Org::Allbinary::Game::Input::Event::RawKeyEventListener
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    include TextInterface
    attr_accessor :customTextBox, :lastText, :hasChanged, :textChangeListener

    def jfields_org_allbinary_animation_text_CustomTextBoxIndexedAnimation
        @customTextBox = nil unless instance_variable_defined?(:@customTextBox)
        @lastText = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().INIT_STRING
        @hasChanged = true
        @textChangeListener = TextChangeListener.getInstance()
    end
    

    def initialize(customTextBox)
        super(::Org::Allbinary::Animation::AnimationBehavior.getInstance())
        jfields_org_allbinary_animation_text_CustomTextBoxIndexedAnimation
        @customTextBox = customTextBox
    end
    

    def setBasicColorP(basicColor)
        @customTextBox.getTextFieldItem().setForegroundBasicColorP(basicColor)
    end
    java_overload :setBasicColorP, 1
    

    def setBackgroundBasicColorP(basicColor)
        @customTextBox.getTextFieldItem().setBackgroundBasicColorP(basicColor)
    end
    java_overload :setBackgroundBasicColorP, 1
    

    def setTextWithOnMeasure(text, textChangeListener)
        self.setText(text)
        @textChangeListener = textChangeListener
    end
    java_overload :setTextWithOnMeasure, 2
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @textChangeListener.onMeasure()
        @textChangeListener = TextChangeListener.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def setText(text)
        if @lastText != text
            @hasChanged = true
            @lastText = text
            @customTextBox.getTextFieldItem().setString(text)
        end
    end
    java_overload :setText, 1
    

    def getText()
        return @customTextBox.getTextFieldItem().getString()
    end
    java_overload :getText, 0
    

    def onEventRaw(keyCode, deviceId, repeated)
        @customTextBox.onEventRaw(keyCode, deviceId, repeated)
    end
    java_overload :onEventRaw, 3
    

    def getFontHeight()
        return @customTextBox.getTextFieldItem().getFontHeight()
    end
    java_overload :getFontHeight, 0
    

    def paintXY(graphics, x, y)
        @customTextBox.paintXY(graphics, x, y)
    end
    java_overload :paintXY, 3
    

    def paintThreedXYZ(graphics, x, y, z)
    end
    java_overload :paintThreedXYZ, 4
    

    def getWidth()
        return CustomTextBoxIndexedAnimation.superclass.java_super_method(:getWidth, 0).bind(self).call()
    end
    java_overload :getWidth, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :CustomTextBox, "org/allbinary/graphics/form/item/CustomTextBox" unless const_defined?(:CustomTextBox, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :TextChangeListener, "org/allbinary/animation/text/TextChangeListener" unless const_defined?(:TextChangeListener, false)

end; end; end; end

