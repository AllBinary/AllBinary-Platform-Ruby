# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Screen"

class ABCustomItem
    

    def self.getNullInstance()
        if ABCustomItem::NULL_CUSTOM_ITEM == NullUtil.getInstance().NULL_OBJECT
            ABCustomItem::NULL_CUSTOM_ITEM = ABCustomItem.new(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        end
        return ABCustomItem::NULL_CUSTOM_ITEM
    end
    

    def initialize(label, backgroundBasicColor, foregroundBasicColor)
    end
    

    def setOwner(owner)
    end
    

    def paintXY(graphics, x, y)
    end
    

    def paintUnselected(graphics, x, y)
    end
    

    def isFocusable()
        return false
    end
    

    def getLabel()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def setLabel(label)
    end
    

    def getHeight()
        return 0
    end
    

    def setHeight(height)
    end
    

    def getValue()
        return 0.0
    end
    

    def setValue(value)
    end
    

    def getMinimumWidth()
        return 0
    end
    

    def getMinimumHeight()
        return 0
    end
    

    def preMeasurement(graphics)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringUtil"

class ABCustomItem
    NULL_CUSTOM_ITEM = NullUtil.getInstance().NULL_OBJECT
end

