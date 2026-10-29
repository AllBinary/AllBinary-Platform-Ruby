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

require "java/lang/Object"

class TouchButtonRecognizer
    attr_accessor :logUtil, :rectangleCollisionUtil, :upGameKeyEventHandler, :downGameKeyEventHandler, :lastPressedTouchButtonInput, :currentlyPressedTouchButtonSingleton, :releaseHelper
    #CurrentlyPressedTouchButtonSingletonDebug.getInstance();
    class ReleaseHelper
        attr_accessor :touchButtonRecognizer

        def initialize_fields
            @touchButtonRecognizer = nil
        end
        

        def initialize(touchButtonRecognizer)
            initialize_fields
            @touchButtonRecognizer = touchButtonRecognizer
        end
        

        # throws Exception
        def release(touchButtonInput, deviceId)
            nextTouchButtonInput = nil
            gameKeyEvent = nil
            (@touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size() - 1).step(0, -(1)) do |index|
                nextTouchButtonInput = @touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index)
                gameKeyEvent = nextTouchButtonInput.getGameKeyEvent()
                @touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent)
                @touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
                @touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index)
            end
        end
    end
    class MultitouchReleaseHelper < ReleaseHelper
        

        def initialize(touchButtonRecognizer)
            super(touchButtonRecognizer)
        end
        

        # throws Exception
        def release(touchButtonInput, deviceId)
            cancelTouchButtonInput = CancelTouchButtonInputFactory.getInstance().getCancel(touchButtonInput)
            nextTouchButtonInput = nil
            gameKeyEvent = nil
            (@touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size() - 1).step(0, -(1)) do |index|
                nextTouchButtonInput = @touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index)
                if cancelTouchButtonInput == nextTouchButtonInput
                    gameKeyEvent = nextTouchButtonInput.getGameKeyEvent()
                    @touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent)
                    @touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
                    @touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index)
                end
            end
        end
    end

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
        @upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
        @downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
        @lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE
        @currentlyPressedTouchButtonSingleton = CurrentlyPressedTouchButtonSingleton.getInstance()
        @releaseHelper = nil
    end
    

    def initialize()
        initialize_fields
        if TouchScreenFactory.getInstance().isMultiTouch()
            @releaseHelper = MultitouchReleaseHelper.new(self)
        else
            @releaseHelper = ReleaseHelper.new(self)
        end
    end
    

    # throws Exception
    def processRelease(touchButtonInput, deviceId)
        @releaseHelper.release(touchButtonInput, deviceId)
        gameKeyEvent = touchButtonInput.getGameKeyEvent()
        @upGameKeyEventHandler.fireEvent(gameKeyEvent)
        @upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
        @currentlyPressedTouchButtonSingleton.remove(touchButtonInput)
    end
    

    # throws Exception
    def releaseTouchButtonInput(x, y, deviceId)
        java_monitor.synchronize do
        touchButtonInput = @lastPressedTouchButtonInput
        if @currentlyPressedTouchButtonSingleton.contains(touchButtonInput)
            @lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE
            self.processRelease(touchButtonInput, deviceId)
            return true
        else
            list = TouchButtonFactory.getInstance().getList()
            rectangle = nil
            point = nil
            touchButton = nil
            (list.size() - 1).step(0, -(1)) do |index|
                touchButton = list.objectArray[index]
                rectangle = touchButton.getRectangle()
                point = rectangle.getPoint()
                if @rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)
                    touchButtonInput = touchButton.getTouchButtonInput()
                    self.processRelease(touchButtonInput, deviceId)
                    return true
                end
            end
        end
        return false
        end
    end
    

    # throws Exception
    def pressTouchButtonInput(x, y, deviceId)
        java_monitor.synchronize do
        list = TouchButtonFactory.getInstance().getList()
        rectangle = nil
        point = nil
        touchButton = nil
        touchButtonInput = nil
        gameKeyEvent = nil
        (list.size() - 1).step(0, -(1)) do |index|
            touchButton = list.objectArray[index]
            rectangle = touchButton.getRectangle()
            point = rectangle.getPoint()
            if @rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)
                touchButtonInput = touchButton.getTouchButtonInput()
                if !@currentlyPressedTouchButtonSingleton.contains(touchButtonInput)
                    @releaseHelper.release(touchButtonInput, deviceId)
                    @lastPressedTouchButtonInput = touchButtonInput
                    @currentlyPressedTouchButtonSingleton.add(touchButtonInput)
                    gameKeyEvent = touchButtonInput.getGameKeyEvent()
                    @downGameKeyEventHandler.fireEvent(gameKeyEvent)
                    @downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
                end
                return true
            end
        end
        return false
        end
    end
end

require "org/allbinary/game/input/event/DownGameKeyEventHandler"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/input/event/UpGameKeyEventHandler"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/math/RectangleCollisionUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/input/motion/button/BasicTouchInputFactory"
require "org/allbinary/input/motion/button/CancelTouchButtonInputFactory"
require "org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton"
require "org/allbinary/input/motion/button/TouchButton"
require "org/allbinary/input/motion/button/TouchButtonFactory"
require "org/allbinary/input/motion/button/TouchButtonInput"
require "org/allbinary/input/motion/button/TouchScreenFactory"

