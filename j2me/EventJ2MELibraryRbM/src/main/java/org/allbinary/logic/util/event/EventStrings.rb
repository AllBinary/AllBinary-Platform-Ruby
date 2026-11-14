# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.logic.util.event


class EventStrings
    attr_accessor :PERFORMANCE_MESSAGE, :TOTAL_LISTENERS, :LISTENER_LABEL, :FIRE_EVENT

    def initialize_fields
        @PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization"
        @TOTAL_LISTENERS = "Total Listeners: "
        @LISTENER_LABEL = " Listener: "
        @FIRE_EVENT = "fireEvent"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return EventStrings.instance
    end

    def self.instance()
        EventStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        EventStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = EventStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "EventStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    EventStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

