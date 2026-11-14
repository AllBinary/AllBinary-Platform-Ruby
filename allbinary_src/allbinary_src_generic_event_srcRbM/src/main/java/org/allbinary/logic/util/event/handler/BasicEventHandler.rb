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

require "java/lang/Object"
require "org/allbinary/logic/util/event/handler/BasicEventHandlerInterface"

class BasicEventHandler
    include BasicEventHandlerInterface
    attr_accessor :logUtil, :eventListenerInterfaceList

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @eventListenerInterfaceList = nil
    end
    

    def initialize()
        initialize_fields
        @eventListenerInterfaceList = BasicArrayListD.new()
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        _LISTENER = " Listener: "
        stringBuffer.append("Total Listeners: ")
        stringBuffer.appendint(@eventListenerInterfaceList.size())
        eventListenerInterface = nil
        index = 0
        while index < @eventListenerInterfaceList.size()
            begin
                eventListenerInterface = @eventListenerInterfaceList.objectArray[index]
                stringBuffer.append(_LISTENER)
                stringBuffer.append(StringUtil.getInstance().toString(eventListenerInterface))
            rescue StandardError => e
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.TOSTRING, e)
            end
            index += 1
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def removeAllListeners()
        java_monitor.synchronize do
        @eventListenerInterfaceList = BasicArrayListD.new()
        end
    end
    

    def addListenerSingleThreaded(eventListenerInterface)
        if !@eventListenerInterfaceList.contains(eventListenerInterface)
            @eventListenerInterfaceList.add(eventListenerInterface)
        end
    end
    

    def addListenerInterface(eventListenerInterface)
        java_monitor.synchronize do
        if !@eventListenerInterfaceList.contains(eventListenerInterface)
            @eventListenerInterfaceList.add(eventListenerInterface)
        end
        end
    end
    

    def removeListenerSingleThreaded(eventListenerInterface)
        @eventListenerInterfaceList.remove(eventListenerInterface)
    end
    

    def removeListener(eventListenerInterface)
        java_monitor.synchronize do
        @eventListenerInterfaceList.remove(eventListenerInterface)
        end
    end
    

    # throws Exception
    def fireEvent(eventObject)
        java_monitor.synchronize do
        index = 0
        eventListenerInterface = nil
        while index < @eventListenerInterfaceList.size()
            begin
                eventListenerInterface = @eventListenerInterfaceList.objectArray[index]
                self.process(eventObject, eventListenerInterface)
            rescue StandardError => e
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
            index += 1
        end
        end
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        eventListenerInterface.onEvent(eventObject)
    end
    

    def getEventListenerInterfaceListP()
        return @eventListenerInterfaceList
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:PERFORMANCE_MESSAGE, "Use Custom onEvent Methods for needed optimization")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:PERFORMANCE_MESSAGE].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

begin
    BasicEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

