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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/form/ScrollSelectionForm"

module ::Org; module Allbinary; module Graphics; module Form

class ScrollCurrentSelectionForm < ScrollSelectionForm
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :moveForSmallScreen, :updateMyFontProcessor, :myFontProcessor, :processor, :preItemIndexDx, :dx, :dy, :maxWidth

    def jfields_org_allbinary_graphics_form_ScrollCurrentSelectionForm
        @moveForSmallScreen = nil unless instance_variable_defined?(:@moveForSmallScreen)
        @updateMyFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @processor = ::Org::Allbinary::Canvas::Processor.getInstance()
        @preItemIndexDx = ItemIndexDx.getInstance()
        @dx = 0 unless instance_variable_defined?(:@dx)
        @dy = 0 unless instance_variable_defined?(:@dy)
        @maxWidth = 0
    end
    

    def initialize(title, items, formPaintableFactory, border, adjustedExtraBorder, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        super(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)
        jfields_org_allbinary_graphics_form_ScrollCurrentSelectionForm
        @moveForSmallScreen = moveForSmallScreen
    end
    

    # throws Exception
    def init(rectangle, formType)
        ScrollCurrentSelectionForm.superclass.java_super_method(:init, 2).bind(self).call(rectangle, formType)
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
    java_overload :init, 2
    

    def updateMeasurement(graphics)
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def processTempHorizontalForm()
        @dx = @x - 30 + (@rectangle.getWidth() >> 1)
        @dy = @y
    end
    java_overload :processTempHorizontalForm, 0
    

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
    java_overload :processHorizontalForm, 0
    

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
    java_overload :processVerticalForm, 0
    

    def getXTempHorizontalForm(index, item, dx, dy)
        return self.getDiffX(item)
    end
    java_overload :getXTempHorizontalForm, 4
    

    def getXHorizontalForm(index, item, dx, dy)
        return 0
    end
    java_overload :getXHorizontalForm, 4
    

    def getXVerticalForm(index, item, dx, dy)
        return self.getDiffX(item) + @halfBorder
    end
    java_overload :getXVerticalForm, 4
    

    def getDiffX(item)
        return ((@maxWidth - item.getMinimumWidth()) >> 1)
    end
    java_overload :getDiffX, 1
    

    def getDx()
        return @dx
    end
    java_overload :getDx, 0
    

    def getDy()
        return @dy
    end
    java_overload :getDy, 0
    

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
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Canvas; autoload :Processor, "org/allbinary/canvas/Processor" unless const_defined?(:Processor, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
autoload :FormType, "org/allbinary/graphics/form/FormType" unless const_defined?(:FormType, false)
autoload :FormTypeFactory, "org/allbinary/graphics/form/FormTypeFactory" unless const_defined?(:FormTypeFactory, false)
autoload :HorizontalFormProcessor, "org/allbinary/graphics/form/HorizontalFormProcessor" unless const_defined?(:HorizontalFormProcessor, false)
autoload :HorizontalItemIndexDx, "org/allbinary/graphics/form/HorizontalItemIndexDx" unless const_defined?(:HorizontalItemIndexDx, false)
autoload :ItemIndexDx, "org/allbinary/graphics/form/ItemIndexDx" unless const_defined?(:ItemIndexDx, false)
autoload :ItemPaintableFactory, "org/allbinary/graphics/form/ItemPaintableFactory" unless const_defined?(:ItemPaintableFactory, false)
autoload :TempHorizontalFormProcessor, "org/allbinary/graphics/form/TempHorizontalFormProcessor" unless const_defined?(:TempHorizontalFormProcessor, false)
autoload :TempHorizontalItemIndexDx, "org/allbinary/graphics/form/TempHorizontalItemIndexDx" unless const_defined?(:TempHorizontalItemIndexDx, false)
autoload :VerticalFormProcessor, "org/allbinary/graphics/form/VerticalFormProcessor" unless const_defined?(:VerticalFormProcessor, false)
autoload :VerticalItemIndexDx, "org/allbinary/graphics/form/VerticalItemIndexDx" unless const_defined?(:VerticalItemIndexDx, false)

end; end; end; end

