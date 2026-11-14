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

require "java/lang/Object"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class DownGameKeyEventHandlerBase < BasicEventHandler
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
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
    

    def removeListenerSingleThreaded(eventListenerInterface)
        @list.remove(eventListenerInterface)
        super(eventListenerInterface)
    end
    

    def removeListener(eventListenerInterface)
        java_monitor.synchronize do
        @list.remove(eventListenerInterface)
        super(eventListenerInterface)
        end
    end
    

    # throws Exception
    def fireEvent(eventObject)
        index = @list.size()
        while (index -= 1) >= 0
            begin
                playerGameInput = @list.objectArray[index]
                playerGameInput.onDownGameKeyEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        super(eventObject)
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        downGameKeyEventListenerInterface = eventListenerInterface
        downGameKeyEventListenerInterface.onDownGameKeyEvent(eventObject)
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(super.to_s)
        stringBuffer.append(DownGameKeyEventHandlerBase::TOTAL_LISTENERS)
        stringBuffer.appendint(@list.size())
        eventListenerInterface = nil
        size = @list.size()
        index = 0
        while index < size
            begin
                eventListenerInterface = @list.get(index)
                stringBuffer.append(DownGameKeyEventHandlerBase::LISTENER_LABEL)
                stringBuffer.append(eventListenerInterface.to_s)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.TOSTRING, e)
            end
            index += 1
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:TOTAL_LISTENERS, " Total PlayerGameInput Listeners: ")
        const_set(:LISTENER_LABEL, " PlayerGameInput Listener: ")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DownGameKeyEventHandlerBase"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:TOTAL_LISTENERS, :LISTENER_LABEL].include?(name)
        end
        super
    end
end

autoload :PlayerGameInput, "org/allbinary/game/input/PlayerGameInput"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :DownGameKeyEventListenerInterface, "org/allbinary/game/input/event/DownGameKeyEventListenerInterface"
autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent"

begin
    DownGameKeyEventHandlerBase.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

