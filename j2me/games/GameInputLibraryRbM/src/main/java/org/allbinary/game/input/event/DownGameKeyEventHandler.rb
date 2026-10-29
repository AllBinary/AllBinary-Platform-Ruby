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
require "org/allbinary/game/input/event/DownGameKeyEventHandlerBase"

class DownGameKeyEventHandler < DownGameKeyEventHandlerBase
    attr_accessor :playerInputIdFactory

    def initialize_fields
        @playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
    end
    

    def self.getInstance()
        return DownGameKeyEventHandler.instance
    end
    

    def getInstanceForDevice(deviceId)
        playerInputId = @playerInputIdFactory.getPlayerForDevice(deviceId)
        return DownGameKeyEventHandler.instanceArray[playerInputId]
    end
    

    def getInstanceForPlayer(playerInputId)
        return DownGameKeyEventHandler.instanceArray[playerInputId]
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def removeAllListeners()
        super()
        (DownGameKeyEventHandler.instanceArray.length - 1).step(0, -(1)) do |index|
            DownGameKeyEventHandler.instanceArray[index].removeAllListeners()
        end
    end
    

    def removeListenerSingleThreaded(eventListenerInterface)
        super(eventListenerInterface)
        (DownGameKeyEventHandler.instanceArray.length - 1).step(0, -(1)) do |index|
            DownGameKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface)
        end
    end
    

    def removeListener(eventListenerInterface)
        java_monitor.synchronize do
        super(eventListenerInterface)
        (DownGameKeyEventHandler.instanceArray.length - 1).step(0, -(1)) do |index|
            DownGameKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface)
        end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end

    def self.instanceArray()
        return defined?(@@instanceArray) ? @@instanceArray : nil
    end

    def self.instanceArray=(value)
        @@instanceArray = value
    end
end

require "org/allbinary/game/input/LocalPlayerInputIdFactory"
require "org/allbinary/logic/util/event/EventListenerInterface"

class DownGameKeyEventHandler
    @@instance = DownGameKeyEventHandler.new()
    @@instanceArray = [DownGameKeyEventHandlerBase.new(), DownGameKeyEventHandlerBase.new(), DownGameKeyEventHandlerBase.new(), DownGameKeyEventHandlerBase.new(), DownGameKeyEventHandlerBase.new(), DownGameKeyEventHandlerBase.new()]
end

