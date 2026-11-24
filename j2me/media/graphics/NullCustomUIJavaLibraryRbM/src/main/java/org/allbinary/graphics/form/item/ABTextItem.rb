# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/item/ABCustomItemInterface"
require "org/allbinary/graphics/form/item/CustomCustomItem"

module ::Org; module Allbinary; module Graphics; module Form; module Item

class ABTextItem < CustomCustomItem
    include ABCustomItemInterface
    

    def initialize(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        super(label, backgroundBasicColor, foregroundBasicColor)
    end
    

    def keyPressed(keyCode)
    end
    java_overload :keyPressed, 1
    

    def paintUnselected(graphics, x, y)
    end
    java_overload :paintUnselected, 3
    

    def getLabelStringComponent()
        return ABStringComponent::NULL_STRING_COMPONENT
    end
    java_overload :getLabelStringComponent, 0
    

    def getMinimumWidth()
        return ABTextItem.superclass.java_super_method(:getMinimumWidth, 0).bind(self).call()
    end
    java_overload :getMinimumWidth, 0
    

    def getMinimumHeight()
        return ABTextItem.superclass.java_super_method(:getMinimumHeight, 0).bind(self).call()
    end
    java_overload :getMinimumHeight, 0
    

    def getLabel()
        return ABTextItem.superclass.java_super_method(:getLabel, 0).bind(self).call()
    end
    java_overload :getLabel, 0
    

    def paintXY(graphics, x, y)
        ABTextItem.superclass.java_super_method(:paintXY, 3).bind(self).call(graphics, x, y)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
autoload :ABStringComponent, "org/allbinary/graphics/form/item/ABStringComponent" unless const_defined?(:ABStringComponent, false)

end; end; end; end; end

