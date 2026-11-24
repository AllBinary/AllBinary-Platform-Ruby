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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

module ::Org; module Allbinary; module Graphics; module Draw

class KeyValueDrawString
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :myFontProcessor, :LABEL, :labelX, :valueX, :value

    def jfields_org_allbinary_graphics_draw_KeyValueDrawString
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @LABEL = nil unless instance_variable_defined?(:@LABEL)
        @labelX = nil unless instance_variable_defined?(:@labelX)
        @valueX = 0 unless instance_variable_defined?(:@valueX)
        @value = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(label, x)
        jfields_org_allbinary_graphics_draw_KeyValueDrawString
        @LABEL = label
        @labelX = x
    end
    

    def updateMeasurement(graphics)
        labelWidth = graphics.getFont().stringWidth(@LABEL) - @LABEL.length
        @valueX = labelWidth + @labelX
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def paint(graphics, y)
        @myFontProcessor.process(graphics)
        graphics.drawString(@LABEL, @labelX, y, 0)
        graphics.drawString(@value, @valueX, y, 0)
    end
    java_overload :paint, 2
    

    def update(value)
        @value = value
    end
    java_overload :update, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end

