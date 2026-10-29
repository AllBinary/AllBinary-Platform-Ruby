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
# package org.allbinary.graphics.draw

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"

class DrawVerticalStringUtil
    attr_accessor :EMPTY_STRING, :anchor, :charHeight, :offsetY, :offsetXArray

    def initialize_fields
        @EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        @anchor = Anchor::TOP_LEFT
        @charHeight = 0
        @offsetY = 0
        @offsetXArray = NullUtil.getInstance().NULL_INT_ARRAY
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return DrawVerticalStringUtil.instance
    end
    

    def updateMeasurement(graphics, string)
        openGLFeatureUtil = OpenGLFeatureUtil.getInstance()
        font = graphics.getFont()
        @charHeight = font.getHeight()
        @offsetY = 0
        if J2MEUtil.isHTML()
            @charHeight += 1
        elsif openGLFeatureUtil.isAnyThreed()
            @charHeight += 2
            if AndroidUtil.isAndroid()
            else
                @offsetY = 2 + (@charHeight * 2 / 3)
            end
        end
        size = string.length
        aChar = "\0"
        offsetXArray = Array.new(size, 0)
        (size - 1).step(0, -(1)) do |index|
            aChar = string[index]
            if openGLFeatureUtil.isAnyThreed()
                offsetXArray[index] = font.charWidth(aChar) / 2
            end
        end
        @offsetXArray = offsetXArray
    end
    

    def paintVerticle(graphics, string, x, y, anchor)
        size = string.length
        aChar = "\0"
        (size - 1).step(0, -(1)) do |index|
            aChar = string[index]
            graphics.drawChar(aChar, x + @offsetXArray[index], y + (@charHeight * index) + @offsetY, anchor)
        end
    end
    

    def drawCenterString(graphics, string, offset, length, x, y)
        width = (graphics.getFont().substringWidth(string, offset, length) >> 1)
        begin
            graphics.drawSubstring(string, offset, length, x - width, y, @anchor)
        rescue StandardError => e
            PreLogUtil.put(StringMaker.new().append("Exception: stringLength: ").appendint(string.length).append(" offset: ").appendint(offset).append(" currentLength: ").appendint(length).to_s, self, "drawCenterString")
        end
    end
    

    def drawCenterStrings(graphics, stringArray, maxWidth, x, y)
        extraLines = 0
        (0...stringArray.length).each do |index|
            string = stringArray[index]
            if string != @EMPTY_STRING
                width = graphics.getFont().stringWidth(string)
                minTotalLines = 1
                if width > maxWidth
                    minTotalLines = (width / maxWidth) + 1
                end
                linePortion = string.length / minTotalLines
                offset = 0
                currentLength = linePortion
                size = string.length
                while offset < size
                    if offset + currentLength > size
                        currentLength = size - offset
                    end
                    if offset + currentLength != size
                        while currentLength > 0 && stringArray[index].charAt(offset + currentLength) != " "
                            currentLength -= 1
                        end
                        if currentLength <= 4
                            currentLength = linePortion
                        end
                    end
                    self.drawCenterString(graphics, string, offset, currentLength, x, y + ((index + ((extraLines += 1) - 1)) * @charHeight))
                    offset = offset + currentLength
                    currentLength = linePortion
                end
                extraLines -= 1
            end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/AndroidUtil"
require "org/allbinary/J2MEUtil"
require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/opengles/OpenGLFeatureUtil"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

class DrawVerticalStringUtil
    @@instance = DrawVerticalStringUtil.new()
end

