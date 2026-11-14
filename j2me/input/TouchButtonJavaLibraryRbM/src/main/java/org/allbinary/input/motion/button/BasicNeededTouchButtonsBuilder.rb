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

class BasicNeededTouchButtonsBuilder < BaseTouchInput
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
            touchButtonLocationHelper = TouchButtonLocationHelper.new()
            basicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory.new()
            commonButtons = CommonButtons.getInstance()
            animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
            _UP = TouchButton.new(BasicTouchInputFactory.getInstance().UP, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            _DOWN = TouchButton.new(BasicTouchInputFactory.getInstance().DOWN, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            _LEFT = TouchButton.new(BasicTouchInputFactory.getInstance().LEFT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            _RIGHT = TouchButton.new(BasicTouchInputFactory.getInstance().RIGHT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            list.add(_UP)
            list.add(_DOWN)
            list.add(_LEFT)
            list.add(_RIGHT)
            return list
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.GET_LIST, e)
            return BasicArrayListUtil.getInstance().getImmutableInstance()
        end
    end
end

autoload :Animation, "org/allbinary/animation/Animation"
autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil"
autoload :BasicTouchButtonCellPositionFactory, "org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory"
autoload :BasicTouchInputFactory, "org/allbinary/input/motion/button/BasicTouchInputFactory"
autoload :CommonButtons, "org/allbinary/input/motion/button/CommonButtons"
autoload :TouchButton, "org/allbinary/input/motion/button/TouchButton"
autoload :TouchButtonLocationHelper, "org/allbinary/input/motion/button/TouchButtonLocationHelper"

