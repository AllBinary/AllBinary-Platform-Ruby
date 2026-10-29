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
# package org.allbinary.input.event

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class VirtualKeyboardEventHandler < BasicEventHandler
    attr_accessor :SHOW_EVENT, :HIDE_EVENT

    def initialize_fields
        @SHOW_EVENT = VirtualKeyboardEvent.new(BooleanFactory.getInstance().TRUE)
        @HIDE_EVENT = VirtualKeyboardEvent.new(BooleanFactory.getInstance().FALSE)
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return VirtualKeyboardEventHandler.gameKeyEventHandler
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        virtualKeyboardEventListenerInterface = eventListenerInterface
        virtualKeyboardEventListenerInterface.onVirtualKeyboardEvent(eventObject)
    end
    

    def open()
        begin
            sleep((120) / 1000.0)
            self.fireEvent(@SHOW_EVENT)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "open", e)
        end
    end
    

    # throws Exception
    def close()
        begin
            sleep((120) / 1000.0)
            self.fireEvent(@HIDE_EVENT)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CLOSE, e)
        end
    end

    def self.gameKeyEventHandler()
        return defined?(@@gameKeyEventHandler) ? @@gameKeyEventHandler : nil
    end

    def self.gameKeyEventHandler=(value)
        @@gameKeyEventHandler = value
    end
end

require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/input/event/VirtualKeyboardEvent"
require "org/allbinary/input/event/VirtualKeyboardEventListenerInterface"
require "java/lang/Thread"

class VirtualKeyboardEventHandler
    @@gameKeyEventHandler = VirtualKeyboardEventHandler.new()
end

