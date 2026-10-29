# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/graphics/form/ItemIndexPaintable"
require "org/allbinary/graphics/form/ScrollSelectionForm"

class MultipleScrollSelectionHorizontalForm < ScrollSelectionForm
    include UpdateMyFontInterface
    attr_accessor :rectPaintable, :multipleScrollSelectionHorizontalFormTypeItemIndexPaintable, :backgroundColor, :myFontProcessor, :logged, :fontHeight
    class MultipleScrollSelectionFormHorizontalPaintable < ItemIndexPaintable
        attr_accessor :multipleScrollSelectionForm

        def initialize_fields
            @multipleScrollSelectionForm = nil
        end
        

        def initialize(multipleScrollSelectionForm)
            super()
            initialize_fields
            @multipleScrollSelectionForm = multipleScrollSelectionForm
        end
        

        # throws Exception
        def paint(graphics, index, item, dx, dy)
            return @multipleScrollSelectionForm.paintHorizontal(graphics, index, item, dx, dy)
        end
    end
    class MultipleScrollSelectionFormVerticalPaintable < ItemIndexPaintable
        attr_accessor :multipleScrollSelectionForm

        def initialize_fields
            @multipleScrollSelectionForm = nil
        end
        

        def initialize(multipleScrollSelectionForm)
            super()
            initialize_fields
            @multipleScrollSelectionForm = multipleScrollSelectionForm
        end
        

        # throws Exception
        def paint(graphics, index, item, dx, dy)
            return @multipleScrollSelectionForm.paintVertical(graphics, index, item, dx, dy)
        end
    end

    def initialize_fields
        @rectPaintable = NullPaintable.getInstance()
        @multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance()
        @backgroundColor = BasicColorFactory.getInstance().TRANSPARENT_GREY.to_i
        @myFontProcessor = UpdateMyFontProcessor.new(self)
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
        initialize_fields
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
        else
            class MPaintable < Paintable
                

                def paint(graphics)
                    self.fillRect(graphics)
                end
            end
            @rectPaintable = MPaintable.new()
        end
    end
    

    def fillRect(graphics)
        graphics.setColor(@backgroundColor)
        graphics.fillRect(@x, @y, @rectangle.getWidth(), @rectangle.getHeight())
    end
    

    # throws Exception
    def init(rectangle, formType)
        super(rectangle, formType)
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
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    # throws Exception
    def paintHorizontal(graphics, index, item, dx, dy)
        dx2 = self.paintItem(graphics, index, item, dx, dy) + @border
        @paintable.paint(graphics, index, dx, dy)
        dx = dx2
        return dx
    end
    

    # throws Exception
    def paintVertical(graphics, index, item, dx, dy)
        self.paintItem(graphics, index, item, dx, dy)
        @paintable.paint(graphics, index, dx, dy)
        return dx
    end
    

    def getStartIndex()
        return self.getSelectedIndex()
    end
    

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
                        PreLogUtil.put(StringMaker.new().append("painting beyond maxx: ").appendint((@rectangle.getMaxX()).to_i).to_s, self, @canvasStrings.PAINT)
                    end
                end
                dx = @multipleScrollSelectionHorizontalFormTypeItemIndexPaintable.paint(graphics, index, item, dx, dy)
            end
        rescue StandardError => e
            PreLogUtil.put(@commonStrings.EXCEPTION, self, @canvasStrings.PAINT)
        end
    end
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/graphics/form/FormType"
require "org/allbinary/graphics/form/FormTypeFactory"
require "org/allbinary/graphics/form/ItemPaintableFactory"

