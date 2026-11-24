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
require "org/allbinary/graphics/form/ScrollCurrentSelectionForm"

module ::Org; module Allbinary; module Graphics; module Form

class CommandCurrentSelectionForm < ScrollCurrentSelectionForm
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :selectedAnimationArray, :unSelectedAnimationArray

    def jfields_org_allbinary_graphics_form_CommandCurrentSelectionForm
        @selectedAnimationArray = Array.new(16, nil)
        @unSelectedAnimationArray = Array.new(16, nil)
    end
    

    def initialize(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        super(title, items, ItemPaintableFactory.getInstance(), border, -3, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        jfields_org_allbinary_graphics_form_CommandCurrentSelectionForm
        self.initAnimations()
        self.addAll(items)
    end
    

    def updateMeasurement(graphics)
        self.updateAll(graphics, self.getAllitems())
        CommandCurrentSelectionForm.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
    end
    java_overload :updateMeasurement, 1
    

    def initAnimations()
        nullAnimation = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        index = @selectedAnimationArray.length
        while (index -= 1) >= 0
            @selectedAnimationArray[index] = nullAnimation
        end
        index = @unSelectedAnimationArray.length
        while (index -= 1) >= 0
            @unSelectedAnimationArray[index] = nullAnimation
        end
    end
    java_overload :initAnimations, 0
    

    def addAll(items)
        index = items.length
        while (index -= 1) >= 0
            self.addAt(index, items[index])
        end
    end
    java_overload :addAll, 1
    

    def addAt(index, item)
        basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        buttonColor = basicColorFactory.TRANSPARENT_GREY
        selectedButtonColor = basicColorFactory.TRANSPARENT_RED
        width = item.getMinimumWidth()
        height = item.getMinimumHeight()
        adjustedBorder = 3
        offset = -@halfBorder + adjustedBorder
        rectWidth = width + @border - adjustedBorder
        rectHeight = height + @border - adjustedBorder
        if ::Org::Allbinary::J2MEUtil.isJ2ME() || ::Org::Allbinary::J2MEUtil.isHTML()
            @selectedAnimationArray[index] = ::Org::Allbinary::Animation::Vector::RectangleAdjustedAnimation.new(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        else
            @selectedAnimationArray[index] = ::Org::Allbinary::Animation::Vector::RectangleFilledAdjustedAnimation.new(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        end
        adjustedBorder = 4
        if ::Org::Allbinary::J2MEUtil.isJ2ME() || ::Org::Allbinary::J2MEUtil.isHTML()
            @unSelectedAnimationArray[index] = ::Org::Allbinary::Animation::Vector::RectangleAdjustedAnimation.new(rectWidth, rectHeight, offset, offset, buttonColor)
        else
            @unSelectedAnimationArray[index] = ::Org::Allbinary::Animation::Vector::RectangleFilledAdjustedAnimation.new(rectWidth, rectHeight, offset, offset, buttonColor)
        end
    end
    java_overload :addAt, 2
    

    def updateAll(graphics, items)
        index = items.length
        while (index -= 1) >= 0
            items[index].preMeasurement(graphics)
            self.updateAt(index, items[index])
        end
    end
    java_overload :updateAll, 2
    

    def updateAt(index, item)
        basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        buttonColor = basicColorFactory.TRANSPARENT_GREY
        selectedButtonColor = basicColorFactory.TRANSPARENT_RED
        width = item.getMinimumWidth()
        height = item.getMinimumHeight()
        adjustedBorder = 3
        offset = -@halfBorder + adjustedBorder
        rectWidth = width + @border - adjustedBorder
        rectHeight = height + @border - adjustedBorder
        if ::Org::Allbinary::J2MEUtil.isJ2ME() || ::Org::Allbinary::J2MEUtil.isHTML()
            rectangleAdjustedAnimation = @selectedAnimationArray[index]
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor)
        else
            rectangleAdjustedAnimation = @selectedAnimationArray[index]
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor)
        end
        adjustedBorder = 4
        if ::Org::Allbinary::J2MEUtil.isJ2ME() || ::Org::Allbinary::J2MEUtil.isHTML()
            rectangleAdjustedAnimation = @unSelectedAnimationArray[index]
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(buttonColor)
        else
            rectangleAdjustedAnimation = @unSelectedAnimationArray[index]
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(buttonColor)
        end
    end
    java_overload :updateAt, 2
    

    def getSelectedCommand()
        index = CommandCurrentSelectionForm.superclass.java_super_method(:getSelectedIndex, 0).bind(self).call()
        commandTextItem = self.get(index)
        return commandTextItem.getCommand()
    end
    java_overload :getSelectedCommand, 0
    

    def append(item)
        result = CommandCurrentSelectionForm.superclass.java_super_method(:append, 1).bind(self).call(item)
        self.addAt(result, item)
        return result
    end
    java_overload :append, 1
    

    def delete(itemNum)
        CommandCurrentSelectionForm.superclass.java_super_method(:delete, 1).bind(self).call(itemNum)
    end
    java_overload :delete, 1
    

    def deleteAll()
        self.initAnimations()
        CommandCurrentSelectionForm.superclass.java_super_method(:deleteAll, 0).bind(self).call()
    end
    java_overload :deleteAll, 0
    

    def insert(itemNum, item)
        CommandCurrentSelectionForm.superclass.java_super_method(:insert, 2).bind(self).call(itemNum, item)
    end
    java_overload :insert, 2
    

    def set(itemNum, item)
        CommandCurrentSelectionForm.superclass.java_super_method(:set, 2).bind(self).call(itemNum, item)
    end
    java_overload :set, 2
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        CommandCurrentSelectionForm.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
    end
    java_overload :paint, 1
    

    # throws Exception
    def paintItem(graphics, index, item, x, y)
        @selectedAnimationArray[index].paintXY(graphics, x, y)
        return CommandCurrentSelectionForm.superclass.java_super_method(:paintItem, 5).bind(self).call(graphics, index, item, x, y)
    end
    java_overload :paintItem, 5
    

    # throws Exception
    def paintUnselectedItem(graphics, index, item, x, y)
        @unSelectedAnimationArray[index].paintXY(graphics, x, y)
        return CommandCurrentSelectionForm.superclass.java_super_method(:paintUnselectedItem, 5).bind(self).call(graphics, index, item, x, y)
    end
    java_overload :paintUnselectedItem, 5
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; module Vector; autoload :RectangleAdjustedAnimation, "org/allbinary/animation/vector/RectangleAdjustedAnimation" unless const_defined?(:RectangleAdjustedAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Animation; module Vector; autoload :RectangleFilledAdjustedAnimation, "org/allbinary/animation/vector/RectangleFilledAdjustedAnimation" unless const_defined?(:RectangleFilledAdjustedAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :CommandTextItem, "org/allbinary/graphics/form/item/CommandTextItem" unless const_defined?(:CommandTextItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
autoload :ItemPaintableFactory, "org/allbinary/graphics/form/ItemPaintableFactory" unless const_defined?(:ItemPaintableFactory, false)

end; end; end; end

