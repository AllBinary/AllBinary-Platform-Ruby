#
# AllBinary Open License Version 1
# Copyright (c) 2009 AllBinary
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
# package org.allbinary.android.input.motion.api5

require "org/allbinary/android/input/motion/BaseGameInputMotionEventProcessor"

class GameInputMotionEventProcessorAPI5 < BaseGameInputMotionEventProcessor
    attr_accessor :logUtil, :displayInfo, :motionRecognizerArray, :TOTAL_MINUS_ONE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @displayInfo = DisplayInfoSingleton.getInstance()
        @motionRecognizerArray = nil
        @TOTAL_MINUS_ONE = nil
    end
    

    def self.getInstance()
        if GameInputMotionEventProcessorAPI5.instance == NullUtil.getInstance().NULL_OBJECT
            GameInputMotionEventProcessorAPI5.instance = GameInputMotionEventProcessorAPI5.new()
        end
        return GameInputMotionEventProcessorAPI5.instance
    end
    

    def initialize()
        super()
        initialize_fields
        size = GameInputMotionInfoAPI5.getInstance().MAX_POINTERS
        @motionRecognizerArray = Array.new(size, nil)
        @TOTAL_MINUS_ONE = size
        (0...size).each do |index|
            @motionRecognizerArray[index] = AllMotionRecognizer.new()
        end
    end
    

    def isValid(pointerId)
        if pointerId > @TOTAL_MINUS_ONE
            message = "Log that the pointer Ids are not what would be expected or Android has more than what I set my stuff to support pointerId: "
            ForcedLogUtil.log(message + (pointerId).to_s, self)
            return false
        else
            return true
        end
    end
    

    def process(motionEvent)
        begin
            action = motionEvent.getAction()
            total = @motionRecognizerArray.length
            if total > motionEvent.getPointerCount()
                total = motionEvent.getPointerCount()
            else
                message = "Log that Android has more pointers than I have expected so increase it motionEvent.getPointerCount(): "
                ForcedLogUtil.log(message + (motionEvent.getPointerCount()).to_s, self)
            end
            totalMinusOne = total - 1
            if action == MotionEvent::ACTION_DOWN
                (totalMinusOne).step(0, -(1)) do |pointerIndex|
                    pointerId = motionEvent.getPointerId(pointerIndex)
                    if self.isValid(pointerId)
                        scalableListener = @displayInfo.getScalableListener()
                        x = (((motionEvent.getX(pointerIndex) - @displayInfo.getLeft()) / scalableListener.getRatio(@displayInfo.getRatio()))).to_i
                        y = (((motionEvent.getY(pointerIndex) - @displayInfo.getTop()) / scalableListener.getRatio(@displayInfo.getRatio()))).to_i
                        @motionRecognizerArray[pointerId].processStartMotionEvent(x, y, motionEvent.getDeviceId(), 0)
                    end
                end
            elsif action == MotionEvent::ACTION_UP || action == MotionEvent::ACTION_CANCEL
                (totalMinusOne).step(0, -(1)) do |pointerIndex|
                    pointerId = motionEvent.getPointerId(pointerIndex)
                    if self.isValid(pointerId)
                        scalableListener = @displayInfo.getScalableListener()
                        x = (((motionEvent.getX(pointerIndex) - @displayInfo.getLeft()) / scalableListener.getRatio(@displayInfo.getRatio()))).to_i
                        y = (((motionEvent.getY(pointerIndex) - @displayInfo.getTop()) / scalableListener.getRatio(@displayInfo.getRatio()))).to_i
                        @motionRecognizerArray[pointerId].processEndMotionEvent(x, y, motionEvent.getDeviceId(), 0)
                    end
                end
            elsif action == MotionEvent::ACTION_MOVE
                (totalMinusOne).step(0, -(1)) do |pointerIndex|
                    pointerId = motionEvent.getPointerId(pointerIndex)
                    if self.isValid(pointerId)
                        scalableListener = @displayInfo.getScalableListener()
                        x = (((motionEvent.getX(pointerIndex) - @displayInfo.getLeft()) / scalableListener.getRatio(@displayInfo.getRatio()))).to_i
                        y = (((motionEvent.getY(pointerIndex) - @displayInfo.getTop()) / scalableListener.getRatio(@displayInfo.getRatio()))).to_i
                        @motionRecognizerArray[pointerId].processDraggedMotionEvent(x, y, motionEvent.getDeviceId(), 0)
                    end
                end
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/view/MotionEvent"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/displayable/ScalableListener"
require "org/allbinary/input/motion/AllMotionRecognizer"
require "org/allbinary/input/motion/MotionRecognizer"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/android/input/motion/api5/GameInputMotionInfoAPI5"

class GameInputMotionEventProcessorAPI5
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

