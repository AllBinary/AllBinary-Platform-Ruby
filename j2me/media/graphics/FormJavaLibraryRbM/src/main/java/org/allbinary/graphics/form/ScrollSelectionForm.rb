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
require "org/allbinary/graphics/form/PaintableForm"

module ::Org; module Allbinary; module Graphics; module Form

class ScrollSelectionForm < PaintableForm
    attr_accessor :rectangleCollisionUtil, :border, :halfBorder, :buttonBasicColor, :scrollSelectionFormFormTypeItemIndexPaintable, :formTypeItemIndexDx, :paintable, :adjustedExtraBorder

    def jfields_org_allbinary_graphics_form_ScrollSelectionForm
        @rectangleCollisionUtil = ::Org::Allbinary::MathPackage::RectangleCollisionUtil.getInstance()
        @border = nil unless instance_variable_defined?(:@border)
        @halfBorder = nil unless instance_variable_defined?(:@halfBorder)
        @buttonBasicColor = nil unless instance_variable_defined?(:@buttonBasicColor)
        @scrollSelectionFormFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance()
        @formTypeItemIndexDx = ItemIndexDx.getInstance()
        @paintable = ItemPaintableFactory.getInstance()
        @adjustedExtraBorder = nil unless instance_variable_defined?(:@adjustedExtraBorder)
    end
    

    def self.createForm(title, items, formPaintableFactory, border, backgroundBasicColor, foregroundBasicColor)
        begin
            if formPaintableFactory == ItemPaintableFactory.getInstance()
                return ScrollSelectionForm.new(title, items, formPaintableFactory, border, -3, backgroundBasicColor, foregroundBasicColor)
            else
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                logUtil.putF(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION)
                return PaintableForm.getNullPaintableForm()
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            logUtil.put(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION, e)
            return PaintableForm.getNullPaintableForm()
        end
    end
    

    def self.getNullScrollSelectionForm()
        if NULL_SCROLL_SELECTION_FORM == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (ScrollSelectionForm.instance_exec(ScrollSelectionForm.createForm(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, Array.new(0, nil), ItemPaintableFactory.getInstance(), 0, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE)) { |java_value| remove_const(:NULL_SCROLL_SELECTION_FORM) if const_defined?(:NULL_SCROLL_SELECTION_FORM, false); const_set(:NULL_SCROLL_SELECTION_FORM, java_value) })
        end
        return NULL_SCROLL_SELECTION_FORM
    end
    

    def self.getNullScrollSelectionFormHorizontal()
        if NULL_SCROLL_SELECTION_HORIZONTAL_FORM == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (ScrollSelectionForm.instance_exec(ScrollSelectionForm.createForm(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, Array.new(0, nil), ItemPaintableFactory.getInstance(), 0, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE)) { |java_value| remove_const(:NULL_SCROLL_SELECTION_HORIZONTAL_FORM) if const_defined?(:NULL_SCROLL_SELECTION_HORIZONTAL_FORM, false); const_set(:NULL_SCROLL_SELECTION_HORIZONTAL_FORM, java_value) })
        end
        return NULL_SCROLL_SELECTION_HORIZONTAL_FORM
    end
    

    def initialize(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)
        super(title, items, backgroundBasicColor, foregroundBasicColor)
        jfields_org_allbinary_graphics_form_ScrollSelectionForm
        @adjustedExtraBorder = adjustedExtraBorder
        @buttonBasicColor = foregroundBasicColor
        @border = border
        @halfBorder = (border >> 1)
        @paintable = formPaintableFactory.getInstanceItemPaintable(self)
    end
    

    # throws Exception
    def init(rectangle, formType)
        ScrollSelectionForm.superclass.java_super_method(:init, 2).bind(self).call(rectangle, formType)
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
    java_overload :init, 2
    

    def paintItemHorizontal(graphics, index, item, x, y)
        width = item.getMinimumWidth()
        return x + width + @border
    end
    java_overload :paintItemHorizontal, 5
    

    def paintItemVertical(graphics, index, item, x, y)
        height = item.getMinimumHeight()
        return y + height + @border
    end
    java_overload :paintItemVertical, 5
    

    def paintItemTempHorizontal(graphics, index, item, x, y)
        return 0
    end
    java_overload :paintItemTempHorizontal, 5
    

    def getSelectedIndexForPointHorizontalDx(index, item, dx, dy)
        return dx - @halfBorder
    end
    java_overload :getSelectedIndexForPointHorizontalDx, 4
    

    def getSelectedIndexForPointVerticalDx(index, item, dx, dy)
        return dx + self.getDiffX(item)
    end
    java_overload :getSelectedIndexForPointVerticalDx, 4
    

    def getSelectedIndexForPointTempHorizontalDx(index, item, dx, dy)
        return dx + self.getDiffX(item)
    end
    java_overload :getSelectedIndexForPointTempHorizontalDx, 4
    

    def append(item)
        return ScrollSelectionForm.superclass.java_super_method(:append, 1).bind(self).call(item)
    end
    java_overload :append, 1
    

    # throws Exception
    def getSelectedItem(point)
        index = self.getSelectedIndexForPoint(point)
        if index != -1
            return self.get(index)
        else
            return ::Org::Allbinary::Graphics::Form::Item::ABCustomItem.getNullInstance()
        end
    end
    java_overload :getSelectedItem, 1
    

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
    java_overload :getItemIndex, 1
    

    def getStartIndex()
        return 0
    end
    java_overload :getStartIndex, 0
    

    # throws Exception
    def getSelectedIndexForPoint(point)
        start = self.getStartIndex()
        size = self.size()
        dx = self.getDx()
        dy = self.getDy()
        formTypeFactory = FormTypeFactory.getInstance()
        commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(commonLabels.START_LABEL)
        stringBuffer.appendint(start)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(commonLabels.TOTAL_LABEL)
        stringBuffer.appendint(size)
        @logUtil.putF(stringBuffer.to_s, self, GET_SELECTED_INDEX)
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
                stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
                stringBuffer.append(commonLabels.INDEX_LABEL)
                stringBuffer.appendint(index)
                @logUtil.putF(stringBuffer.to_s, self, GET_SELECTED_INDEX)
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
    java_overload :getSelectedIndexForPoint, 1
    

    # throws Exception
    def processInputKey(gameKeyCode)
        formTypeFactory = FormTypeFactory.getInstance()
        if self.size() == 0
            return -1
        end
        index = self.getSelectedIndex()
        if @formType == formTypeFactory.HORIZONTAL_FORM || @formType == formTypeFactory.TEMP_HORIZONTAL_FORM
            if gameKeyCode == ::Javax::Microedition::Lcdui::Canvas::RIGHT
                index += 1
            elsif gameKeyCode == ::Javax::Microedition::Lcdui::Canvas::LEFT
                index -= 1
            end
        elsif @formType == formTypeFactory.VERTICAL_CENTER_FORM
            if gameKeyCode == ::Javax::Microedition::Lcdui::Canvas::DOWN
                index += 1
            elsif gameKeyCode == ::Javax::Microedition::Lcdui::Canvas::UP
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
    java_overload :processInputKey, 1
    

    def isInForm(point)
        if @rectangleCollisionUtil.isInside(@x, @y - @halfBorder, @rectangle.getMaxX() + @border, @rectangle.getMaxY() + @border, point.getX(), point.getY())
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(point)).append(INSIDE_FORM).to_s, self, IS_IN_FORM)
            return true
        end
        return false
    end
    java_overload :isInForm, 1
    

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
    java_overload :paintItem, 5
    

    # throws Exception
    def paintUnselectedItem(graphics, index, item, x, y)
        graphics.setColor(self.getButtonBasicColor().to_i)
        item.paintUnselected(graphics, x, y)
        return @scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y)
    end
    java_overload :paintUnselectedItem, 5
    

    def getDiffX(item)
        return 0
    end
    java_overload :getDiffX, 1
    

    def getDx()
        return @x
    end
    java_overload :getDx, 0
    

    def getDy()
        return @y
    end
    java_overload :getDy, 0
    

    def setButtonBasicColor(buttonBasicColor)
        @buttonBasicColor = buttonBasicColor
    end
    java_overload :setButtonBasicColor, 1
    

    def getButtonBasicColor()
        return @buttonBasicColor
    end
    java_overload :getButtonBasicColor, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:INSIDE_FORM, " inside form")
        const_set(:IS_IN_FORM, "isInForm")
        const_set(:GET_SELECTED_INDEX, "getSelectedIndexForPoint")
        begin
            const_set(:NULL_SCROLL_SELECTION_FORM, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
            const_set(:NULL_SCROLL_SELECTION_HORIZONTAL_FORM, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
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

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :RectangleCollisionUtil, "org/allbinary/math/RectangleCollisionUtil" unless const_defined?(:RectangleCollisionUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :FormType, "org/allbinary/graphics/form/FormType" unless const_defined?(:FormType, false)
autoload :FormTypeFactory, "org/allbinary/graphics/form/FormTypeFactory" unless const_defined?(:FormTypeFactory, false)
autoload :ItemIndexDx, "org/allbinary/graphics/form/ItemIndexDx" unless const_defined?(:ItemIndexDx, false)
autoload :ItemIndexPaintable, "org/allbinary/graphics/form/ItemIndexPaintable" unless const_defined?(:ItemIndexPaintable, false)
autoload :ItemPaintable, "org/allbinary/graphics/form/ItemPaintable" unless const_defined?(:ItemPaintable, false)
autoload :ItemPaintableFactory, "org/allbinary/graphics/form/ItemPaintableFactory" unless const_defined?(:ItemPaintableFactory, false)
autoload :ScrollSelectionFormHorizontalDx, "org/allbinary/graphics/form/ScrollSelectionFormHorizontalDx" unless const_defined?(:ScrollSelectionFormHorizontalDx, false)
autoload :ScrollSelectionFormHorizontalPaintable, "org/allbinary/graphics/form/ScrollSelectionFormHorizontalPaintable" unless const_defined?(:ScrollSelectionFormHorizontalPaintable, false)
autoload :ScrollSelectionFormTempHorizontalDx, "org/allbinary/graphics/form/ScrollSelectionFormTempHorizontalDx" unless const_defined?(:ScrollSelectionFormTempHorizontalDx, false)
autoload :ScrollSelectionFormTempHorizontalPaintable, "org/allbinary/graphics/form/ScrollSelectionFormTempHorizontalPaintable" unless const_defined?(:ScrollSelectionFormTempHorizontalPaintable, false)
autoload :ScrollSelectionFormVericalDx, "org/allbinary/graphics/form/ScrollSelectionFormVericalDx" unless const_defined?(:ScrollSelectionFormVericalDx, false)
autoload :ScrollSelectionFormVerticalPaintable, "org/allbinary/graphics/form/ScrollSelectionFormVerticalPaintable" unless const_defined?(:ScrollSelectionFormVerticalPaintable, false)

begin
    ScrollSelectionForm.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

