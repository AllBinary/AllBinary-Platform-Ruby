# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item

require "org/allbinary/graphics/form/item/ABCustomItem"

class ABCustomImageItem < ABCustomItem
    attr_accessor :yOffset

    def initialize_fields
        @yOffset = 0
    end
    

    def initialize(label, image, layout, altText, basicColor, yOffset)
        super(label, basicColor, basicColor)
        initialize_fields
    end
    

    def getImage()
        return NullImage::NULL_IMAGE
    end
end

autoload :Image, "javax/microedition/lcdui/Image"
autoload :NullImage, "javax/microedition/lcdui/NullImage"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"

