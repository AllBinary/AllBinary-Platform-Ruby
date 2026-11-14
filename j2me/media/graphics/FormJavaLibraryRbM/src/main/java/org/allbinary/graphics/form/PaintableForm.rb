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
            (PaintableForm.send(:remove_const, :NULL_PAINTABLE_FORM) if PaintableForm.const_defined?(:NULL_PAINTABLE_FORM, false); PaintableForm.const_set(:NULL_PAINTABLE_FORM, PaintableForm.new(StringUtil.getInstance().EMPTY_STRING, Array.new(0, nil), BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)))
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_PAINTABLE_FORM, NullUtil.getInstance().NULL_OBJECT)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PaintableForm"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_PAINTABLE_FORM].include?(name)
        end
        super
    end
end

autoload :GPoint, "org/allbinary/graphics/GPoint"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings"
autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :FormType, "org/allbinary/graphics/form/FormType"
autoload :FormTypeFactory, "org/allbinary/graphics/form/FormTypeFactory"

begin
    PaintableForm.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

