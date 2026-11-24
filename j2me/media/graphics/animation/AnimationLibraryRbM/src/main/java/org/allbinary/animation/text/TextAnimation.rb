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
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

module ::Org; module Allbinary; module Animation; module Text

class TextAnimation < ::Org::Allbinary::Animation::IndexedAnimation
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :updateMyFontProcessor, :myFontProcessor, :textArrayP, :anchor, :fontHeight, :offsetY, :textChangeListener

    def jfields_org_allbinary_animation_text_TextAnimation
        @updateMyFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @textArrayP = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
        @fontHeight = 0
        @offsetY = 0
        @textChangeListener = TextChangeListener.getInstance()
    end
    

    def initialize(text, animationBehavior)
        super(animationBehavior)
        jfields_org_allbinary_animation_text_TextAnimation
        self.setText(text)
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        adjustedFontHeight = (-(@fontHeight).to_f * 2.00).to_i
        @offsetY = (::Org::Allbinary::Graphics::Threed::SWTJOGLProcessor.getInstance().isJOGL() ? adjustedFontHeight : 0)
        @textChangeListener.onMeasure()
        @textChangeListener = TextChangeListener.getInstance()
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    # throws Exception
    def nextFrame()
    end
    java_overload :nextFrame, 0
    

    def paintXY(graphics, x, y)
        @myFontProcessor.process(graphics)
        self.paintXYNoUpdate(graphics, x, y)
    end
    java_overload :paintXY, 3
    

    def paintXYNoUpdate(graphics, x, y)
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        size = @textArrayP.length
        (0...size).each do |index|
            graphics.drawString(@textArrayP[index], x, y + @offsetY + (index * @fontHeight), @anchor)
        end
    end
    java_overload :paintXYNoUpdate, 3
    

    def setTextWithOnMeasure(text, textChangeListener)
        self.setText(text)
        @textChangeListener = textChangeListener
    end
    java_overload :setTextWithOnMeasure, 2
    

    def setText(text)
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
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
            @textArrayP = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
        end
        @myFontProcessor = @updateMyFontProcessor
    end
    java_overload :setText, 1
    

    def getTextArray()
        return @textArrayP
    end
    java_overload :getTextArray, 0
    

    def getFontHeight()
        return @fontHeight
    end
    java_overload :getFontHeight, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Threed; autoload :SWTJOGLProcessor, "org/allbinary/graphics/threed/SWTJOGLProcessor" unless const_defined?(:SWTJOGLProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :TextChangeListener, "org/allbinary/animation/text/TextChangeListener" unless const_defined?(:TextChangeListener, false)

end; end; end; end

