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
# package org.allbinary.game.input.event

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class PressGameKeyEventHandler < BasicEventHandler
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        return PressGameKeyEventHandler.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def addListener(playerGameInput)
        if !@list.contains(playerGameInput)
            @list.add(playerGameInput)
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
                playerGameInput.onPressGameKeyEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        super(eventObject)
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        pressGameKeyEventListenerInterface = (eventListenerInterface)
        pressGameKeyEventListenerInterface.onPressGameKeyEvent(eventObject)
    end

    def self.instance()
        PressGameKeyEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PressGameKeyEventHandler.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PressGameKeyEventHandler.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PressGameKeyEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :PlayerGameInput, "org/allbinary/game/input/PlayerGameInput"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent"
autoload :PressGameKeyEventListenerInterface, "org/allbinary/game/input/event/PressGameKeyEventListenerInterface"

begin
    PressGameKeyEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

