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

require "org/allbinary/game/input/event/UpKeyEventHandlerBase"

class UpKeyEventHandler < UpKeyEventHandlerBase
    attr_accessor :playerInputIdFactory

    def initialize_fields
        @playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
    end
    

    def self.getInstance()
        return UpKeyEventHandler.instance
    end
    

    def getInstanceForDevice(deviceId)
        playerInputId = @playerInputIdFactory.getPlayerForDevice(deviceId)
        return UpKeyEventHandler.instanceArray[playerInputId]
    end
    

    def getInstanceForPlayer(playerInputId)
        return UpKeyEventHandler.instanceArray[playerInputId]
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def removeAllListeners()
        super()
        (UpKeyEventHandler.instanceArray.length - 1).step(0, -(1)) do |index|
            UpKeyEventHandler.instanceArray[index].removeAllListeners()
        end
    end
    

    def removeListenerSingleThreaded(eventListenerInterface)
        super(eventListenerInterface)
        (UpKeyEventHandler.instanceArray.length - 1).step(0, -(1)) do |index|
            UpKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface)
        end
    end
    

    def removeListener(eventListenerInterface)
        super(eventListenerInterface)
        (UpKeyEventHandler.instanceArray.length - 1).step(0, -(1)) do |index|
            UpKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface)
        end
    end

    def self.instance()
        UpKeyEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        UpKeyEventHandler.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.instanceArray()
        UpKeyEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceArray) ? @@instanceArray : nil
    end

    def self.instanceArray=(value)
        UpKeyEventHandler.java_static_fields unless @java_static_fields_started
        @@instanceArray = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = UpKeyEventHandler.new()
            @@instanceArray = [UpKeyEventHandlerBase.new(), UpKeyEventHandlerBase.new(), UpKeyEventHandlerBase.new(), UpKeyEventHandlerBase.new(), UpKeyEventHandlerBase.new(), UpKeyEventHandlerBase.new()]
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UpKeyEventHandler"
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
    UpKeyEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

