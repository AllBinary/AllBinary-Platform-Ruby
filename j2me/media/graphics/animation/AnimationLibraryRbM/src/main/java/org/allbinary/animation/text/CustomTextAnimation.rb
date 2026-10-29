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

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/text/TextAnimation"
require "org/allbinary/animation/text/TextInterface"

class CustomTextAnimation < TextAnimation
    include TextInterface
    attr_accessor :fontDebugFactory, :fontSize, :font, :lastText, :hasChanged, :textWidth

    def initialize_fields
        @fontDebugFactory = FontDebugFactory.getInstance()
        @fontSize = nil
        @font = nil
        @lastText = StringUtil.getInstance().INIT_STRING
        @hasChanged = true
        @textWidth = 0
    end
    

    def initialize(text, fontSize, animationBehavior)
        super(text, animationBehavior)
        initialize_fields
        @fontSize = fontSize
        @font = Font.getFont(Font::FACE_SYSTEM, Font::STYLE_PLAIN, fontSize)
    end
    

    def paintXY(graphics, x, y)
        @myFontProcessor.process(graphics)
        existingFont = graphics.getFont()
        @fontDebugFactory.setFont(@font, graphics)
        self.class.superclass.instance_method(:paintXYNoUpdate).bind(self).call(graphics, x, y)
        @fontDebugFactory.setFont(existingFont, graphics)
    end
    

    def setScale(scaleX, scaleY)
        if scaleX != scaleY
            raise RuntimeError.new()
        end
        @hasChanged = true
        @font = Font.getFont(Font::FACE_SYSTEM, Font::STYLE_PLAIN, (((@fontSize).to_f * scaleX)).to_i)
    end
    

    def setText(text)
        if @lastText != text
            @hasChanged = true
            @lastText = text
            super(text)
        end
    end
    

    def getText()
        return @lastText
    end
    

    def getWidth()
        if @hasChanged
            @textWidth = @font.stringWidth(@textArrayP[0])
            @hasChanged = false
        end
        return @textWidth
    end
    

    def getFontHeight()
        return @font.getHeight()
    end
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/graphics/font/FontDebugFactory"
require "org/allbinary/logic/string/StringUtil"

