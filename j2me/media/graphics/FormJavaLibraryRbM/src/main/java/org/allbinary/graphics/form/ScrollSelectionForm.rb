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

require "org/allbinary/graphics/form/ItemIndexDx"
require "org/allbinary/graphics/form/ItemIndexPaintable"
require "org/allbinary/graphics/form/PaintableForm"

class ScrollSelectionForm < PaintableForm
    attr_accessor :rectangleCollisionUtil, :border, :halfBorder, :buttonBasicColor, :scrollSelectionFormFormTypeItemIndexPaintable, :formTypeItemIndexDx, :paintable, :adjustedExtraBorder
    class ScrollSelectionFormHorizontalPaintable < ItemIndexPaintable
        attr_accessor :scrollSelectionForm

        def initialize_fields
            @scrollSelectionForm = nil
        end
        

        def initialize(scrollSelectionForm)
            super()
            initialize_fields
            @scrollSelectionForm = scrollSelectionForm
        end
        

        # throws Exception
        def paint(graphics, index, item, dx, dy)
            return @scrollSelectionForm.paintItemHorizontal(graphics, index, item, dx, dy)
        end
    end
    class ScrollSelectionFormVerticalPaintable < ItemIndexPaintable
        attr_accessor :scrollSelectionForm

        def initialize_fields
            @scrollSelectionForm = nil
        end
        

        def initialize(scrollSelectionForm)
            super()
            initialize_fields
            @scrollSelectionForm = scrollSelectionForm
        end
        

        # throws Exception
        def paint(graphics, index, item, dx, dy)
            return @scrollSelectionForm.paintItemVertical(graphics, index, item, dx, dy)
        end
    end
    class ScrollSelectionFormTempHorizontalPaintable < ItemIndexPaintable
        attr_accessor :scrollSelectionForm

        def initialize_fields
            @scrollSelectionForm = nil
        end
        

        def initialize(scrollSelectionForm)
            super()
            initialize_fields
            @scrollSelectionForm = scrollSelectionForm
        end
        

        # throws Exception
        def paint(graphics, index, item, dx, dy)
            return @scrollSelectionForm.paintItemTempHorizontal(graphics, index, item, dx, dy)
        end
    end
    class ScrollSelectionFormHorizontalDx < ItemIndexDx
        attr_accessor :scrollSelectionForm

        def initialize_fields
            @scrollSelectionForm = nil
        end
        

        def initialize(multipleScrollSelectionForm)
            super()
            initialize_fields
            @scrollSelectionForm = multipleScrollSelectionForm
        end
        

        # throws Exception
        def getDx(index, item, dx, dy)
            return @scrollSelectionForm.getSelectedIndexForPointHorizontalDx(index, item, dx, dy)
        end
    end
    class ScrollSelectionFormVericalDx < ItemIndexDx
        attr_accessor :scrollSelectionForm

        def initialize_fields
            @scrollSelectionForm = nil
        end
        

        def initialize(multipleScrollSelectionForm)
            super()
            initialize_fields
            @scrollSelectionForm = multipleScrollSelectionForm
        end
        

        # throws Exception
        def getDx(index, item, dx, dy)
            return @scrollSelectionForm.getSelectedIndexForPointVerticalDx(index, item, dx, dy)
        end
    end
    class ScrollSelectionFormTempHorizontalDx < ItemIndexDx
        attr_accessor :scrollSelectionForm

        def initialize_fields
            @scrollSelectionForm = nil
        end
        

        def initialize(multipleScrollSelectionForm)
            super()
            initialize_fields
            @scrollSelectionForm = multipleScrollSelectionForm
        end
        

        # throws Exception
        def getDx(index, item, dx, dy)
            return @scrollSelectionForm.getSelectedIndexForPointTempHorizontalDx(index, item, dx, dy)
        end
    end

    def initialize_fields
        @rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
        @border = nil
        @halfBorder = nil
        @buttonBasicColor = nil
        @scrollSelectionFormFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance()
        @formTypeItemIndexDx = ItemIndexDx.getInstance()
        @paintable = ItemPaintableFactory.getInstance()
        @adjustedExtraBorder = nil
    end
    

    def self.createForm(title, items, formPaintableFactory, border, backgroundBasicColor, foregroundBasicColor)
        begin
            if formPaintableFactory == ItemPaintableFactory.getInstance()
                return ScrollSelectionForm.new(title, items, formPaintableFactory, border, -3, backgroundBasicColor, foregroundBasicColor)
            else
                commonStrings = CommonStrings.getInstance()
                logUtil = LogUtil.getInstance()
                logUtil.putF(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION)
                return PaintableForm.getNullPaintableForm()
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            logUtil = LogUtil.getInstance()
            logUtil.put(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION, e)
            return PaintableForm.getNullPaintableForm()
        end
    end
    

    def self.getNullScrollSelectionForm()
        if ScrollSelectionForm::NULL_SCROLL_SELECTION_FORM == NullUtil.getInstance().NULL_OBJECT
            (ScrollSelectionForm.send(:remove_const, :NULL_SCROLL_SELECTION_FORM) if ScrollSelectionForm.const_defined?(:NULL_SCROLL_SELECTION_FORM, false); ScrollSelectionForm.const_set(:NULL_SCROLL_SELECTION_FORM, ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, Array.new(0, nil), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)))
        end
        return ScrollSelectionForm::NULL_SCROLL_SELECTION_FORM
    end
    

    def self.getNullScrollSelectionFormHorizontal()
        if ScrollSelectionForm::NULL_SCROLL_SELECTION_HORIZONTAL_FORM == NullUtil.getInstance().NULL_OBJECT
            (ScrollSelectionForm.send(:remove_const, :NULL_SCROLL_SELECTION_HORIZONTAL_FORM) if ScrollSelectionForm.const_defined?(:NULL_SCROLL_SELECTION_HORIZONTAL_FORM, false); ScrollSelectionForm.const_set(:NULL_SCROLL_SELECTION_HORIZONTAL_FORM, ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, Array.new(0, nil), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)))
        end
        return ScrollSelectionForm::NULL_SCROLL_SELECTION_HORIZONTAL_FORM
    end
    

    def initialize(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)
        super(title, items, backgroundBasicColor, foregroundBasicColor)
        initialize_fields
        @adjustedExtraBorder = adjustedExtraBorder
        @buttonBasicColor = foregroundBasicColor
        @border = border
        @halfBorder = (border >> 1)
        @paintable = formPaintableFactory.getInstanceItemPaintable(self)
    end
    

    # throws Exception
    def init(rectangle, formType)
        super(rectangle, formType)
        formTypeFactory = FormTypeFactory.getInstance()
        if formType == formTypeFactory.HORIZONTAL_FORM
            @scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormHorizontalPaintable.new(self)
            @formTypeItemIndexDx = ScrollSelectionFormHorizontalDx.new(self)
        elsif formType == formTypeFactory.VERTICAL_CENTER_FORM
            @scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormVerticalPaintable.new(self)
            @formTypeItemIndexDx = ScrollSelectionFormVericalDx.new(self)
        elsif formType == formTypeFactory.TEMP_HORIZONTAL_FORM
            @scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormTempHorizontalPaintable.new(self)
            @formTypeItemIndexDx = ScrollSelectionFormTempHorizontalDx.new(self)
        elsif formType == formTypeFactory.NULL_FORM_TYPE
        else
            raise StandardError.new(formTypeFactory.UNK)
        end
    end
    

    def paintItemHorizontal(graphics, index, item, x, y)
        width = item.getMinimumWidth()
        return x + width + @border
    end
    

    def paintItemVertical(graphics, index, item, x, y)
        height = item.getMinimumHeight()
        return y + height + @border
    end
    

    def paintItemTempHorizontal(graphics, index, item, x, y)
        return 0
    end
    

    def getSelectedIndexForPointHorizontalDx(index, item, dx, dy)
        return dx - @halfBorder
    end
    

    def getSelectedIndexForPointVerticalDx(index, item, dx, dy)
        return dx + self.getDiffX(item)
    end
    

    def getSelectedIndexForPointTempHorizontalDx(index, item, dx, dy)
        return dx + self.getDiffX(item)
    end
    

    def append(item)
        return super(item)
    end
    

    # throws Exception
    def getSelectedItem(point)
        index = self.getSelectedIndexForPoint(point)
        if index != -1
            return self.get(index)
        else
            return ABCustomItem.getNullInstance()
        end
    end
    

    # throws Exception
    def getItemIndex(item)
        nextItem = nil
        size = self.size()
        (0...size).each do |index|
            nextItem = self.get(index)
            if nextItem == item
                return index
            end
        end
        return -1
    end
    

    def getStartIndex()
        return 0
    end
    

    # throws Exception
    def getSelectedIndexForPoint(point)
        start = self.getStartIndex()
        size = self.size()
        dx = self.getDx()
        dy = self.getDy()
        formTypeFactory = FormTypeFactory.getInstance()
        commonLabels = CommonLabels.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(commonLabels.START_LABEL)
        stringBuffer.appendint(start)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(commonLabels.TOTAL_LABEL)
        stringBuffer.appendint(size)
        @logUtil.putF(stringBuffer.to_s, self, ScrollSelectionForm::GET_SELECTED_INDEX)
        item = nil
        width = 0
        height = 0
        diffX = 0
        (start...size).each do |index|
            item = self.get(index)
            width = item.getMinimumWidth()
            height = item.getMinimumHeight()
            diffX = @formTypeItemIndexDx.getDx(index, item, dx, dy)
            if @rectangleCollisionUtil.isInside(diffX, dy - @halfBorder, diffX + width + @border, dy + height + @halfBorder + 1, point.getX(), point.getY())
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(commonLabels.ITEM_LABEL)
                stringBuffer.append(item.getLabel())
                stringBuffer.append(CommonSeps.getInstance().SPACE)
                stringBuffer.append(commonLabels.INDEX_LABEL)
                stringBuffer.appendint(index)
                @logUtil.putF(stringBuffer.to_s, self, ScrollSelectionForm::GET_SELECTED_INDEX)
                return index
            end
            if @formType == formTypeFactory.HORIZONTAL_FORM
                dx = dx + width + @border
                if dx > @rectangle.getMaxX()
                    break
                end
            elsif @formType == formTypeFactory.VERTICAL_CENTER_FORM
                dy = dy + height + @border
                if dy > @rectangle.getMaxY()
                    break
                end
            elsif @formType == formTypeFactory.NULL_FORM_TYPE
            else
                raise StandardError.new(formTypeFactory.UNK)
            end
        end
        return -1
    end
    

    # throws Exception
    def processInputKey(gameKeyCode)
        formTypeFactory = FormTypeFactory.getInstance()
        if self.size() == 0
            return -1
        end
        index = self.getSelectedIndex()
        if @formType == formTypeFactory.HORIZONTAL_FORM || @formType == formTypeFactory.TEMP_HORIZONTAL_FORM
            if gameKeyCode == Canvas::RIGHT
                index += 1
            elsif gameKeyCode == Canvas::LEFT
                index -= 1
            end
        elsif @formType == formTypeFactory.VERTICAL_CENTER_FORM
            if gameKeyCode == Canvas::DOWN
                index += 1
            elsif gameKeyCode == Canvas::UP
                index -= 1
            end
        elsif @formType == formTypeFactory.NULL_FORM_TYPE
        else
            raise StandardError.new(formTypeFactory.UNK)
        end
        max = self.size() - 1
        if index < 0
            self.setSelectedIndex(0)
        elsif index > max
            self.setSelectedIndex(max)
        else
            self.setSelectedIndex(index)
        end
        return -1
    end
    

    def isInForm(point)
        if @rectangleCollisionUtil.isInside(@x, @y - @halfBorder, @rectangle.getMaxX() + @border, @rectangle.getMaxY() + @border, point.getX(), point.getY())
            @logUtil.putF(StringMaker.new().append(StringUtil.getInstance().toString(point)).append(ScrollSelectionForm::INSIDE_FORM).to_s, self, ScrollSelectionForm::IS_IN_FORM)
            return true
        end
        return false
    end
    

    # throws Exception
    def paintItem(graphics, index, item, x, y)
        item.paintXY(graphics, x, y)
        width = item.getMinimumWidth()
        height = item.getMinimumHeight()
        graphics.setColor(self.getButtonBasicColor().to_i)
        adjustedBorder = 3
        graphics.drawRect(x - @halfBorder - adjustedBorder, y - @halfBorder - adjustedBorder, width + @border + @adjustedExtraBorder, height + @border + @adjustedExtraBorder)
        return @scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y)
    end
    

    # throws Exception
    def paintUnselectedItem(graphics, index, item, x, y)
        graphics.setColor(self.getButtonBasicColor().to_i)
        item.paintUnselected(graphics, x, y)
        return @scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y)
    end
    

    def getDiffX(item)
        return 0
    end
    

    def getDx()
        return @x
    end
    

    def getDy()
        return @y
    end
    

    def setButtonBasicColor(buttonBasicColor)
        @buttonBasicColor = buttonBasicColor
    end
    

    def getButtonBasicColor()
        return @buttonBasicColor
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:INSIDE_FORM, " inside form")
        const_set(:IS_IN_FORM, "isInForm")
        const_set(:GET_SELECTED_INDEX, "getSelectedIndexForPoint")
        begin
            const_set(:NULL_SCROLL_SELECTION_FORM, NullUtil.getInstance().NULL_OBJECT)
            const_set(:NULL_SCROLL_SELECTION_HORIZONTAL_FORM, NullUtil.getInstance().NULL_OBJECT)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ScrollSelectionForm"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_SCROLL_SELECTION_FORM, :NULL_SCROLL_SELECTION_HORIZONTAL_FORM, :INSIDE_FORM, :IS_IN_FORM, :GET_SELECTED_INDEX].include?(name)
        end
        super
    end
end

autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :GPoint, "org/allbinary/graphics/GPoint"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :RectangleCollisionUtil, "org/allbinary/math/RectangleCollisionUtil"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :FormType, "org/allbinary/graphics/form/FormType"
autoload :FormTypeFactory, "org/allbinary/graphics/form/FormTypeFactory"
autoload :ItemPaintable, "org/allbinary/graphics/form/ItemPaintable"
autoload :ItemPaintableFactory, "org/allbinary/graphics/form/ItemPaintableFactory"

begin
    ScrollSelectionForm.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

