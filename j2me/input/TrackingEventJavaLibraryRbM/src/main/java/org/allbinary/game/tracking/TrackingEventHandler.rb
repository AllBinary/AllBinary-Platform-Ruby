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
# package org.allbinary.game.tracking

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class TrackingEventHandler < BasicEventHandler
    

    def self.getInstance()
        return TrackingEventHandler.instance
    end
    

    def initialize()
        super()
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        trackingEventListenerInterface = eventListenerInterface
        trackingEventListenerInterface.onMovement(eventObject)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/game/tracking/TrackingEvent"
require "org/allbinary/game/tracking/TrackingEventListenerInterface"

class TrackingEventHandler
    @@instance = TrackingEventHandler.new()
end

