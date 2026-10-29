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
# package org.allbinary.game.midlet

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class DemoGameMidletEventHandler < BasicEventHandler
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        return DemoGameMidletEventHandler.gameKeyEventHandler
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        demoGameMidletEventListener = eventListenerInterface
        demoGameMidletEventListener.onDemoGameMidletEvent(eventObject)
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
require "org/allbinary/game/midlet/DemoGameMidletEvent"
require "org/allbinary/game/midlet/DemoGameMidletEventListener"

class DemoGameMidletEventHandler
    @@gameKeyEventHandler = DemoGameMidletEventHandler.new()
end

