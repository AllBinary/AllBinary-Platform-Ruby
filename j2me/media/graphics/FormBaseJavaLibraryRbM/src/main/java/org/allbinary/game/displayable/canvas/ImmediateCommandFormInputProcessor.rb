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

require "java/lang/Object"
require "org/allbinary/game/displayable/canvas/CommandFormInputProcessor"

class ImmediateCommandFormInputProcessor < CommandFormInputProcessor
    attr_accessor :timeHelper, :gameCommandCanvas

    def initialize_fields
        @timeHelper = TimeDelayHelper.new(25)
        @gameCommandCanvas = nil
    end
    

    def initialize(gameKeyEventList, playerInputId, gameCommandCanvas, form)
        super(gameKeyEventList, playerInputId, gameCommandCanvas, form)
        initialize_fields
        @gameCommandCanvas = gameCommandCanvas
    end
    

    def onPressGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        begin
            super(gameKeyEvent)
            if @timeHelper.isTimeTNT()
                self.processInputList()
                @gameCommandCanvas.repaintBehavior.onChangeRepaint(self.getCanvas())
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.ON_PRESS_GAME_KEY, e)
        end
        end
    end
    

    def onDownGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        begin
            super(gameKeyEvent)
            if @timeHelper.isTimeTNT()
                self.processInputList()
                @gameCommandCanvas.repaintBehavior.onChangeRepaint(self.getCanvas())
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.ON_DOWN_GAME_KEY, e)
        end
        end
    end
    

    def onUpGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        begin
            super(gameKeyEvent)
            if @timeHelper.isTimeTNT()
                self.processInputList()
                @gameCommandCanvas.repaintBehavior.onChangeRepaint(self.getCanvas())
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.ON_UP_GAME_KEY, e)
        end
        end
    end
    

    def onMotionGestureEvent(motionGestureEvent)
        begin
            super(motionGestureEvent)
            if @timeHelper.isTimeTNT()
                self.processInputList()
                @gameCommandCanvas.repaintBehavior.onChangeRepaint(self.getCanvas())
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onMotionGestureEvent", e)
        end
    end
end

autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent"
autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm"
autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :GameCommandCanvas, "org/allbinary/game/displayable/canvas/GameCommandCanvas"

