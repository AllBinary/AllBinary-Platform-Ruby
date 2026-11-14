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
        GameKeyEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameKeyEventHandler.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameKeyEventHandler.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameKeyEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :DownGameKeyEventHandler, "org/allbinary/game/input/event/DownGameKeyEventHandler"
autoload :PressGameKeyEventHandler, "org/allbinary/game/input/event/PressGameKeyEventHandler"
autoload :UpGameKeyEventHandler, "org/allbinary/game/input/event/UpGameKeyEventHandler"

begin
    GameKeyEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

