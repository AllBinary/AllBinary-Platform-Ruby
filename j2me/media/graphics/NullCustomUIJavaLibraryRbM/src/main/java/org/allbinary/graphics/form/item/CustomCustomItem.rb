# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item

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

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor"
autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor"

