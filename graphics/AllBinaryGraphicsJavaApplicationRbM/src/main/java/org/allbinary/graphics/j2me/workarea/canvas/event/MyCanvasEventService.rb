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
# package org.allbinary.graphics.j2me.workarea.canvas.event

require "java/lang/Object"

class MyCanvasEventService
    

    def initialize()
    end
    

    def self.addListener(listener)
        java_monitor.synchronize do
        MyCanvasEventService.listenerList.add(listener.class, listener)
        end
    end
    

    def self.removeListener(listener)
        java_monitor.synchronize do
        MyCanvasEventService.listenerList.remove(listener.class, listener)
        end
    end
    

    # throws Exception
    def self.fire(evt)
        java_monitor.synchronize do
        listeners = @@listenerList.getListenerList()
        (0...listeners.length).step(2) do |i|
            if listeners[i] == listeners[i + 1].class
                if evt.getCommand().compareTo(MyCanvasEventService::DELETE) == 0
                    (listeners[i + 1]).delete(evt)
                elsif evt.getCommand().compareTo(MyCanvasEventService::DUPLICATE) == 0
                    (listeners[i + 1]).duplicate(evt)
                elsif evt.getCommand().compareTo(MyCanvasEventService::SELECT) == 0
                    (listeners[i + 1]).select(evt)
                elsif evt.getCommand().compareTo(MyCanvasEventService::ROTATE) == 0
                    (listeners[i + 1]).rotate(evt)
                elsif evt.getCommand().compareTo(MyCanvasEventService::EXPLODE) == 0
                    (listeners[i + 1]).explode(evt)
                elsif evt.getCommand().compareTo(MyCanvasEventService::AUTOEXPLODE) == 0
                    (listeners[i + 1]).autoExplode(evt)
                elsif evt.getCommand().compareTo(MyCanvasEventService::CENTER) == 0
                    (listeners[i + 1]).center(evt)
                end
            end
        end
        end
    end

    def self.listenerList()
        return defined?(@@listenerList) ? @@listenerList : nil
    end

    def self.listenerList=(value)
        @@listenerList = value
    end
end

require "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEvent"
require "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventListener"

class MyCanvasEventService
    @@listenerList = EventListenerList.new()
    DELETE = "delete"
    DUPLICATE = "duplicate"
    SELECT = "select"
    ROTATE = "rotate"
    EXPLODE = "explode"
    AUTOEXPLODE = "autoExplode"
    CENTER = "center"
end

