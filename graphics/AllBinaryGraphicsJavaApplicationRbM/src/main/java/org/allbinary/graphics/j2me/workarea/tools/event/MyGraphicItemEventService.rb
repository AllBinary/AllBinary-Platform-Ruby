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
# package org.allbinary.graphics.j2me.workarea.tools.event

require "java/lang/Object"
# require "javax/swing/event/EventListenerList"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; module Event

class MyGraphicItemEventService
    

    def initialize()
    end
    

    def self.addListener(listener)
        java_monitor.synchronize do
        MyGraphicItemEventService.listenerList.add((listener.class), listener)
        end
    end
    

    def self.removeListener(listener)
        java_monitor.synchronize do
        MyGraphicItemEventService.listenerList.remove((listener.class), listener)
        end
    end
    

    # throws Exception
    def self.fire(evt)
        java_monitor.synchronize do
        listeners = @@listenerList.getListenerList()
        (0...listeners.length).step(2) do |i|
            if listeners[i] == listeners[i + 1].class
                if evt.getCommand().compareTo(MyGraphicItemEventService::SELECT) == 0
                    (listeners[i + 1]).highlight(evt)
                elsif evt.getCommand().compareTo(MyGraphicItemEventService::DESELECT) == 0
                    (listeners[i + 1]).deselect(evt)
                elsif evt.getCommand().compareTo(MyGraphicItemEventService::DELETE) == 0
                    (listeners[i + 1]).delete(evt)
                elsif evt.getCommand().compareTo(MyGraphicItemEventService::DUPLICATE) == 0
                    (listeners[i + 1]).duplicate(evt)
                elsif evt.getCommand().compareTo(MyGraphicItemEventService::ROTATE) == 0
                    (listeners[i + 1]).rotate(evt)
                end
            end
        end
        end
    end

    def self.listenerList()
        MyGraphicItemEventService.java_static_fields unless @java_static_fields_started
        return defined?(@@listenerList) ? @@listenerList : nil
    end

    def self.listenerList=(value)
        MyGraphicItemEventService.java_static_fields unless @java_static_fields_started
        @@listenerList = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:DELETE, "delete")
        const_set(:DESELECT, "deselect")
        const_set(:SELECT, "select")
        const_set(:DUPLICATE, "duplicate")
        const_set(:ROTATE, "rotate")
        begin
            @@listenerList = EventListenerList.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MyGraphicItemEventService"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:DELETE, :DESELECT, :SELECT, :DUPLICATE, :ROTATE].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :EventListener, "java/util/EventListener" unless const_defined?(:EventListener, false); end; end
autoload :MyGraphicItemEvent, "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEvent" unless const_defined?(:MyGraphicItemEvent, false)
autoload :MyGraphicItemEventListener, "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventListener" unless const_defined?(:MyGraphicItemEventListener, false)

begin
    MyGraphicItemEventService.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

