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
# package org.allbinary.animation.text

require "java/lang/JavaOverload"
require "org/allbinary/animation/text/TextAnimation"
require "org/allbinary/animation/text/TextInterface"

module ::Org; module Allbinary; module Animation; module Text

class CustomTextAnimation < TextAnimation
    include TextInterface
    attr_accessor :fontDebugFactory, :fontSize, :font, :lastText, :hasChanged, :textWidth

    def jfields_org_allbinary_animation_text_CustomTextAnimation
        @fontDebugFactory = ::Org::Allbinary::Graphics::Font::FontDebugFactory.getInstance()
        @fontSize = nil unless instance_variable_defined?(:@fontSize)
        @font = nil unless instance_variable_defined?(:@font)
        @lastText = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().INIT_STRING
        @hasChanged = true
        @textWidth = 0 unless instance_variable_defined?(:@textWidth)
    end
    

    def initialize(text, fontSize, animationBehavior)
        super(text, animationBehavior)
        jfields_org_allbinary_animation_text_CustomTextAnimation
        @fontSize = fontSize
        @font = ::Javax::Microedition::Lcdui::Font.getFont(::Javax::Microedition::Lcdui::Font::FACE_SYSTEM, ::Javax::Microedition::Lcdui::Font::STYLE_PLAIN, fontSize)
    end
    

    def paintXY(graphics, x, y)
        @myFontProcessor.process(graphics)
        existingFont = graphics.getFont()
        @fontDebugFactory.setFont(@font, graphics)
        CustomTextAnimation.superclass.java_super_method(:paintXYNoUpdate, 3).bind(self).call(graphics, x, y)
        @fontDebugFactory.setFont(existingFont, graphics)
    end
    java_overload :paintXY, 3
    

    def setScale(scaleX, scaleY)
        if scaleX != scaleY
            raise RuntimeError.new()
        end
        @hasChanged = true
        @font = ::Javax::Microedition::Lcdui::Font.getFont(::Javax::Microedition::Lcdui::Font::FACE_SYSTEM, ::Javax::Microedition::Lcdui::Font::STYLE_PLAIN, (((@fontSize).to_f * scaleX)).to_i)
    end
    java_overload :setScale, 2
    

    def setTextWithOnMeasure(text, textChangeListener)
        CustomTextAnimation.superclass.java_super_method(:setTextWithOnMeasure, 2).bind(self).call(text, textChangeListener)
    end
    java_overload :setTextWithOnMeasure, 2
    

    def setText(text)
        if @lastText != text
            @hasChanged = true
            @lastText = text
            CustomTextAnimation.superclass.java_super_method(:setText, 1).bind(self).call(text)
        end
    end
    java_overload :setText, 1
    

    def getText()
        return @lastText
    end
    java_overload :getText, 0
    

    def getWidth()
        if @hasChanged
            @textWidth = @font.stringWidth(@textArrayP[0])
            @hasChanged = false
        end
        return @textWidth
    end
    java_overload :getWidth, 0
    

    def getFontHeight()
        return @font.getHeight()
    end
    java_overload :getFontHeight, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :FontDebugFactory, "org/allbinary/graphics/font/FontDebugFactory" unless const_defined?(:FontDebugFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :TextChangeListener, "org/allbinary/animation/text/TextChangeListener" unless const_defined?(:TextChangeListener, false)

end; end; end; end

