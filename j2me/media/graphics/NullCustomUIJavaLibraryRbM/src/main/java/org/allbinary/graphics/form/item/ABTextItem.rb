# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item

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
    

    def getMinimumWidth()
        return super()
    end
    

    def getMinimumHeight()
        return super()
    end
    

    def getLabel()
        return super()
    end
    

    def paintXY(graphics, x, y)
        super(graphics, x, y)
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :ABStringComponent, "org/allbinary/graphics/form/item/ABStringComponent"

