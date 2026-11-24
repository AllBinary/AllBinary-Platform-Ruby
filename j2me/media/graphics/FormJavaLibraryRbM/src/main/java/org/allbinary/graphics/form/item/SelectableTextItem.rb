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
# package org.allbinary.graphics.form.item

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/item/ABTextItem"

module ::Org; module Allbinary; module Graphics; module Form; module Item

class SelectableTextItem < ABTextItem
    

    def initialize(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        super(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
    end
    

    def isFocusable()
        return true
    end
    java_overload :isFocusable, 0
    

    def paintXY(graphics, x, y)
        @myFontProcessor.process(graphics)
        stringComponent = self.getLabelStringComponent()
        if stringComponent != nil
            graphics.setColor(stringComponent.getForegroundBasicColor().to_i)
        end
        graphics.drawString(self.getLabel(), x + 2, y, 0)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
autoload :ABStringComponent, "org/allbinary/graphics/form/item/ABStringComponent" unless const_defined?(:ABStringComponent, false)

end; end; end; end; end

