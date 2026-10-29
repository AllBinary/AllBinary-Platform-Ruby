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
# package org.allbinary.android.input.motion.event

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class AnalogControllerConfigurationEventHandler < BasicEventHandler
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        return AnalogControllerConfigurationEventHandler.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def addListener(analogControllerConfigurationEventListenerInterface)
        if !@list.contains(analogControllerConfigurationEventListenerInterface)
            @list.add(analogControllerConfigurationEventListenerInterface)
        end
    end
    

    def removeAllListeners()
        @list.clear()
        super()
    end
    

    def removeListener(eventListenerInterface)
        @list.remove(eventListenerInterface)
        super(eventListenerInterface)
    end
    

    # throws Exception
    def fireEvent(eventObject)
        index = @list.size()
        while (index -= 1) >= 0
            begin
                playerGameInput = @list.objectArray[index]
                playerGameInput.onAnalogControllerConfigurationEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        super(eventObject)
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        analogControllerConfigurationEventListenerInterface = (eventListenerInterface)
        analogControllerConfigurationEventListenerInterface.onAnalogControllerConfigurationEvent(eventObject)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent"
require "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventListenerInterface"

class AnalogControllerConfigurationEventHandler
    @@instance = AnalogControllerConfigurationEventHandler.new()
end

