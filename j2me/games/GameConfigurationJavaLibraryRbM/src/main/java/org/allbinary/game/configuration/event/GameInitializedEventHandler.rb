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
# package org.allbinary.game.configuration.event

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class GameInitializedEventHandler < BasicEventHandler
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        return GameInitializedEventHandler.gameKeyEventHandler
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        gameInitializedListenerInterface = (eventListenerInterface)
        gameInitializedListenerInterface.onGameInitialized(eventObject)
    end

    def self.gameKeyEventHandler()
        return defined?(@@gameKeyEventHandler) ? @@gameKeyEventHandler : nil
    end

    def self.gameKeyEventHandler=(value)
        @@gameKeyEventHandler = value
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/game/configuration/event/GameInitializedEvent"
require "org/allbinary/game/configuration/event/GameInitializedListenerInterface"

class GameInitializedEventHandler
    @@gameKeyEventHandler = GameInitializedEventHandler.new()
end

