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


class BasicTouchButtonCellPositionFactory
    attr_accessor :logUtil, :commonStrings, :TOP_RIGHT, :TOP_LEFT, :SECOND_FROM_TOP_LEFT, :SECOND_FROM_TOP_RIGHT, :TOP_SECOND_FROM_LEFT, :TOP_SECOND_FROM_RIGHT, :BOTTOM_RIGHT, :BOTTOM_SECOND_FROM_RIGHT, :SECOND_FROM_BOTTOM_RIGHT, :THIRD_FROM_BOTTOM_RIGHT, :FOURTH_FROM_BOTTOM_RIGHT, :SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT, :SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT, :SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT, :BOTTOM_THIRD_FROM_RIGHT, :BOTTOM_FOURTH_FROM_RIGHT, :BOTTOM_SECOND_FROM_LEFT, :SECOND_FROM_BOTTOM_LEFT, :THIRD_FROM_BOTTOM_LEFT, :BOTTOM_LEFT, :SECOND_FROM_BOTTOM_SECOND_FROM_LEFT

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @TOP_RIGHT = nil
        @TOP_LEFT = nil
        @SECOND_FROM_TOP_LEFT = nil
        @SECOND_FROM_TOP_RIGHT = nil
        @TOP_SECOND_FROM_LEFT = nil
        @TOP_SECOND_FROM_RIGHT = nil
        @BOTTOM_RIGHT = nil
        @BOTTOM_SECOND_FROM_RIGHT = nil
        @SECOND_FROM_BOTTOM_RIGHT = nil
        @THIRD_FROM_BOTTOM_RIGHT = nil
        @FOURTH_FROM_BOTTOM_RIGHT = nil
        @SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT = nil
        @SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = nil
        @SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = nil
        @BOTTOM_THIRD_FROM_RIGHT = nil
        @BOTTOM_FOURTH_FROM_RIGHT = nil
        @BOTTOM_SECOND_FROM_LEFT = nil
        @SECOND_FROM_BOTTOM_LEFT = nil
        @THIRD_FROM_BOTTOM_LEFT = nil
        @BOTTOM_LEFT = nil
        @SECOND_FROM_BOTTOM_SECOND_FROM_LEFT = nil
    end
    

    def initialize()
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        touchButtonLocationHelper = TouchButtonLocationHelper.new()
        cellPositionFactory = CellPositionFactory.getInstance()
        cellPositionFactory.init(touchButtonLocationHelper.getTotalColumns(), touchButtonLocationHelper.getTotalRows())
        @TOP_LEFT = cellPositionFactory.getInstanceColRow(0, 0)
        @TOP_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 1, 0)
        @BOTTOM_LEFT = cellPositionFactory.getInstanceColRow(0, touchButtonLocationHelper.getTotalRows() - 1)
        @BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 1, touchButtonLocationHelper.getTotalRows() - 1)
        @BOTTOM_SECOND_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 2, touchButtonLocationHelper.getTotalRows() - 1)
        @SECOND_FROM_BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 1, touchButtonLocationHelper.getTotalRows() - 2)
        @SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 2, touchButtonLocationHelper.getTotalRows() - 2)
        @BOTTOM_SECOND_FROM_LEFT = cellPositionFactory.getInstanceColRow(1, touchButtonLocationHelper.getTotalRows() - 1)
        @SECOND_FROM_BOTTOM_LEFT = cellPositionFactory.getInstanceColRow(0, touchButtonLocationHelper.getTotalRows() - 2)
        @SECOND_FROM_BOTTOM_SECOND_FROM_LEFT = cellPositionFactory.getInstanceColRow(1, touchButtonLocationHelper.getTotalRows() - 2)
        if touchButtonLocationHelper.getTotalRows() > 2
            @SECOND_FROM_TOP_LEFT = cellPositionFactory.getInstanceColRow(0, 1)
            @SECOND_FROM_TOP_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 1, 1)
        else
            @SECOND_FROM_TOP_LEFT = cellPositionFactory.NONE
            @SECOND_FROM_TOP_RIGHT = cellPositionFactory.NONE
        end
        if touchButtonLocationHelper.getTotalRows() >= 4
            @THIRD_FROM_BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 1, touchButtonLocationHelper.getTotalRows() - 3)
            @FOURTH_FROM_BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 1, touchButtonLocationHelper.getTotalRows() - 4)
            @THIRD_FROM_BOTTOM_LEFT = cellPositionFactory.getInstanceColRow(0, touchButtonLocationHelper.getTotalRows() - 3)
        else
            @THIRD_FROM_BOTTOM_RIGHT = cellPositionFactory.NONE
            @FOURTH_FROM_BOTTOM_RIGHT = cellPositionFactory.NONE
            @THIRD_FROM_BOTTOM_LEFT = cellPositionFactory.NONE
        end
        if touchButtonLocationHelper.getTotalColumns() >= 4
            @SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 3, touchButtonLocationHelper.getTotalRows() - 2)
            @SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 4, touchButtonLocationHelper.getTotalRows() - 2)
            @BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 3, touchButtonLocationHelper.getTotalRows() - 1)
            @BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 4, touchButtonLocationHelper.getTotalRows() - 1)
            @TOP_SECOND_FROM_LEFT = cellPositionFactory.getInstanceColRow(1, 0)
            @TOP_SECOND_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 2, 0)
        else
            @SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.NONE
            @SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.NONE
            @BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.NONE
            @BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.NONE
            @TOP_SECOND_FROM_LEFT = cellPositionFactory.NONE
            @TOP_SECOND_FROM_RIGHT = cellPositionFactory.NONE
        end
    end
end

require "org/allbinary/graphics/CellPosition"
require "org/allbinary/graphics/CellPositionFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/motion/button/TouchButtonLocationHelper"

