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
# package org.allbinary.graphics.displayable.event

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class DisplayChangeEventHandler < BasicEventHandler
    

    def self.getInstance()
        return DisplayChangeEventHandler::SINGLETON
    end
    

    def initialize()
        super()
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        displayChangeEventListener = (eventListenerInterface)
        displayChangeEventListener.onDisplayChangeEvent(eventObject)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, DisplayChangeEventHandler.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DisplayChangeEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface"
autoload :DisplayChangeEvent, "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
autoload :DisplayChangeEventListener, "org/allbinary/graphics/displayable/event/DisplayChangeEventListener"

begin
    DisplayChangeEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

