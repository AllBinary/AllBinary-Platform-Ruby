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

class GameKeyEventHandler
    attr_accessor :logUtil, :commonStrings, :pressGameKeyEventHandler, :upGameKeyEventHandler, :downGameKeyEventHandler

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @pressGameKeyEventHandler = PressGameKeyEventHandler.getInstance()
        @upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
        @downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GameKeyEventHandler.instance
    end
    

    def removeAllListeners()
        java_monitor.synchronize do
        @pressGameKeyEventHandler.removeAllListeners()
        @upGameKeyEventHandler.removeAllListeners()
        @downGameKeyEventHandler.removeAllListeners()
        end
    end
    

    def addListenerForPlayer(eventListenerInterface, playerInputId)
        @logUtil.putF(eventListenerInterface.to_s, self, @commonStrings.ADD_LISTENER)
        @pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        @upGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface)
        @downGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface)
    end
    

    def addListener(eventListenerInterface)
        @logUtil.putF(eventListenerInterface.to_s, self, @commonStrings.ADD_LISTENER)
        @pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        @upGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        @downGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
    end
    

    def removeListener(eventListenerInterface)
        @logUtil.putF(eventListenerInterface.to_s, self, @commonStrings.REMOVE_LISTENER)
        @pressGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
        @upGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
        @downGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/input/event/DownGameKeyEventHandler"
require "org/allbinary/game/input/event/PressGameKeyEventHandler"
require "org/allbinary/game/input/event/UpGameKeyEventHandler"

class GameKeyEventHandler
    @@instance = GameKeyEventHandler.new()
end

