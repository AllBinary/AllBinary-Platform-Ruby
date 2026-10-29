# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/form/item/ABCustomItem"

class CustomCustomItem < ABCustomItem
    include UpdateMyFontInterface
    attr_accessor :updateMyFontProcessor, :myFontProcessor

    def initialize_fields
        @updateMyFontProcessor = UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def initialize(label, backgroundBasicColor, foregroundBasicColor)
        super(label, backgroundBasicColor, foregroundBasicColor)
        initialize_fields
    end
    

    def updateMeasurement(graphics)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"

