# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/form/ScrollSelectionForm"

module ::Org; module Allbinary; module Graphics; module Form

class MultipleScrollSelectionHorizontalForm < ScrollSelectionForm
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :rectPaintable, :multipleScrollSelectionHorizontalFormTypeItemIndexPaintable, :backgroundColor, :myFontProcessor, :logged, :fontHeight

    def jfields_org_allbinary_graphics_form_MultipleScrollSelectionHorizontalForm
        @rectPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance()
        @backgroundColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().TRANSPARENT_GREY.to_i
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @logged = false
        @fontHeight = 0
    end
    

    # throws Exception
    def self.createForm(title, items, rectangle, formType, border, backgroundBasicColor, foregroundBasicColor)
        scrollSelectionForm = MultipleScrollSelectionHorizontalForm.new(title, items, ItemPaintableFactory.getInstance(), border, backgroundBasicColor, foregroundBasicColor)
        scrollSelectionForm.init(rectangle, formType)
        return scrollSelectionForm
    end
    

    def initialize(title, items, formPaintableFactory, border, backgroundBasicColor, foregroundBasicColor)
        super(title, items, formPaintableFactory, border, 3, backgroundBasicColor, foregroundBasicColor)
        jfields_org_allbinary_graphics_form_MultipleScrollSelectionHorizontalForm
        if ::Org::Allbinary::J2MEUtil.isJ2ME() || ::Org::Allbinary::J2MEUtil.isHTML()
        else
            @rectPaintable = MultipleScrollSelectionFormRectPaintable.new(self)
        end
    end
    

    def fillRect(graphics)
        graphics.setColor(@backgroundColor)
        graphics.fillRect(@x, @y, @rectangle.getWidth(), @rectangle.getHeight())
    end
    java_overload :fillRect, 1
    

    # throws Exception
    def init(rectangle, formType)
        MultipleScrollSelectionHorizontalForm.superclass.java_super_method(:init, 2).bind(self).call(rectangle, formType)
        formTypeFactory = FormTypeFactory.getInstance()
        if formType == formTypeFactory.HORIZONTAL_FORM
            @multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = MultipleScrollSelectionFormHorizontalPaintable.new(self)
        elsif formType == formTypeFactory.VERTICAL_CENTER_FORM
            @multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = MultipleScrollSelectionFormVerticalPaintable.new(self)
        elsif formType == formTypeFactory.NULL_FORM_TYPE
        else
            raise StandardError.new(formTypeFactory.UNK)
        end
    end
    java_overload :init, 2
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    # throws Exception
    def paintHorizontal(graphics, index, item, dx, dy)
        dx2 = self.paintItem(graphics, index, item, dx, dy) + @border
        @paintable.paint(graphics, index, dx, dy)
        dx = dx2
        return dx
    end
    java_overload :paintHorizontal, 5
    

    # throws Exception
    def paintVertical(graphics, index, item, dx, dy)
        self.paintItem(graphics, index, item, dx, dy)
        @paintable.paint(graphics, index, dx, dy)
        return dx
    end
    java_overload :paintVertical, 5
    

    def getStartIndex()
        return self.getSelectedIndex()
    end
    java_overload :getStartIndex, 0
    

    def paint(graphics)
        begin
            @myFontProcessor.process(graphics)
            start = self.getStartIndex()
            size = self.size()
            dx = @x
            dy = @y
            @rectPaintable.paint(graphics)
            graphics.drawString(self.getTitle(), @x, @y - @fontHeight, 0)
            item = nil
            (start...size).each do |index|
                item = self.get(index)
                if dx >= @rectangle.getMaxX()
                    if @logged
                    else
                        @logged = true
                        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("painting beyond maxx: ").appendint(((@rectangle.getMaxX()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, @canvasStrings.PAINT)
                    end
                end
                dx = @multipleScrollSelectionHorizontalFormTypeItemIndexPaintable.paint(graphics, index, item, dx, dy)
            end
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@commonStrings.EXCEPTION, self, @canvasStrings.PAINT)
        end
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :FormType, "org/allbinary/graphics/form/FormType" unless const_defined?(:FormType, false)
autoload :FormTypeFactory, "org/allbinary/graphics/form/FormTypeFactory" unless const_defined?(:FormTypeFactory, false)
autoload :ItemIndexPaintable, "org/allbinary/graphics/form/ItemIndexPaintable" unless const_defined?(:ItemIndexPaintable, false)
autoload :ItemPaintableFactory, "org/allbinary/graphics/form/ItemPaintableFactory" unless const_defined?(:ItemPaintableFactory, false)
autoload :MultipleScrollSelectionFormHorizontalPaintable, "org/allbinary/graphics/form/MultipleScrollSelectionFormHorizontalPaintable" unless const_defined?(:MultipleScrollSelectionFormHorizontalPaintable, false)
autoload :MultipleScrollSelectionFormRectPaintable, "org/allbinary/graphics/form/MultipleScrollSelectionFormRectPaintable" unless const_defined?(:MultipleScrollSelectionFormRectPaintable, false)
autoload :MultipleScrollSelectionFormVerticalPaintable, "org/allbinary/graphics/form/MultipleScrollSelectionFormVerticalPaintable" unless const_defined?(:MultipleScrollSelectionFormVerticalPaintable, false)

end; end; end; end

