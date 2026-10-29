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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class EventStrings
    @@instance = EventStrings.new()
end

