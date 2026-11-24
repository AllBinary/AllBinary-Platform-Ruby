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

require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class PopupMenuInputProcessor < BasicMenuInputProcessor
    attr_accessor :rectangleCollisionUtil, :CLICK_DELAY, :clickTimeHelper, :rectangle

    def jfields_org_allbinary_game_displayable_canvas_PopupMenuInputProcessor
        @rectangleCollisionUtil = ::Org::Allbinary::MathPackage::RectangleCollisionUtil.getInstance()
        @CLICK_DELAY = 120
        @clickTimeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(@CLICK_DELAY)
        @rectangle = nil unless instance_variable_defined?(:@rectangle)
    end
    

    def initialize(gameKeyEventList, playerInputId, gameCanvas, rectangle)
        super(gameKeyEventList, playerInputId, gameCanvas)
        jfields_org_allbinary_game_displayable_canvas_PopupMenuInputProcessor
        @rectangle = rectangle
    end
    

    def init(rectangle)
        @rectangle = rectangle
    end
    java_overload :init, 1
    

    # throws Exception
    def processInput(key)
        if key == ::Javax::Microedition::Lcdui::Canvas::KEY_STAR
            gameCanvas = self.getCanvas()
            gameCanvas.toggleMenu()
            return 1
        end
        return 0
    end
    java_overload :processInput, 1
    

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
            @logUtil.put(@commonStrings.EXCEPTION, self, ::Org::Allbinary::Game::Input::GameInputStrings.getInstance().PROCESS_INPUT, e)
            return -1
        end
    end
    java_overload :processInputList, 0
    

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
    java_overload :processMotionInputs, 0
    

    # throws Exception
    def processMotionInput(motionGestureEvent)
        if motionGestureEvent == nil
            @logUtil.putF("Exception: Bug", self, @gameInputStrings.PROCESS_MOTION_INPUT)
            return
        end
        touchMotionGestureFactory = ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance()
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
    java_overload :processMotionInput, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInputStrings, "org/allbinary/game/input/GameInputStrings" unless const_defined?(:GameInputStrings, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory" unless const_defined?(:TouchMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :RectangleCollisionUtil, "org/allbinary/math/RectangleCollisionUtil" unless const_defined?(:RectangleCollisionUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

end; end; end; end; end

