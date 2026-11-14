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
        CompleteMotionGestureInputToGameMotionGestureInput.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CompleteMotionGestureInputToGameMotionGestureInput.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CompleteMotionGestureInputToGameMotionGestureInput.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CompleteMotionGestureInputToGameMotionGestureInput"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
autoload :MotionGestureConfiguration, "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration"
autoload :MotionGestureConfigurationFactory, "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory"
autoload :DiagonalDownLeftTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/DiagonalDownLeftTouchInputToGameKeyEventAction"
autoload :DiagonalDownRightTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/DiagonalDownRightTouchInputToGameKeyEventAction"
autoload :DiagonalUpLeftTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/DiagonalUpLeftTouchInputToGameKeyEventAction"
autoload :DiagonalUpRightTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/DiagonalUpRightTouchInputToGameKeyEventAction"
autoload :DownTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/DownTouchInputToGameKeyEventAction"
autoload :LeftTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/LeftTouchInputToGameKeyEventAction"
autoload :ReleaseTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/ReleaseTouchInputToGameKeyEventAction"
autoload :RightTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/RightTouchInputToGameKeyEventAction"
autoload :UpTouchInputToGameKeyEventAction, "org/allbinary/input/motion/touch/action/UpTouchInputToGameKeyEventAction"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

begin
    CompleteMotionGestureInputToGameMotionGestureInput.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

