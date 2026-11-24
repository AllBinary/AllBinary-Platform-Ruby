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


module ::Org; module Allbinary; module Graphics; module Draw

class DrawVerticalStringUtil
    attr_accessor :EMPTY_STRING, :anchor, :charHeight, :offsetY, :offsetXArray

    def jfields_org_allbinary_graphics_draw_DrawVerticalStringUtil
        @EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
        @charHeight = 0 unless instance_variable_defined?(:@charHeight)
        @offsetY = 0 unless instance_variable_defined?(:@offsetY)
        @offsetXArray = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY
    end

    def initialize
        jfields_org_allbinary_graphics_draw_DrawVerticalStringUtil
    end
    

    def self.getInstance()
        return DrawVerticalStringUtil.instance
    end
    

    def updateMeasurement(graphics, string)
        openGLFeatureUtil = ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureUtil.getInstance()
        font = graphics.getFont()
        @charHeight = font.getHeight()
        @offsetY = 0
        if ::Org::Allbinary::J2MEUtil.isHTML()
            @charHeight += 1
        elsif openGLFeatureUtil.isAnyThreed()
            @charHeight += 2
            if ::Org::Allbinary::AndroidUtil.isAndroid()
            else
                @offsetY = 2 + (@charHeight * 2 / 3)
            end
        end
        size = string.length
        aChar = "\0"
        offsetXArray = (Array.new(size, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
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
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Exception: stringLength: ").appendint(string.length).append(" offset: ").appendint(offset).append(" currentLength: ").appendint(length).to_s, self, "drawCenterString")
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
        DrawVerticalStringUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DrawVerticalStringUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DrawVerticalStringUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DrawVerticalStringUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; autoload :AndroidUtil, "org/allbinary/AndroidUtil" unless const_defined?(:AndroidUtil, false); end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureUtil, "org/allbinary/graphics/opengles/OpenGLFeatureUtil" unless const_defined?(:OpenGLFeatureUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    DrawVerticalStringUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

