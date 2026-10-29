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
# package org.allbinary.input.motion


class CompleteMotionGestureInputToGameMotionGestureInput
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CompleteMotionGestureInputToGameMotionGestureInput.instance
    end
    

    def init()
        commonStrings = CommonStrings.getInstance()
        begin
            PreLogUtil.put("Compound Motion Gestures", self, commonStrings.INIT)
            motionGestureConfiguration = MotionGestureConfigurationFactory.getInstance()
            touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownLeftTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownRightTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DIAGONAL_UP_LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpLeftTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DIAGONAL_UP_RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpRightTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, LeftTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, RightTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DOWN)
            motionGestureConfiguration.addMotionGestureAction(list, DownTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.UP)
            motionGestureConfiguration.addMotionGestureAction(list, UpTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.RELEASED)
            motionGestureConfiguration.addMotionGestureAction(list, ReleaseTouchInputToGameKeyEventAction.getInstance())
        rescue StandardError => e
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.INIT, e)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
require "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration"
require "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory"
require "org/allbinary/input/motion/touch/action/DiagonalDownLeftTouchInputToGameKeyEventAction"
require "org/allbinary/input/motion/touch/action/DiagonalDownRightTouchInputToGameKeyEventAction"
require "org/allbinary/input/motion/touch/action/DiagonalUpLeftTouchInputToGameKeyEventAction"
require "org/allbinary/input/motion/touch/action/DiagonalUpRightTouchInputToGameKeyEventAction"
require "org/allbinary/input/motion/touch/action/DownTouchInputToGameKeyEventAction"
require "org/allbinary/input/motion/touch/action/LeftTouchInputToGameKeyEventAction"
require "org/allbinary/input/motion/touch/action/ReleaseTouchInputToGameKeyEventAction"
require "org/allbinary/input/motion/touch/action/RightTouchInputToGameKeyEventAction"
require "org/allbinary/input/motion/touch/action/UpTouchInputToGameKeyEventAction"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class CompleteMotionGestureInputToGameMotionGestureInput
    @@instance = CompleteMotionGestureInputToGameMotionGestureInput.new()
end

