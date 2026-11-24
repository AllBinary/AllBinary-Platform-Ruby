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
require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/canvas/CommandFormInputProcessor"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class ImmediateCommandFormInputProcessor < CommandFormInputProcessor
    attr_accessor :timeHelper, :gameCommandCanvas

    def jfields_org_allbinary_game_displayable_canvas_ImmediateCommandFormInputProcessor
        @timeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(25)
        @gameCommandCanvas = nil unless instance_variable_defined?(:@gameCommandCanvas)
    end
    

    def initialize(gameKeyEventList, playerInputId, gameCommandCanvas, form)
        super(gameKeyEventList, playerInputId, gameCommandCanvas, form)
        jfields_org_allbinary_game_displayable_canvas_ImmediateCommandFormInputProcessor
        @gameCommandCanvas = gameCommandCanvas
    end
    

    def onPressGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        begin
            ImmediateCommandFormInputProcessor.superclass.java_super_method(:onPressGameKeyEvent, 1).bind(self).call(gameKeyEvent)
            if @timeHelper.isTimeTNT()
                self.processInputList()
                @gameCommandCanvas.repaintBehavior.onChangeRepaint(self.getCanvas())
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.ON_PRESS_GAME_KEY, e)
        end
        end
    end
    java_overload :onPressGameKeyEvent, 1
    

    def onDownGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        begin
            ImmediateCommandFormInputProcessor.superclass.java_super_method(:onDownGameKeyEvent, 1).bind(self).call(gameKeyEvent)
            if @timeHelper.isTimeTNT()
                self.processInputList()
                @gameCommandCanvas.repaintBehavior.onChangeRepaint(self.getCanvas())
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.ON_DOWN_GAME_KEY, e)
        end
        end
    end
    java_overload :onDownGameKeyEvent, 1
    

    def onUpGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        begin
            ImmediateCommandFormInputProcessor.superclass.java_super_method(:onUpGameKeyEvent, 1).bind(self).call(gameKeyEvent)
            if @timeHelper.isTimeTNT()
                self.processInputList()
                @gameCommandCanvas.repaintBehavior.onChangeRepaint(self.getCanvas())
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.ON_UP_GAME_KEY, e)
        end
        end
    end
    java_overload :onUpGameKeyEvent, 1
    

    def onMotionGestureEvent(motionGestureEvent)
        begin
            ImmediateCommandFormInputProcessor.superclass.java_super_method(:onMotionGestureEvent, 1).bind(self).call(motionGestureEvent)
            if @timeHelper.isTimeTNT()
                self.processInputList()
                @gameCommandCanvas.repaintBehavior.onChangeRepaint(self.getCanvas())
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onMotionGestureEvent", e)
        end
    end
    java_overload :onMotionGestureEvent, 1
end

module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :GameCommandCanvas, "org/allbinary/game/displayable/canvas/GameCommandCanvas" unless const_defined?(:GameCommandCanvas, false)

end; end; end; end; end

