# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item

require "org/allbinary/graphics/form/item/ABCustomItem"

class ABCustomGaugeItem < ABCustomItem
    

    def initialize(label, maxValue, initialValue, backgroundBasicColor, foregroundBasicColor)
        super(label, backgroundBasicColor, foregroundBasicColor)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/string/StringUtil"

class ABCustomGaugeItem
    NULL_GAUGE_ITEM = ABCustomGaugeItem.new(StringUtil.getInstance().EMPTY_STRING, 1, 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
end

