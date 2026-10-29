# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/form/item/ABCustomItemInterface"
require "org/allbinary/graphics/form/item/CustomCustomItem"

class ABTextItem < CustomCustomItem
    include ABCustomItemInterface
    

    def initialize(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        super(label, backgroundBasicColor, foregroundBasicColor)
    end
    

    def keyPressed(keyCode)
    end
    

    def paintUnselected(graphics, x, y)
    end
    

    def getLabelStringComponent()
        return ABStringComponent::NULL_STRING_COMPONENT
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/form/item/ABStringComponent"

