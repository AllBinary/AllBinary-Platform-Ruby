# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item

# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/Font"
require "org/allbinary/graphics/form/item/ABTextItem"

class ABTextFieldItem < ABTextItem
    attr_accessor :font

    def initialize_fields
        @font = nil
    end
    

    def initialize(canvas, visitor, label, value, maxSize, layout, altText, font, backgroundBasicColor, foregroundBasicColor)
        super(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        initialize_fields
        @font = font
    end
    

    def getLabel()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def setLabel(label)
    end
    

    def getString()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def setString(string)
    end
    

    def setFocus(state)
    end
    

    def getFontHeight()
        return @font.getHeight()
    end
    

    def setBackgroundBasicColorP(basicColor)
    end
    

    def setForegroundBasicColorP(basicColor)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/util/visitor/Visitor"

