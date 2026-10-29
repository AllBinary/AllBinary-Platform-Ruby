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

class UpKeyEventHandler
    @@instance = UpKeyEventHandler.new()
    @@instanceArray = [UpKeyEventHandlerBase.new(), UpKeyEventHandlerBase.new(), UpKeyEventHandlerBase.new(), UpKeyEventHandlerBase.new(), UpKeyEventHandlerBase.new(), UpKeyEventHandlerBase.new()]
end

