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
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/game/input/event/RawKeyEventListener"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/animation/text/TextInterface"

class CustomTextBoxIndexedAnimation < IndexedAnimation
    include RawKeyEventListener
    include UpdateMyFontInterface
    include TextInterface
    attr_accessor :customTextBox, :lastText, :hasChanged, :textChangeListener

    def initialize_fields
        @customTextBox = nil
        @lastText = StringUtil.getInstance().INIT_STRING
        @hasChanged = true
        @textChangeListener = TextChangeListener.getInstance()
    end
    

    def initialize(customTextBox)
        super(AnimationBehavior.getInstance())
        initialize_fields
        @customTextBox = customTextBox
    end
    

    def setBasicColorP(basicColor)
        @customTextBox.getTextFieldItem().setForegroundBasicColorP(basicColor)
    end
    

    def setBackgroundBasicColorP(basicColor)
        @customTextBox.getTextFieldItem().setBackgroundBasicColorP(basicColor)
    end
    

    def setTextWithOnMeasure(text, textChangeListener)
        self.setText(text)
        @textChangeListener = textChangeListener
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @textChangeListener.onMeasure()
        @textChangeListener = TextChangeListener.getInstance()
    end
    

    def setText(text)
        if @lastText != text
            @hasChanged = true
            @lastText = text
            @customTextBox.getTextFieldItem().setString(text)
        end
    end
    

    def getText()
        return @customTextBox.getTextFieldItem().getString()
    end
    

    def onEventRaw(keyCode, deviceId, repeated)
        @customTextBox.onEventRaw(keyCode, deviceId, repeated)
    end
    

    def getFontHeight()
        return @customTextBox.getTextFieldItem().getFontHeight()
    end
    

    def paintXY(graphics, x, y)
        @customTextBox.paintXY(graphics, x, y)
    end
    

    def paintThreedXYZ(graphics, x, y, z)
    end
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/form/item/CustomTextBox"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/animation/text/TextChangeListener"

