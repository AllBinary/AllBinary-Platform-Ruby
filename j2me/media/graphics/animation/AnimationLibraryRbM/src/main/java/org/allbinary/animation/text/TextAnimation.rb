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

require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

class TextAnimation < IndexedAnimation
    include UpdateMyFontInterface
    attr_accessor :updateMyFontProcessor, :myFontProcessor, :textArrayP, :anchor, :fontHeight, :offsetY, :textChangeListener

    def initialize_fields
        @updateMyFontProcessor = UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
        @anchor = Anchor::TOP_LEFT
        @fontHeight = 0
        @offsetY = 0
        @textChangeListener = TextChangeListener.getInstance()
    end
    

    def initialize(text, animationBehavior)
        super(animationBehavior)
        initialize_fields
        self.setText(text)
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        adjustedFontHeight = (-((@fontHeight).to_f * 2.00)).to_i
        @offsetY = (SWTJOGLProcessor.getInstance().isJOGL() ? adjustedFontHeight : 0)
        @textChangeListener.onMeasure()
        @textChangeListener = TextChangeListener.getInstance()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    # throws Exception
    def nextFrame()
    end
    

    def paintXY(graphics, x, y)
        @myFontProcessor.process(graphics)
        self.paintXYNoUpdate(graphics, x, y)
    end
    

    def paintXYNoUpdate(graphics, x, y)
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        size = @textArrayP.length
        (0...size).each do |index|
            graphics.drawString(@textArrayP[index], x, y + @offsetY + (index * @fontHeight), @anchor)
        end
    end
    

    def setTextWithOnMeasure(text, textChangeListener)
        self.setText(text)
        @textChangeListener = textChangeListener
    end
    

    def setText(text)
        list = BasicArrayListD.new()
        if text.length > 0
            index = 0
            startIndex = 0
            endIndex = 0
            while index >= 0
                startIndex = index
                index = (text.index("\n", startIndex) || -1)
                endIndex = index
                if index < 0
                    endIndex = text.length
                end
                list.add(text[startIndex...endIndex])
                if index < 0
                    break
                end
                index += 1
            end
        end
        if list.size() > 0
            textArray = Array.new(list.size(), nil)
            size = list.size()
            (0...size).each do |index|
                textArray[index] = list.get(index)
            end
            @textArrayP = textArray
        else
            @textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
        end
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def getTextArray()
        return @textArrayP
    end
    

    def getFontHeight()
        return @fontHeight
    end
end

autoload :Font, "javax/microedition/lcdui/Font"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior"
autoload :Anchor, "org/allbinary/graphics/Anchor"
autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor"
autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor"
autoload :SWTJOGLProcessor, "org/allbinary/graphics/threed/SWTJOGLProcessor"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :TextChangeListener, "org/allbinary/animation/text/TextChangeListener"

