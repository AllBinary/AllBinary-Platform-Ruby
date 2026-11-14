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
require "org/allbinary/game/input/event/DownKeyEventHandlerBase"

class DownKeyEventHandler < DownKeyEventHandlerBase
    attr_accessor :playerInputIdFactory

    def initialize_fields
        @playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
    end
    

    def self.getInstance()
        return DownKeyEventHandler.instance
    end
    

    def getInstanceForDevice(deviceId)
        playerInputId = @playerInputIdFactory.getPlayerForDevice(deviceId)
        return DownKeyEventHandler.instanceArray[playerInputId]
    end
    

    def getInstanceForPlayer(playerInputId)
        return DownKeyEventHandler.instanceArray[playerInputId]
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def removeAllListeners()
        super()
        (DownKeyEventHandler.instanceArray.length - 1).step(0, -(1)) do |index|
            DownKeyEventHandler.instanceArray[index].removeAllListeners()
        end
    end
    

    def removeListenerSingleThreaded(eventListenerInterface)
        super(eventListenerInterface)
        (DownKeyEventHandler.instanceArray.length - 1).step(0, -(1)) do |index|
            DownKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface)
        end
    end
    

    def removeListener(eventListenerInterface)
        java_monitor.synchronize do
        super(eventListenerInterface)
        (DownKeyEventHandler.instanceArray.length - 1).step(0, -(1)) do |index|
            DownKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface)
        end
        end
    end

    def self.instance()
        DownKeyEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DownKeyEventHandler.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.instanceArray()
        DownKeyEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceArray) ? @@instanceArray : nil
    end

    def self.instanceArray=(value)
        DownKeyEventHandler.java_static_fields unless @java_static_fields_started
        @@instanceArray = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DownKeyEventHandler.new()
            @@instanceArray = [DownKeyEventHandlerBase.new(), DownKeyEventHandlerBase.new(), DownKeyEventHandlerBase.new(), DownKeyEventHandlerBase.new(), DownKeyEventHandlerBase.new(), DownKeyEventHandlerBase.new()]
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DownKeyEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LocalPlayerInputIdFactory, "org/allbinary/game/input/LocalPlayerInputIdFactory"
autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface"

begin
    DownKeyEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

