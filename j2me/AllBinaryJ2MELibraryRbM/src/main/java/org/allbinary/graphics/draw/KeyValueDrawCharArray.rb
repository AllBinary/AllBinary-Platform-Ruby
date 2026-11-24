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

class KeyValueDrawCharArray
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :myFontProcessor, :LABEL, :labelX, :valueX, :value, :len

    def jfields_org_allbinary_graphics_draw_KeyValueDrawCharArray
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @LABEL = nil unless instance_variable_defined?(:@LABEL)
        @labelX = nil unless instance_variable_defined?(:@labelX)
        @valueX = 0 unless instance_variable_defined?(:@valueX)
        @value = ::Org::Allbinary::Logic::Java::Character::CharArrayFactory.getInstance().getZeroCharArray()
        @len = 0 unless instance_variable_defined?(:@len)
    end
    

    def initialize(label, x)
        jfields_org_allbinary_graphics_draw_KeyValueDrawCharArray
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
        graphics.drawChars(@value, 0, @len, @valueX, y, 0)
    end
    java_overload :paint, 2
    

    def update(value, len)
        @value = value
        @len = len
    end
    java_overload :update, 2
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Character; autoload :CharArrayFactory, "org/allbinary/logic/java/character/CharArrayFactory" unless const_defined?(:CharArrayFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end

end; end; end; end

