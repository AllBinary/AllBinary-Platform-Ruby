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

module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchButtonRecognizer
    attr_accessor :logUtil, :rectangleCollisionUtil, :upGameKeyEventHandler, :downGameKeyEventHandler, :lastPressedTouchButtonInput, :currentlyPressedTouchButtonSingleton, :releaseHelper

    def jfields_org_allbinary_input_motion_button_TouchButtonRecognizer
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @rectangleCollisionUtil = ::Org::Allbinary::MathPackage::RectangleCollisionUtil.getInstance()
        @upGameKeyEventHandler = ::Org::Allbinary::Game::Input::Event::UpGameKeyEventHandler.getInstance()
        @downGameKeyEventHandler = ::Org::Allbinary::Game::Input::Event::DownGameKeyEventHandler.getInstance()
        @lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE
        @currentlyPressedTouchButtonSingleton = CurrentlyPressedTouchButtonSingleton.getInstance()
        @releaseHelper = nil unless instance_variable_defined?(:@releaseHelper)
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_button_TouchButtonRecognizer
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

module ::Org; module Allbinary; module Game; module Input; module Event; autoload :DownGameKeyEventHandler, "org/allbinary/game/input/event/DownGameKeyEventHandler" unless const_defined?(:DownGameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :UpGameKeyEventHandler, "org/allbinary/game/input/event/UpGameKeyEventHandler" unless const_defined?(:UpGameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :RectangleCollisionUtil, "org/allbinary/math/RectangleCollisionUtil" unless const_defined?(:RectangleCollisionUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :BasicTouchInputFactory, "org/allbinary/input/motion/button/BasicTouchInputFactory" unless const_defined?(:BasicTouchInputFactory, false)
autoload :CurrentlyPressedTouchButtonSingleton, "org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton" unless const_defined?(:CurrentlyPressedTouchButtonSingleton, false)
autoload :MultitouchReleaseHelper, "org/allbinary/input/motion/button/MultitouchReleaseHelper" unless const_defined?(:MultitouchReleaseHelper, false)
autoload :ReleaseHelper, "org/allbinary/input/motion/button/ReleaseHelper" unless const_defined?(:ReleaseHelper, false)
autoload :TouchButton, "org/allbinary/input/motion/button/TouchButton" unless const_defined?(:TouchButton, false)
autoload :TouchButtonFactory, "org/allbinary/input/motion/button/TouchButtonFactory" unless const_defined?(:TouchButtonFactory, false)
autoload :TouchButtonInput, "org/allbinary/input/motion/button/TouchButtonInput" unless const_defined?(:TouchButtonInput, false)
autoload :TouchScreenFactory, "org/allbinary/input/motion/button/TouchScreenFactory" unless const_defined?(:TouchScreenFactory, false)

end; end; end; end; end

