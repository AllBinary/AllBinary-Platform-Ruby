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
# package org.allbinary.input.motion.button

require "org/allbinary/graphics/paint/Paintable"

class TouchButtonsMappingPaintable < Paintable
    attr_accessor :logUtil, :foregroundColor, :paintableTable, :touchButtonLocationHelper

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @foregroundColor = nil
        @paintableTable = Array.new(0) { Array.new(0, nil) }
        @touchButtonLocationHelper = TouchButtonLocationHelper.new()
    end
    

    def initialize(basicColor)
        super()
        initialize_fields
        @foregroundColor = basicColor.to_i
        self.init()
    end
    

    def init()
        begin
            @paintableTable = self.createPaintableTable()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "updateRectangle", e)
        end
    end
    

    # throws Exception
    def createPaintableTable()
        totalColumns = @touchButtonLocationHelper.getTotalColumns()
        totalRows = @touchButtonLocationHelper.getTotalRows()
        paintableTable = Array.new(totalColumns) { Array.new(totalRows, nil) }
        cellPositionFactory = CellPositionFactory.getInstance()
        commonButtons = CommonButtons.getInstance()
        (totalColumns - 1).step(0, -(1)) do |index|
            (totalRows - 1).step(0, -(1)) do |rowIndex|
                @paintableTable[index][rowIndex] = TouchButton.createButton(BasicTouchInputFactory.getInstance().NONE, TouchButtonBlankResource.getInstance(), commonButtons.NORMAL_BUTTON, cellPositionFactory.getInstanceColRow(index, rowIndex), @touchButtonLocationHelper.getColumnsRemainderHalf(), @touchButtonLocationHelper.getRowsRemainderHalf())
            end
        end
        return paintableTable
    end
    

    def paint(graphics)
        totalColumns = @touchButtonLocationHelper.getTotalColumns()
        totalRows = @touchButtonLocationHelper.getTotalRows()
        (totalColumns - 1).step(0, -(1)) do |index|
            (totalRows - 1).step(0, -(1)) do |rowIndex|
                @paintableTable[index][rowIndex].paint(graphics)
            end
        end
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :CellPositionFactory, "org/allbinary/graphics/CellPositionFactory"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicTouchInputFactory, "org/allbinary/input/motion/button/BasicTouchInputFactory"
autoload :CommonButtons, "org/allbinary/input/motion/button/CommonButtons"
autoload :TouchButton, "org/allbinary/input/motion/button/TouchButton"
autoload :TouchButtonBlankResource, "org/allbinary/input/motion/button/TouchButtonBlankResource"
autoload :TouchButtonLocationHelper, "org/allbinary/input/motion/button/TouchButtonLocationHelper"

