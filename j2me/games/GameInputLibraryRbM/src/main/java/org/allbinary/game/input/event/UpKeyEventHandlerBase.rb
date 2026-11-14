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

class UpKeyEventHandlerBase < BasicEventHandler
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
    def fireEventForInteger(eventObject)
        index = @list.size()
        while (index -= 1) >= 0
            begin
                playerGameInput = @list.objectArray[index]
                playerGameInput.onUpKeyEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        index = 0
        eventListenerInterface = nil
        while index < @eventListenerInterfaceList.size()
            begin
                eventListenerInterface = @eventListenerInterfaceList.get(index)
                self.processForInteger(eventObject, eventListenerInterface)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
            index += 1
        end
    end
    

    # throws Exception
    def processForInteger(eventObject, eventListenerInterface)
        upKeyEventListenerInterface = eventListenerInterface
        upKeyEventListenerInterface.onUpKeyEvent(eventObject)
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(super.to_s)
        stringBuffer.append(UpKeyEventHandlerBase::TOTAL_LISTENERS)
        stringBuffer.appendint(@list.size())
        (0...@list.size()).each do |index|
            begin
                eventListenerInterface = @list.get(index)
                stringBuffer.append(UpKeyEventHandlerBase::LISTENER_LABEL)
                stringBuffer.append(eventListenerInterface.to_s)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.TOSTRING, e)
            end
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
        if name == "UpKeyEventHandlerBase"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:TOTAL_LISTENERS, :LISTENER_LABEL].include?(name)
        end
        super
    end
end

autoload :PlayerGameInput, "org/allbinary/game/input/PlayerGameInput"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :UpKeyEventListenerInterface, "org/allbinary/game/input/event/UpKeyEventListenerInterface"

begin
    UpKeyEventHandlerBase.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

