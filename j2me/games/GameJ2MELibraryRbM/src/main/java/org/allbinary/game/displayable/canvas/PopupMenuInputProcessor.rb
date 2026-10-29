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
# package org.allbinary.game.displayable.canvas

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor"

class PopupMenuInputProcessor < BasicMenuInputProcessor
    attr_accessor :rectangleCollisionUtil, :CLICK_DELAY, :clickTimeHelper, :rectangle

    def initialize_fields
        @rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
        @CLICK_DELAY = 120
        @clickTimeHelper = TimeDelayHelper.new(@CLICK_DELAY)
        @rectangle = nil
    end
    

    def initialize(gameKeyEventList, playerInputId, gameCanvas, rectangle)
        super(gameKeyEventList, playerInputId, gameCanvas)
        initialize_fields
        @rectangle = rectangle
    end
    

    def init(rectangle)
        @rectangle = rectangle
    end
    

    # throws Exception
    def processInput(key)
        if key == Canvas::KEY_STAR
            gameCanvas = self.getCanvas()
            gameCanvas.toggleMenu()
            return 1
        end
        return 0
    end
    

    # throws Exception
    def processInputList()
        begin
            motionInputsIndex = self.processMotionInputs()
            list = self.getGameKeyEventList()
            size = list.size()
            key = 0
            gameKeyEvent = nil
            (0...size).each do |index|
                gameKeyEvent = list.objectArray[index]
                if gameKeyEvent != nil
                    key = gameKeyEvent.getKey()
                    if self.processInput(key) == 1
                        break
                    end
                end
            end
            self.clear()
            if size > 0 || motionInputsIndex >= 0
                return 1
            else
                return -1
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, GameInputStrings.getInstance().PROCESS_INPUT, e)
            return -1
        end
    end
    

    # throws Exception
    def processMotionInputs()
        lastIndex = @motionGestureEventList.size() - 1
        if lastIndex >= 0
            motionGestureEvent = @motionGestureEventList.objectArray[lastIndex]
            self.processMotionInput(motionGestureEvent)
        end
        @motionGestureEventList.clear()
        return lastIndex
    end
    

    # throws Exception
    def processMotionInput(motionGestureEvent)
        if motionGestureEvent == nil
            @logUtil.putF("Exception: Bug", self, @gameInputStrings.PROCESS_MOTION_INPUT)
            return
        end
        touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        motionGestureInput = motionGestureEvent.getMotionGesture()
        if motionGestureInput == touchMotionGestureFactory.RELEASED
            point = motionGestureEvent.getCurrentPoint()
            rectPoint = @rectangle.getPoint()
            if @rectangleCollisionUtil.isInside(rectPoint.getX(), rectPoint.getY(), @rectangle.getMaxX() + 20, @rectangle.getMaxY(), point.getX(), point.getY())
                if @clickTimeHelper.isTimeTNT()
                    gameCanvas = self.getCanvas()
                    gameCanvas.toggleMenu()
                end
            end
        end
    end
end

require "org/allbinary/game/input/GameInputStrings"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/displayable/MyCanvas"
require "org/allbinary/input/motion/gesture/MotionGestureInput"
require "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/math/RectangleCollisionUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

