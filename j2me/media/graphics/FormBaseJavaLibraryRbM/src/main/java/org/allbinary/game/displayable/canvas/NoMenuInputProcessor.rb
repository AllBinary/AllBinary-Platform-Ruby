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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, NoMenuInputProcessor.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NoMenuInputProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas"
autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent"
autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"
autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil"

begin
    NoMenuInputProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

