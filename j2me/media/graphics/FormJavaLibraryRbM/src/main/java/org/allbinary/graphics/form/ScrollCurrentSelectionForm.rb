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
# package org.allbinary.graphics.form

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/canvas/Processor"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/form/ItemIndexDx"
require "org/allbinary/graphics/form/ScrollSelectionForm"

class ScrollCurrentSelectionForm < ScrollSelectionForm
    include UpdateMyFontInterface
    attr_accessor :moveForSmallScreen, :updateMyFontProcessor, :myFontProcessor, :processor, :preItemIndexDx, :dx, :dy, :maxWidth
    class TempHorizontalFormProcessor < Processor
        attr_accessor :scrollCurrentSelectionForm

        def initialize_fields
            @scrollCurrentSelectionForm = nil
        end
        

        def initialize(scrollCurrentSelectionForm)
            super()
            initialize_fields
            @scrollCurrentSelectionForm = scrollCurrentSelectionForm
        end
        

        # throws Exception
        def process()
            @scrollCurrentSelectionForm.processTempHorizontalForm()
            @scrollCurrentSelectionForm.processor = Processor.getInstance()
        end
    end
    class HorizontalFormProcessor < Processor
        attr_accessor :scrollCurrentSelectionForm

        def initialize_fields
            @scrollCurrentSelectionForm = nil
        end
        

        def initialize(scrollCurrentSelectionForm)
            super()
            initialize_fields
            @scrollCurrentSelectionForm = scrollCurrentSelectionForm
        end
        

        # throws Exception
        def process()
            @scrollCurrentSelectionForm.processHorizontalForm()
            @scrollCurrentSelectionForm.processor = Processor.getInstance()
        end
    end
    class VerticalFormProcessor < Processor
        attr_accessor :scrollCurrentSelectionForm

        def initialize_fields
            @scrollCurrentSelectionForm = nil
        end
        

        def initialize(scrollCurrentSelectionForm)
            super()
            initialize_fields
            @scrollCurrentSelectionForm = scrollCurrentSelectionForm
        end
        

        # throws Exception
        def process()
            @scrollCurrentSelectionForm.processVerticalForm()
            @scrollCurrentSelectionForm.processor = Processor.getInstance()
        end
    end
    class TempHorizontalItemIndexDx < ItemIndexDx
        attr_accessor :scrollCurrentSelectionForm

        def initialize_fields
            @scrollCurrentSelectionForm = nil
        end
        

        def initialize(scrollCurrentSelectionForm)
            super()
            initialize_fields
            @scrollCurrentSelectionForm = scrollCurrentSelectionForm
        end
        

        # throws Exception
        def getDx(index, item, dx, dy)
            return @scrollCurrentSelectionForm.getXTempHorizontalForm(index, item, dx, dy)
        end
    end
    class HorizontalItemIndexDx < ItemIndexDx
        attr_accessor :scrollCurrentSelectionForm

        def initialize_fields
            @scrollCurrentSelectionForm = nil
        end
        

        def initialize(scrollCurrentSelectionForm)
            super()
            initialize_fields
            @scrollCurrentSelectionForm = scrollCurrentSelectionForm
        end
        

        # throws Exception
        def getDx(index, item, dx, dy)
            return @scrollCurrentSelectionForm.getXHorizontalForm(index, item, dx, dy)
        end
    end
    class VerticalItemIndexDx < ItemIndexDx
        attr_accessor :scrollCurrentSelectionForm

        def initialize_fields
            @scrollCurrentSelectionForm = nil
        end
        

        def initialize(scrollCurrentSelectionForm)
            super()
            initialize_fields
            @scrollCurrentSelectionForm = scrollCurrentSelectionForm
        end
        

        # throws Exception
        def getDx(index, item, dx, dy)
            return @scrollCurrentSelectionForm.getXVerticalForm(index, item, dx, dy)
        end
    end

    def initialize_fields
        @moveForSmallScreen = nil
        @updateMyFontProcessor = UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @processor = Processor.getInstance()
        @preItemIndexDx = ItemIndexDx.getInstance()
        @dx = 0
        @dy = 0
        @maxWidth = 0
    end
    

    def initialize(title, items, formPaintableFactory, border, adjustedExtraBorder, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        super(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)
        initialize_fields
        @moveForSmallScreen = moveForSmallScreen
    end
    

    # throws Exception
    def init(rectangle, formType)
        super(rectangle, formType)
        formTypeFactory = FormTypeFactory.getInstance()
        if formType == formTypeFactory.TEMP_HORIZONTAL_FORM
            @processor = TempHorizontalFormProcessor.new(self)
            @preItemIndexDx = TempHorizontalItemIndexDx.new(self)
        elsif formType == formTypeFactory.HORIZONTAL_FORM
            @processor = HorizontalFormProcessor.new(self)
            @preItemIndexDx = HorizontalItemIndexDx.new(self)
        elsif formType == formTypeFactory.VERTICAL_CENTER_FORM
            @processor = VerticalFormProcessor.new(self)
            @preItemIndexDx = VerticalItemIndexDx.new(self)
        elsif formType == formTypeFactory.NULL_FORM_TYPE
        else
            @logUtil.putF(formTypeFactory.UNK, self, @commonStrings.INIT)
        end
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def updateMeasurement(graphics)
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def processTempHorizontalForm()
        @dx = @x - 30 + (@rectangle.getWidth() >> 1)
        @dy = @y
    end
    

    def processHorizontalForm()
        size = self.size()
        totalWidth = 0
        item = nil
        (0...size).each do |index|
            item = self.get(index)
            totalWidth += item.getMinimumWidth() + @border
        end
        @dx = @x + (@rectangle.getWidth() >> 1) - (totalWidth >> 1)
        @dy = @y + (@rectangle.getHeight() >> 1)
        if @moveForSmallScreen
            maxTitleHeight = 175
            if @dy < maxTitleHeight
                @dy = maxTitleHeight
            end
        end
    end
    

    def processVerticalForm()
        totalHeight = 0
        size = self.size()
        item2 = nil
        (0...size).each do |index|
            item2 = self.get(index)
            if @maxWidth < item2.getMinimumWidth()
                @maxWidth = item2.getMinimumWidth()
            end
            totalHeight += item2.getMinimumHeight() + @border
        end
        @dx = ((@rectangle.getWidth() - @maxWidth) / 2)
        if self.size() > 0
            @dy = @y + ((@rectangle.getHeight() - totalHeight) / 2)
            if @moveForSmallScreen
                maxTitleHeight = 175
                if @dy < maxTitleHeight
                    @dy = maxTitleHeight
                end
            end
        else
            @dy = @y
        end
    end
    

    def getXTempHorizontalForm(index, item, dx, dy)
        return self.getDiffX(item)
    end
    

    def getXHorizontalForm(index, item, dx, dy)
        return 0
    end
    

    def getXVerticalForm(index, item, dx, dy)
        return self.getDiffX(item) + @halfBorder
    end
    

    def getDiffX(item)
        return ((@maxWidth - item.getMinimumWidth()) >> 1)
    end
    

    def getDx()
        return @dx
    end
    

    def getDy()
        return @dy
    end
    

    def paint(graphics)
        begin
            @processor.process()
            delta = 0
            deltaX = self.getDx()
            deltaY = self.getDy()
            size = self.size()
            formTypeFactory = FormTypeFactory.getInstance()
            item = nil
            (0...size).each do |index|
                item = self.get(index)
                diffX = @preItemIndexDx.getDx(index, item, @dx, @dy)
                if index == self.getSelectedIndex()
                    delta = self.paintItem(graphics, index, item, deltaX + diffX, deltaY)
                    @paintable.paint(graphics, index, deltaX + diffX, deltaY)
                else
                    delta = self.paintUnselectedItem(graphics, index, item, deltaX + diffX, deltaY)
                    @paintable.paint(graphics, index, deltaX + diffX, deltaY)
                end
                if @formType == formTypeFactory.TEMP_HORIZONTAL_FORM
                elsif @formType == formTypeFactory.HORIZONTAL_FORM
                    deltaX = delta
                elsif @formType == formTypeFactory.VERTICAL_CENTER_FORM
                    deltaY = delta
                else
                    raise StandardError.new(formTypeFactory.UNK)
                end
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @canvasStrings.PAINT, e)
        end
    end
end

require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/graphics/form/FormType"
require "org/allbinary/graphics/form/FormTypeFactory"
require "org/allbinary/graphics/form/ItemPaintableFactory"

