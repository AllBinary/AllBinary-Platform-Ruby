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

require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

class CustomTextBoxIndexedAnimationFactory
    include AnimationInterfaceFactoryInterface
    attr_accessor :logUtil, :scaleProperties, :maxLength

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @scaleProperties = nil
        @maxLength = nil
    end
    

    def initialize(fontSize, maxLength)
        initialize_fields
        @scaleProperties = ScaleProperties.new()
        @scaleProperties.scaleHeight = fontSize
        @maxLength = maxLength
    end
    

    # throws Exception
    def getInstance(instanceId)
        abToGBUtil = ABToGBUtil.getInstance()
        abCanvas = abToGBUtil.abCanvas
        font = Font.getFont(Font::FACE_SYSTEM, Font::STYLE_PLAIN, @scaleProperties.scaleHeight)
        customTextBox = CustomTextBox2.new(abCanvas.getCustomCommandListener(), StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, @maxLength, TextField::ANY, font, abCanvas.getLayerManager().getBackgroundBasicColor(), abCanvas.getLayerManager().getForegroundBasicColor())
        return CustomTextBoxIndexedAnimation.new(customTextBox)
    end
    

    def setInitialScale(scaleProperties)
        fontSize = @scaleProperties.scaleHeight
        @scaleProperties = scaleProperties
        if @scaleProperties.scaleHeight < 6
            @scaleProperties.scaleHeight = fontSize
        end
    end
end

autoload :Font, "javax/microedition/lcdui/Font"
autoload :TextField, "javax/microedition/lcdui/TextField"
autoload :CustomTextBox, "org/allbinary/graphics/form/item/CustomTextBox"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :ABToGBUtil, "org/allbinary/game/canvas/ABToGBUtil"
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :ScaleProperties, "org/allbinary/media/ScaleProperties"
autoload :CustomTextBox2, "org/allbinary/animation/text/CustomTextBox2"
autoload :CustomTextBoxIndexedAnimation, "org/allbinary/animation/text/CustomTextBoxIndexedAnimation"

