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
# package org.allbinary.game.input.event


class RawKeyEventHandler
    attr_accessor :logUtil, :eventListenerInterfaceList

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @eventListenerInterfaceList = nil
    end
    

    def self.getInstance()
        return RawKeyEventHandler.instance
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
            self.addListener(eventListenerInterface)
        end
    end
    

    def addListenerSingleThreaded(eventListenerInterface)
        if !@eventListenerInterfaceList.contains(eventListenerInterface)
            @eventListenerInterfaceList.add(eventListenerInterface)
        end
    end
    

    def addListener(eventListenerInterface)
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
    def fireEvent(keyCode, deviceId, repeated)
        eventListenerInterface = nil
        index = 0
        while index < @eventListenerInterfaceList.size()
            begin
                eventListenerInterface = @eventListenerInterfaceList.get(index)
                self.process(keyCode, deviceId, repeated, eventListenerInterface)
            rescue StandardError => e
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
            index += 1
        end
    end
    

    # throws Exception
    def process(keyCode, deviceId, repeated, eventListenerInterface)
        eventListenerInterface.onEventRaw(keyCode, deviceId, repeated)
    end
    

    def getEventListenerInterfaceListP()
        return @eventListenerInterfaceList
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(RawKeyEventHandler::TOTAL_LISTENERS)
        stringBuffer.appendint(@eventListenerInterfaceList.size())
        eventListenerInterface = nil
        index = 0
        while index < @eventListenerInterfaceList.size()
            begin
                eventListenerInterface = @eventListenerInterfaceList.get(index)
                stringBuffer.append(RawKeyEventHandler::LISTENER_LABEL)
                stringBuffer.append(eventListenerInterface.to_s)
            rescue StandardError => e
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.TOSTRING, e)
            end
            index += 1
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

    def self.instance()
        RawKeyEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        RawKeyEventHandler.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:TOTAL_LISTENERS, "Total Listeners: ")
        const_set(:LISTENER_LABEL, " Listener: ")
        begin
            @@instance = RawKeyEventHandler.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RawKeyEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:TOTAL_LISTENERS, :LISTENER_LABEL].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :RawKeyEventListener, "org/allbinary/game/input/event/RawKeyEventListener"

begin
    RawKeyEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

