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
# require "javax/microedition/lcdui/NullCanvas"
require "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor"

class NoMenuInputProcessor < BasicMenuInputProcessor
    

    def self.getInstance()
        return NoMenuInputProcessor::SINGLETON
    end
    

    def initialize()
        super(BasicArrayListUtil.getInstance().getImmutableInstance(), -1, NullCanvas::NULL_CANVAS)
    end
    

    def onDownGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        end
    end
    

    def onUpGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        end
    end
    

    def onMotionGestureEvent(motionGestureEvent)
    end
end

require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"
require "org/allbinary/util/BasicArrayListUtil"

class NoMenuInputProcessor
    SINGLETON = NoMenuInputProcessor.new()
end

