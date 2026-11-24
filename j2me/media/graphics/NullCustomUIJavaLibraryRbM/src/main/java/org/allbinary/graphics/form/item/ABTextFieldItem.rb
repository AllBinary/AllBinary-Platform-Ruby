# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/item/ABTextItem"

module ::Org; module Allbinary; module Graphics; module Form; module Item

class ABTextFieldItem < ABTextItem
    attr_accessor :font

    def jfields_org_allbinary_graphics_form_item_ABTextFieldItem
        @font = nil unless instance_variable_defined?(:@font)
    end
    

    def initialize(canvas, visitor, label, value, maxSize, layout, altText, font, backgroundBasicColor, foregroundBasicColor)
        super(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        jfields_org_allbinary_graphics_form_item_ABTextFieldItem
        @font = font
    end
    

    def getLabel()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :getLabel, 0
    

    def setLabel(label)
    end
    java_overload :setLabel, 1
    

    def getString()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :getString, 0
    

    def setString(string)
    end
    java_overload :setString, 1
    

    def setFocus(state)
    end
    java_overload :setFocus, 1
    

    def getFontHeight()
        return @font.getHeight()
    end
    java_overload :getFontHeight, 0
    

    def setBackgroundBasicColorP(basicColor)
    end
    java_overload :setBackgroundBasicColorP, 1
    

    def setForegroundBasicColorP(basicColor)
    end
    java_overload :setForegroundBasicColorP, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Visitor; autoload :Visitor, "org/allbinary/logic/util/visitor/Visitor" unless const_defined?(:Visitor, false); end; end; end; end; end

end; end; end; end; end

