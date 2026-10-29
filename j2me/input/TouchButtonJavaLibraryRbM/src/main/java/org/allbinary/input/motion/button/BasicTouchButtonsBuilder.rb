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

require "org/allbinary/input/motion/button/BaseTouchInput"

class BasicTouchButtonsBuilder < BaseTouchInput
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        super()
        initialize_fields
    end
    

    def getList()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
            list = BasicArrayListD.new()
            commonButtons = CommonButtons.getInstance()
            touchButtonLocationHelper = TouchButtonLocationHelper.new()
            basicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory.new()
            _UP = TouchButton.createButton(BasicTouchInputFactory.getInstance().UP, TouchButtonUpResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            _DOWN = TouchButton.createButton(BasicTouchInputFactory.getInstance().DOWN, TouchButtonDownResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            _LEFT = TouchButton.createButton(BasicTouchInputFactory.getInstance().SPECIAL_BUTTON_FOUR, TouchButtonTurnLeftResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            _RIGHT = TouchButton.createButton(BasicTouchInputFactory.getInstance().SPECIAL_BUTTON_THREE, TouchButtonTurnRightResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            list.add(_UP)
            list.add(_LEFT)
            list.add(_RIGHT)
            list.add(_DOWN)
            return list
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.GET_LIST, e)
            return BasicArrayListUtil.getInstance().getImmutableInstance()
        end
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory"
require "org/allbinary/input/motion/button/BasicTouchInputFactory"
require "org/allbinary/input/motion/button/CommonButtons"
require "org/allbinary/input/motion/button/TouchButton"
require "org/allbinary/input/motion/button/TouchButtonDownResource"
require "org/allbinary/input/motion/button/TouchButtonLocationHelper"
require "org/allbinary/input/motion/button/TouchButtonTurnLeftResource"
require "org/allbinary/input/motion/button/TouchButtonTurnRightResource"
require "org/allbinary/input/motion/button/TouchButtonUpResource"

