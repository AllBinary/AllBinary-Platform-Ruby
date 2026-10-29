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
# package org.allbinary.logic.util.event.handler

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"
# require "jsinterop/annotations/JsProperty"
require "org/allbinary/logic/util/event/handler/BasicEventHandlerInterface"

class BasicEventHandler
    include BasicEventHandlerInterface
    attr_accessor :logUtil, :commonStrings, :eventStrings, :eventListenerInterfaceList

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @eventStrings = EventStrings.getInstance()
        @eventListenerInterfaceList = nil
    end
    

    def initialize()
        initialize_fields
        @eventListenerInterfaceList = BasicArrayListD.new()
    end
    

    def removeAllListeners()
        @eventListenerInterfaceList = BasicArrayListD.new()
    end
    

    def addListeners(vector)
        eventListenerInterface = nil
        size = vector.size()
        (0...size).each do |index|
            eventListenerInterface = vector.get(index)
            self.addListenerInterface(eventListenerInterface)
        end
    end
    

    def removeListeners(vector)
        eventListenerInterface = nil
        size = vector.size()
        (0...size).each do |index|
            eventListenerInterface = vector.get(index)
            self.removeListener(eventListenerInterface)
        end
    end
    

    def addListenerSingleThreaded(eventListenerInterface)
        if !@eventListenerInterfaceList.contains(eventListenerInterface)
            @eventListenerInterfaceList.add(eventListenerInterface)
        end
    end
    

    def addListenerInterface(eventListenerInterface)
        if !@eventListenerInterfaceList.contains(eventListenerInterface)
            @eventListenerInterfaceList.add(eventListenerInterface)
        end
    end
    

    def removeListenerSingleThreaded(eventListenerInterface)
        @eventListenerInterfaceList.remove(eventListenerInterface)
    end
    

    def removeListener(eventListenerInterface)
        @eventListenerInterfaceList.remove(eventListenerInterface)
    end
    

    # throws Exception
    def fireEvent(eventObject)
        eventListenerInterface = nil
        index = 0
        while index < @eventListenerInterfaceList.size()
            begin
                eventListenerInterface = @eventListenerInterfaceList.get(index)
                self.process(eventObject, eventListenerInterface)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @eventStrings.FIRE_EVENT, e)
            end
            index += 1
        end
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        eventListenerInterface.onEvent(eventObject)
    end
    

    def getEventListenerInterfaceListP()
        return @eventListenerInterfaceList
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@eventStrings.TOTAL_LISTENERS)
        stringBuffer.appendint(@eventListenerInterfaceList.size())
        eventListenerInterface = nil
        index = 0
        while index < @eventListenerInterfaceList.size()
            begin
                eventListenerInterface = @eventListenerInterfaceList.get(index)
                stringBuffer.append(@eventStrings.LISTENER_LABEL)
                stringBuffer.append(eventListenerInterface.to_s)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.TOSTRING, e)
            end
            index += 1
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

