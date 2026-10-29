# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item


class ABStringComponent
    

    def getBackgroundBasicColor()
        return BasicColorFactory.getInstance().WHITE
    end
    

    def initialize(backgroundBasicColor, foregroundBasicColor)
    end
    

    def getForegroundBasicColor()
        return BasicColorFactory.getInstance().WHITE
    end
    

    def setForegroundBasicColor(foregroundBasicColor)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"

class ABStringComponent
    NULL_STRING_COMPONENT = ABStringComponent.new(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
end

