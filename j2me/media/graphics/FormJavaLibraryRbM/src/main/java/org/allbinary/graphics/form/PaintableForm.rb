# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/ABCustomForm"

module ::Org; module Allbinary; module Graphics; module Form

class PaintableForm < ABCustomForm
    attr_accessor :canvasStrings, :rectangle, :x, :y, :formType

    def jfields_org_allbinary_graphics_form_PaintableForm
        @canvasStrings = ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance()
        @rectangle = ::Org::Allbinary::Graphics::RectangleFactory::SINGLETON
        @x = 0 unless instance_variable_defined?(:@x)
        @y = 0 unless instance_variable_defined?(:@y)
        @formType = FormTypeFactory.getInstance().NULL_FORM_TYPE
    end
    

    def self.getNullPaintableForm()
        if PaintableForm::NULL_PAINTABLE_FORM == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (PaintableForm.instance_exec(PaintableForm.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, Array.new(0, nil), ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE)) { |java_value| remove_const(:NULL_PAINTABLE_FORM) if const_defined?(:NULL_PAINTABLE_FORM, false); const_set(:NULL_PAINTABLE_FORM, java_value) })
        end
        return PaintableForm::NULL_PAINTABLE_FORM
    end
    

    def initialize(title, items, backgroundBasicColor, foregroundBasicColor)
        super(title, items, backgroundBasicColor, foregroundBasicColor)
        jfields_org_allbinary_graphics_form_PaintableForm
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
    java_overload :init, 2
    

    def getWidth()
        return @rectangle.getWidth()
    end
    java_overload :getWidth, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_PAINTABLE_FORM, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
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

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory" unless const_defined?(:RectangleFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :FormType, "org/allbinary/graphics/form/FormType" unless const_defined?(:FormType, false)
autoload :FormTypeFactory, "org/allbinary/graphics/form/FormTypeFactory" unless const_defined?(:FormTypeFactory, false)

begin
    PaintableForm.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

