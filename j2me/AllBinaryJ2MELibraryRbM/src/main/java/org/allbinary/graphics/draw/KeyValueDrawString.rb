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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

class KeyValueDrawString
    include UpdateMyFontInterface
    attr_accessor :myFontProcessor, :LABEL, :labelX, :valueX, :value

    def initialize_fields
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @LABEL = nil
        @labelX = nil
        @valueX = 0
        @value = StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(label, x)
        initialize_fields
        @LABEL = label
        @labelX = x
    end
    

    def updateMeasurement(graphics)
        labelWidth = graphics.getFont().stringWidth(@LABEL) - @LABEL.length
        @valueX = labelWidth + @labelX
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paint(graphics, y)
        @myFontProcessor.process(graphics)
        graphics.drawString(@LABEL, @labelX, y, 0)
        graphics.drawString(@value, @valueX, y, 0)
    end
    

    def update(value)
        if value != nil
            @value = value
        end
    end
end

require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/logic/string/StringUtil"

