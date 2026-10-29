# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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

class BuildingScrollTouchButtonsBuilder < BaseTouchInput
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
            commonButtons = CommonButtons.getInstance()
            basicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory.new()
            _LEFT = TouchButton.createButton(BasicTouchInputFactory.getInstance().LEFT, TouchButtonStrafeLeftResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.TOP_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            _RIGHT = TouchButton.createButton(BasicTouchInputFactory.getInstance().RIGHT, TouchButtonStrafeRightResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.TOP_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            list.add(_LEFT)
            list.add(_RIGHT)
            return list
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            return BasicArrayListUtil.getInstance().getImmutableInstance()
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory"
require "org/allbinary/input/motion/button/BasicTouchInputFactory"
require "org/allbinary/input/motion/button/CommonButtons"
require "org/allbinary/input/motion/button/TouchButton"
require "org/allbinary/input/motion/button/TouchButtonLocationHelper"
require "org/allbinary/input/motion/button/TouchButtonStrafeLeftResource"
require "org/allbinary/input/motion/button/TouchButtonStrafeRightResource"

