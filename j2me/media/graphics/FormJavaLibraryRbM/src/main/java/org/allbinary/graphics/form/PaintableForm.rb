# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form

require "org/allbinary/graphics/form/ABCustomForm"

class PaintableForm < ABCustomForm
    attr_accessor :canvasStrings, :rectangle, :x, :y, :formType

    def initialize_fields
        @canvasStrings = CanvasStrings.getInstance()
        @rectangle = RectangleFactory::SINGLETON
        @x = 0
        @y = 0
        @formType = FormTypeFactory.getInstance().NULL_FORM_TYPE
    end
    

    def self.getNullPaintableForm()
        if PaintableForm::NULL_PAINTABLE_FORM == NullUtil.getInstance().NULL_OBJECT
            PaintableForm::NULL_PAINTABLE_FORM = PaintableForm.new(StringUtil.getInstance().EMPTY_STRING, Array.new(0, nil), BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        end
        return PaintableForm::NULL_PAINTABLE_FORM
    end
    

    def initialize(title, items, backgroundBasicColor, foregroundBasicColor)
        super(title, items, backgroundBasicColor, foregroundBasicColor)
        initialize_fields
        self.setSelectedIndex(0)
    end
    

    # throws Exception
    def init(rectangle, formType)
        @rectangle = rectangle
        point = @rectangle.getPoint()
        @x = point.getX()
        @y = point.getY()
        @formType = formType
    end
    

    def getWidth()
        return @rectangle.getWidth()
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/RectangleFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/graphics/form/FormType"
require "org/allbinary/graphics/form/FormTypeFactory"

class PaintableForm
    NULL_PAINTABLE_FORM = NullUtil.getInstance().NULL_OBJECT
end

