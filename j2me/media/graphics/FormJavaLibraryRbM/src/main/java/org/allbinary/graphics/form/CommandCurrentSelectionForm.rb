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

# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/form/ScrollCurrentSelectionForm"

class CommandCurrentSelectionForm < ScrollCurrentSelectionForm
    include UpdateMyFontInterface
    attr_accessor :selectedAnimationArray, :unSelectedAnimationArray

    def initialize_fields
        @selectedAnimationArray = Array.new(16, nil)
        @unSelectedAnimationArray = Array.new(16, nil)
    end
    

    def initialize(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        super(title, items, ItemPaintableFactory.getInstance(), border, -3, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        initialize_fields
        self.initAnimations()
        self.addAll(items)
    end
    

    def updateMeasurement(graphics)
        self.updateAll(graphics, self.getAllitems())
        super(graphics)
    end
    

    def initAnimations()
        nullAnimation = NullAnimationFactory.getFactoryInstance().getInstance(0)
        index = @selectedAnimationArray.length
        while (index -= 1) >= 0
            @selectedAnimationArray[index] = nullAnimation
        end
        index = @unSelectedAnimationArray.length
        while (index -= 1) >= 0
            @unSelectedAnimationArray[index] = nullAnimation
        end
    end
    

    def addAll(items)
        index = items.length
        while (index -= 1) >= 0
            self.addAt(index, items[index])
        end
    end
    

    def addAt(index, item)
        basicColorFactory = BasicColorFactory.getInstance()
        buttonColor = basicColorFactory.TRANSPARENT_GREY
        selectedButtonColor = basicColorFactory.TRANSPARENT_RED
        width = item.getMinimumWidth()
        height = item.getMinimumHeight()
        adjustedBorder = 3
        offset = -(@halfBorder + adjustedBorder)
        rectWidth = width + @border - adjustedBorder
        rectHeight = height + @border - adjustedBorder
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
            @selectedAnimationArray[index] = RectangleAdjustedAnimation.new(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        else
            @selectedAnimationArray[index] = RectangleFilledAdjustedAnimation.new(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        end
        adjustedBorder = 4
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
            @unSelectedAnimationArray[index] = RectangleAdjustedAnimation.new(rectWidth, rectHeight, offset, offset, buttonColor)
        else
            @unSelectedAnimationArray[index] = RectangleFilledAdjustedAnimation.new(rectWidth, rectHeight, offset, offset, buttonColor)
        end
    end
    

    def updateAll(graphics, items)
        index = items.length
        while (index -= 1) >= 0
            items[index].preMeasurement(graphics)
            self.updateAt(index, items[index])
        end
    end
    

    def updateAt(index, item)
        basicColorFactory = BasicColorFactory.getInstance()
        buttonColor = basicColorFactory.TRANSPARENT_GREY
        selectedButtonColor = basicColorFactory.TRANSPARENT_RED
        width = item.getMinimumWidth()
        height = item.getMinimumHeight()
        adjustedBorder = 3
        offset = -(@halfBorder + adjustedBorder)
        rectWidth = width + @border - adjustedBorder
        rectHeight = height + @border - adjustedBorder
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
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
        if J2MEUtil.isJ2ME() || J2MEUtil.isHTML()
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
    

    def getSelectedCommand()
        index = self.class.superclass.instance_method(:getSelectedIndex).bind(self).call()
        commandTextItem = self.get(index)
        return commandTextItem.getCommand()
    end
    

    def append(item)
        result = super(item)
        self.addAt(result, item)
        return result
    end
    

    def delete(itemNum)
        super(itemNum)
    end
    

    def deleteAll()
        self.initAnimations()
        super()
    end
    

    def insert(itemNum, item)
        super(itemNum, item)
    end
    

    def set(itemNum, item)
        super(itemNum, item)
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        super(graphics)
    end
    

    # throws Exception
    def paintItem(graphics, index, item, x, y)
        @selectedAnimationArray[index].paintXY(graphics, x, y)
        return super(graphics, index, item, x, y)
    end
    

    # throws Exception
    def paintUnselectedItem(graphics, index, item, x, y)
        @unSelectedAnimationArray[index].paintXY(graphics, x, y)
        return super(graphics, index, item, x, y)
    end
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/animation/vector/RectangleAdjustedAnimation"
require "org/allbinary/animation/vector/RectangleFilledAdjustedAnimation"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/form/item/CommandTextItem"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/graphics/form/ItemPaintableFactory"

